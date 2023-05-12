first step check robots.txt

info lerned from [Motasem Hamdan](https://youtu.be/9b2Uj4cCCPw) channel

```
User-agent: *
Disallow: /whatever
Disallow: /.hidden
```
when using `nikto -h http://10.12.100.231`
```
+ OSVDB-3268: /whatever/: Directory indexing found.
```

OSVDB prefix are vulnerabilities reported in the Open Source Vulnerability Database.

"User-agent: *," indicates that the instructions that follow apply to all web robots.

"Disallow: /whatever" and "Disallow: /.hidden," specify two directories on the website that the web robots should not crawl or index.


go to `http://IP/whatever/`

there is a htpasswd file that contains

`root:437394baff5aa33daa618be47b75cb49`

with [cipher identifier](https://www.dcode.fr/cipher-identifier) it turns out to be md5

[decrypt()](https://www.md5online.org/md5-decrypt.html) = `qwerty123@`

from nikto result in the enumration phase we notice an admin panel
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
+ OSVDB-3092: /admin/: This might be interesting...
+ OSVDB-3093: /admin/index.php: This might be interesting... has been seen in web logs from an unknown scanner.
---------------------------------------------------------------------------
+ 1 host(s) tested
```

we use the password to acess. `http://IP/admin/` with Username as 'root' (tried admin)

The flag is : `d19b4823e0d5600ceed56d5e896ef328d7a2b9e7ac7e80f4fcdb9b10bcb3e7ff`

## # Prevention

1/ Use access controls: used to regulate who has access to specific resources, data, or systems. Access controls are implemented to prevent unauthorized access to sensitive information or resources and to ensure that only authorized individuals or systems are allowed to access them.

2/ Use encryption: Use encryption to protect sensitive information in transit and at rest. This will help prevent unauthorized access to the information.

3/ Monitor access logs: Regularly monitor access logs to identify any unauthorized access attempts or suspicious activity. This will help you detect and respond to potential security threats.

