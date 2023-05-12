#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 <IP address>"
  exit 1
fi

IP=$1

DOWNLOAD_DIR="./download_hidden"
mkdir -p "$DOWNLOAD_DIR"
cd "$DOWNLOAD_DIR"

echo "Downloading files from http://$IP/.hidden/ ..."

if wget -np -r -e robots=off "http://$IP/.hidden/" > download.log 2>/dev/null; then
  echo "\n\nDownload complete.\n"
  echo "Searching for files named README that contain digits ...\n\n"
  find . -name "README" -type f -print0 | xargs -0 grep -Hn '[0-9]'
else
  echo "Error: Failed to download files from http://$IP/.hidden/"
  /bin/rm -rf $DOWNLOAD_DIR
  exit 1
fi

/bin/rm -rf ../download_hidden ../download.log
