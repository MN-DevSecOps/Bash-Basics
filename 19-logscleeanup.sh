#! /bin/bash
SOURCE_DIR=$1
DAYS=$2{2:-14}

if [-z $SOURCE_DIR ]; then
    echo "ERROR:: Missing Parameters"
    echo "Usage: $0 <source_directory> [days(optioanl default to 14)]"
    exit 1
fi
if [ ! -d $SOURCE_DIR ]; then
    echo "ERROR:: $SOURCE_DIR is not a valid directory"
    exit 1
fi