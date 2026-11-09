#!/bin/bash
set -e

CASE_FILE="${CASE_FILE:-witness_statement.txt}"
echo "Opening case file: $CASE_FILE"

RESULT=$(python3 /app/.github/scripts/frequency.py "/app/$CASE_FILE")
echo "Analysis result: $RESULT"

bash /app/.github/scripts/update_readme.sh "$RESULT" "$INVESTIGATOR" "$CASE_FILE"

echo "Case file processed for $INVESTIGATOR"