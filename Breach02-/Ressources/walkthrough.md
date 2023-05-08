first step check robots.txt

info lerned from [Motasem Hamdan](https://youtu.be/9b2Uj4cCCPw) channel

```
User-agent: *
Disallow: /whatever
Disallow: /.hidden
```

"User-agent: *," indicates that the instructions that follow apply to all web robots.

"Disallow: /whatever" and "Disallow: /.hidden," specify two directories on the website that the web robots should not crawl or index.


go to `http://IP/whatever/`

there is a htpasswd file that contains

`root:437394baff5aa33daa618be47b75cb49`

with [cipher identifier](https://www.dcode.fr/cipher-identifier) it turns out to be md5

[decrypt()](https://www.md5online.org/md5-decrypt.html) = `qwerty123@`

we use it to acess. `http://IP/admin/` with Username as 'root'

The flag is : d19b4823e0d5600ceed56d5e896ef328d7a2b9e7ac7e80f4fcdb9b10bcb3e7ff



