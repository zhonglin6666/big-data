#!/bin/bash

unset HADOOP_HDFS_HOME
unset HADOOP_COMMON_HOME
unset HADOOP_YARN_HOME
unset HADOOP_MAPRED_HOME

sqoop2-server start
tailf /tmp/sqoop.log

