#!/bin/bash

echo "==============================="
echo "RUNNING WORDCOUNT"
echo "==============================="

./scripts/run_wordcount.sh

echo ""
echo "==============================="
echo "RUNNING LOG PROCESSOR"
echo "==============================="

./scripts/run_logs.sh

echo ""
echo "==============================="
echo "RUNNING WEATHER ANALYSIS"
echo "==============================="

./scripts/run_weather.sh

echo ""
echo "ALL HADOOP JOBS COMPLETED"
