#!/bin/bash

echo "Cleaning old build files..."

rm -rf output/logs
rm -rf build/classes/*
rm -f build/jars/logprocessor.jar

echo "Compiling LogProcessor.java..."

javac -classpath "$(hadoop classpath)" \
-d build/classes src/LogProcessor.java

echo "Creating JAR..."

jar -cvf build/jars/logprocessor.jar \
-C build/classes/ .

echo "Running Hadoop Job..."

hadoop jar build/jars/logprocessor.jar \
LogProcessor \
input/logs \
output/logs

echo "Displaying Output..."

cat output/logs/part-r-00000
