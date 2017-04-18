#!/bin/bash

# Change to staging directory
MY_CWD=$(pwd)
cd ~/staging/final_project

# Load weather data from 1997, weather stations, and airports
##############################
# Get airport and weather station location files
URL_airports="https://transtats.bts.gov/ftproot/TranStatsData/655213050_T_MASTER_CORD.zip"
URL_stations="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-stations.txt"
wget --no-check-certificate "$URL_airports" -O Airports.zip
wget --no-check-certificate "$URL_stations" -O weather_stations.txt
# Unzip data
unzip Airports.zip

# Get weather data from 2007 to current

hdfs dfs -mkdir /user/w205/final_project/weather

# Get GHCN data by year
# Set current year
cur_year=`date +"%Y"`
start_year=2007
# Iterate through years and download data
for (( c=$start_year; c<=$cur_year; c++))
do
    URL_GHCN="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/$c.csv.gz"
    wget --no-check-certificate "$URL_GHCN"
    gunzip "$c.csv.gz"
    hdfs dfs -mkdir /user/w205/final_project/weather/$c
    hdfs dfs -put $c.csv /user/w205/final_project/weather/$c
    rm $c.csv
done

# Modify airports to remove headers
OLD_FILE="655213050_T_MASTER_CORD.csv"
NEW_FILE="airports.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

tail -n +2 $MY_CWD/airports_stations.csv airports_stations.csv

# Load to HDFS

hdfs dfs -put airports.csv /user/w205/final_project/weather
hdfs dfs -put weather_stations.txt /user/w205/final_project/weather
hdfs dfs -mkdir /user/w205/final_project/weather/airport_stations
hdfs dfs -put airports_stations.csv /user/w205/final_project/weather/airport_stations

# Clean up directory
rm Airports.zip
rm 655213050_T_MASTER_CORD.csv
rm airports.csv
rm weather_stations.txt
rm airports_stations.csv

cd $MY_CWD


