#!/bin/bash

echo "Cleaning old build files..."

rm -rf output/weather
rm -rf build/classes/*
rm -f build/jars/weather.jar

echo "Compiling WeatherAnalysis.java..."

javac -classpath "$(hadoop classpath)" \
-d build/classes src/WeatherAnalysis.java

echo "Creating JAR..."

jar -cvf build/jars/weather.jar \
-C build/classes/ .

echo "Running Hadoop Job..."

hadoop jar build/jars/weather.jar \
WeatherAnalysis \
input/weather \
output/weather

echo "Displaying Output..."

cat output/weather/part-r-00000
