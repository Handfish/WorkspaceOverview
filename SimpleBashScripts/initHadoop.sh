#!/bin/bash

# Make tmp folder with root permissions
sudo rm -rf /tmp/hadoop-kenny/* 
sudo mkdir -p /tmp/hadoop-kenny/
sudo chmod 777 -R /tmp/hadoop-kenny/

sudo -u kenny /usr/local/hadoopBU2/hadoop-2.8.1/bin/hadoop namenode -format

# Format the namenode with the correct cluster ID
#    source /tmp/hadoop-kenny/dfs/data/current/VERSION
#    hadoop namenode -format -clusterid $clusterID

# Start Hadoop
sudo -u kenny /usr/local/hadoopBU2/hadoop-2.8.1/sbin/start-dfs.sh
sudo -u kenny /usr/local/hadoopBU2/hadoop-2.8.1/sbin/start-yarn.sh

# Display the Java Virtual Machine Process Statuses
jps

# Make folders on the hdfs and move put the ml-100k files
hdfs dfs -mkdir -p /user/kenny/
hdfs dfs -put ~/Downloads/ml-100k/ /user/kenny

# Make the hive warehouse folder
hdfs dfs -mkdir -p /user/hive/warehouse
