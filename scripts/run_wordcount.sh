#!/bin/bash

rm -rf output/wordcount
rm -rf build/classes/*
rm -f build/jars/wordcount.jar

javac -classpath "$(hadoop classpath)" \
-d build/classes src/WordCount.java

jar -cvf build/jars/wordcount.jar \
-C build/classes/ .

hadoop jar build/jars/wordcount.jar \
WordCount \
input/wordcount \
output/wordcount

cat output/wordcount/part-r-00000
