# Hadoop MapReduce Lab

A collection of Hadoop MapReduce programs implemented in Java using Hadoop 3.3.6 on a local standalone setup.

---

# Programs Included

## 1. Word Count
Counts occurrences of each word in a text file.

## 2. Log File Processing
Processes system log files and counts occurrences of log types such as:
- INFO
- ERROR
- WARNING

## 3. Weather Data Analysis
Calculates average:
- Temperature
- Dew Point
- Wind Speed

---

# Tech Stack

- Java 17
- Hadoop 3.3.6
- GitHub Codespaces
- Linux Shell Scripts

---

# Project Structure

```txt
hadoop_lab/
│
├── src/
│   ├── WordCount.java
│   ├── LogProcessor.java
│   └── WeatherAnalysis.java
│
├── input/
│   ├── wordcount/
│   ├── logs/
│   └── weather/
│
├── output/
│
├── build/
│   ├── classes/
│   └── jars/
│
├── scripts/
│   ├── run_wordcount.sh
│   ├── run_logs.sh
│   ├── run_weather.sh
│   └── run_all.sh
│
├── README.md
└── .gitignore
```

---

# Hadoop Setup

## Verify Java

```bash
java -version
```

## Verify Hadoop

```bash
hadoop version
```

---

# Running Programs

## Run WordCount

```bash
./scripts/run_wordcount.sh
```

---

## Run Log Processor

```bash
./scripts/run_logs.sh
```

---

## Run Weather Analysis

```bash
./scripts/run_weather.sh
```

---

# Run All Programs

```bash
./scripts/run_all.sh
```

---

# Sample Input

## WordCount

```txt
hello world
hello hadoop
hello java
```

---

## Log Processor

```txt
INFO System Started
ERROR Disk Failure
WARNING Battery Low
```

---

## Weather Analysis

```txt
Pune,30,18,12
Mumbai,32,24,10
Delhi,28,16,14
```

---

# Sample Output

## WordCount

```txt
hello 3
hadoop 1
java 1
world 1
```

---

## Log Processor

```txt
ERROR 1
INFO 1
WARNING 1
```

---

## Weather Analysis

```txt
DEW 19.33
TEMP 30.00
WIND 12.00
```

---

# Features

- Hadoop MapReduce implementation
- Java-based distributed processing
- Automated shell scripts
- Organized project structure
- GitHub-ready setup

---

# Author

Vedant Bhamare