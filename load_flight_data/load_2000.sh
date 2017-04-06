#!/bin/bash

# Load flight data from 2000

# Change to staging directory
cd ~/staging/final_project

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_1.csv"
NEW_FILE="on_time_2000_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_2.csv"
NEW_FILE="on_time_2000_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_3.csv"
NEW_FILE="on_time_2000_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_3.csv"
NEW_FILE="on_time_2000_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_4.csv"
NEW_FILE="on_time_2000_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_5.csv"
NEW_FILE="on_time_2000_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_6.csv"
NEW_FILE="on_time_2000_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_7.csv"
NEW_FILE="on_time_2000_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_8.csv"
NEW_FILE="on_time_2000_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_9.csv"
NEW_FILE="on_time_2000_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_10.csv"
NEW_FILE="on_time_2000_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_11.csv"
NEW_FILE="on_time_2000_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_12.csv"
NEW_FILE="on_time_2000_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_12.zip
rm /home/w205/staging/final_project/readme.html