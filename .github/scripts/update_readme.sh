#!/bin/bash
RESULT="$1"
INVESTIGATOR="$2"
CASE_FILE="$3"
STAMP=$(date '+%d/%m/%Y %H:%M %Z')

{
  echo ""
  echo "### Statement analysis: $CASE_FILE"
  echo "- Analysed for: $INVESTIGATOR"
  echo "- Vowel count: $RESULT"
  echo "- Logged: $STAMP"
} >> /app/README.md

tail -n 5 /app/README.md