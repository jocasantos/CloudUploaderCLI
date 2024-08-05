#!/bin/bash
# This script uploads files to the cloud

# Function to print usage
print_usage() {
  echo "Usage: clouduploader.sh /path/to/file.txt bucket_name"
}

# Check if the correct number of arguments are provided
if [ $# -ne 2 ]; then
  print_usage
  exit 1
fi