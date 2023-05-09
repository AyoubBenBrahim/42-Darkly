
first step check robots.txt

info lerned from [Motasem Hamdan](https://youtu.be/9b2Uj4cCCPw) channel

```
nikto -h 10.12.100.231

+ Entry '/whatever/' in robots.txt returned a non-forbidden or redirect HTTP code (200)
+ Entry '/.hidden' in robots.txt returned a non-forbidden or redirect HTTP code (301)
+ "robots.txt" contains 2 entries which should be manually viewed.
```

```
User-agent: *
Disallow: /whatever
Disallow: /.hidden
```

"User-agent: *," indicates that the instructions that follow apply to all web robots.

"Disallow: /whatever" and "Disallow: /.hidden," specify two directories on the website that the web robots should not crawl or index.

```bash
#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 <IP address>"
  exit 1
fi

IP=$1

# Create the download directory on the user's Desktop
DOWNLOAD_DIR="$HOME/Desktop/download_hidden"
mkdir -p "$DOWNLOAD_DIR"

# Change to the download directory
cd "$DOWNLOAD_DIR"

echo "Downloading files from http://$IP/.hidden/ ..."

if wget -np -r -e robots=off "http://$IP/.hidden/" > download.log 2>/dev/null; then
  echo "\n\nDownload complete.\n"
  echo "Searching for files named README that contain digits ...\n\n"
  find . -name "README" -type f -print0 | xargs -0 grep -Hn '[0-9]'
else
  echo "Error: Failed to download files from http://$IP/.hidden/"
  exit 1
fi
```

here is your flag : d5eec3ec36cf80dce44a896f961c1831a05526ec215693c8f2c39543497d4466
