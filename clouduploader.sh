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

# Assign arguments to variables
FILE_PATH=$1
BUCKET_NAME=$2

# Ensure AWS_PROFILE is set to your SSO profile
export AWS_PROFILE=PowerUserAccess-010526269479

# Check if the file exists
if [ ! -f "$FILE_PATH" ]; then
  echo "File not found!"
  exit 1
fi

# Upload file to S3
aws s3 cp "$FILE_PATH" "s3://$BUCKET_NAME/"

# Check if the upload was successful
if [ $? -eq 0 ]; then
  echo "File uploaded successfully!"
else
  echo "File upload failed!"
fi