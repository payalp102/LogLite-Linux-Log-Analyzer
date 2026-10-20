
#!/bin/bash

# LogLite - Smart Linux Log Analyzer

LOG_FILE="logs/sample.log"
REPORT_FILE="reports/report.txt"

# Check log file
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file not found!"
    exit 1
fi

# Count log messages
ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")
WARNING_COUNT=$(grep -c "WARNING" "$LOG_FILE")
INFO_COUNT=$(grep -c "INFO" "$LOG_FILE")
TOTAL_LINES=$(wc -l < "$LOG_FILE")

# Create report
{
    echo "========== LogLite Report =========="
    echo "Date: $(date)"
    echo "Total Entries: $TOTAL_LINES"
    echo "Total Errors: $ERROR_COUNT"
    echo "Total Warnings: $WARNING_COUNT"
    echo "Total Info: $INFO_COUNT"
    echo ""
    echo "---------- Error Details ----------"
    if grep -q "ERROR" "$LOG_FILE"; then
    grep "ERROR" "$LOG_FILE"
    else
    echo "No errors found!"
    fi
    echo "===================================="
} > "$REPORT_FILE"

echo "LogLite analysis completed!"
echo "Errors: $ERROR_COUNT"
echo "Warnings: $WARNING_COUNT"
echo "Info: $INFO_COUNT"
echo "Report saved to $REPORT_FILE"

