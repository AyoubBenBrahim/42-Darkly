 # web application security
 
 check the subject
 
This project aims to make you discover cyber security in the field of the WWW
 
you will learn about these risks and vulnerabilities while auditing a simple website. This website shows breaches, some

of which still show on well established websites you visit on a daily basis.
 
 **********************************
 
Enumaration - Fuzzing phase

Burp Suite

```
nikto -h 10.12.100.231
- Nikto v2.1.6
---------------------------------------------------------------------------
+ Target IP:          10.12.100.231
+ Target Hostname:    10.12.100.231
+ Target Port:        80
+ Start Time:         2023-05-05 11:17:00 (GMT-4)
---------------------------------------------------------------------------
+ Server: nginx/1.4.6 (Ubuntu)
+ Retrieved x-powered-by header: PHP/5.5.9-1ubuntu4.29
+ The anti-clickjacking X-Frame-Options header is not present.
+ The X-XSS-Protection header is not defined. This header can hint to the user agent to protect against some forms of XSS
+ The X-Content-Type-Options header is not set. This could allow the user agent to render the content of the site in a different fashion to the MIME type
+ Cookie I_am_admin created without the httponly flag
+ No CGI Directories found (use '-C all' to force check all possible dirs)
+ OSVDB-3268: /whatever/: Directory indexing found.
+ Entry '/whatever/' in robots.txt returned a non-forbidden or redirect HTTP code (200)
+ Entry '/.hidden' in robots.txt returned a non-forbidden or redirect HTTP code (301)
+ "robots.txt" contains 2 entries which should be manually viewed.
+ nginx/1.4.6 appears to be outdated (current is at least 1.14.0)
+ OSVDB-3092: /admin/: This might be interesting...
+ OSVDB-3092: /css/: This might be interesting...
+ OSVDB-3092: /includes/: This might be interesting...
+ OSVDB-3093: /admin/index.php: This might be interesting... has been seen in web logs from an unknown scanner.
+ 7931 requests: 7 error(s) and 14 item(s) reported on remote host
+ End Time:           2023-05-05 11:17:14 (GMT-4) (14 seconds)
---------------------------------------------------------------------------
+ 1 host(s) tested
```

```
nmap -A 10.12.100.231
Starting Nmap 7.93 ( https://nmap.org ) at 2023-05-08 05:45 EDT
Nmap scan report for 10.12.100.231
Host is up (0.00084s latency).
Not shown: 999 closed tcp ports (conn-refused)
PORT   STATE SERVICE VERSION
80/tcp open  http    nginx 1.4.6 (Ubuntu)
|_http-server-header: nginx/1.4.6 (Ubuntu)
|_http-title: BornToSec - Web Section
| http-robots.txt: 2 disallowed entries 
|_/whatever /.hidden
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 7.21 seconds
```

