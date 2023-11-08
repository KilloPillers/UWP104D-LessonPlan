#!/bin/bash

# This script counts the number of words in all .cpp files in the current directory
total_word_count=0
for file in ./*; do
  if [ -f "$file" ]; then
    if [[ $file != *.cpp ]]; then
      continue
    fi
    word_count=$(wc -w < "$file")
    total_word_count=$((total_word_count + word_count))
    echo "File: $file, Word Count: $word_count"
  fi
done
echo "Total Word Count: $total_word_count"

