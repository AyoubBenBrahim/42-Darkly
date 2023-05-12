
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

here is your flag : `d5eec3ec36cf80dce44a896f961c1831a05526ec215693c8f2c39543497d4466`


## # Prevention

To prevent the web server from displaying a directory listing, like the "autoindex" feature in Nginx, we can disable the directory listing functionality.

In order to achieve this, we need to configure our web server to not show the contents of a directory when there is no index file present. This ensures that if a user accesses a directory URL, the web server will not display a listing of the files and directories within that directory.

The exact method to disable directory listing depends on the web server software we are using. However, in general, we would typically need to modify the web server configuration file and add directives to disable directory listing.