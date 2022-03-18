#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Indicate the path of the java compiler to use
export JAVA_HOME=/usr/csshare/pkgs/jdk1.7.0_17
export PATH=$JAVA_HOME/bin:$PATH
export DB_NAME=$USER "_DB"

# compile the java program
javac  ProfNetwork.java

#run the java program
#Use your database name, port number and login
java  pg73jdbc3 ProfNetwork $DB_NAME $PGPORT $USER

