
# LogLite - Smart Linux Log Analyzer

## Project Overview
LogLite is a beginner-friendly Linux project developed
using Bash scripting and Linux commands.

It analyzes log files and counts ERROR, WARNING, and INFO
messages. It then generates a text report automatically.

## Features
- Reads log files
- Counts errors and warnings
- Counts informational messages
- Displays error details
- Generates a report automatically
- Checks whether the log file exists

## Technologies Used
- Ubuntu Linux
- Bash Shell Scripting
- grep
- wc
- cat
- nano

## Project Structure
LogLite/
├── logs/
│   └── sample.log
├── reports/
│   └── report.txt
├── loglite.sh
└── README.md

## How to Run

1. Open the terminal.
2. Navigate to the project directory.
3. Run the following commands:

chmod +x loglite.sh
./loglite.sh

## Sample Output
Errors: 5
Warnings: 2
Info: 5

## Learning Outcomes
- Linux file handling
- Bash scripting
- Log analysis
- Basic troubleshooting
- Report generation
