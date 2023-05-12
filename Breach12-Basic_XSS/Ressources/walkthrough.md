
basic XSS

inspect ==> increase maxlength of Name field input (maxlength="100")

there is no need to bypass Xss filters

`<script>/* Bad stuff here... */</script>`

THE FLAG IS : `0FBB54BBF7D099713CA4BE297E1BC7DA0173D8B3C21C1811B916A3A86652724E`

portswigger docs on XSS

## # Prevention

Input validation

Sanitizing HTML refers to the process of removing or neutralizing potentially harmful or unwanted elements, attributes, or scripts from an HTML input. It is commonly done as a security measure to prevent Cross-Site Scripting (XSS) attacks and to ensure that the HTML code adheres to certain guidelines or restrictions.

When user-generated content is allowed to be displayed as HTML on a website or application, there is a risk that malicious users may inject harmful code, such as JavaScript, into the HTML input. This code can then be executed by unsuspecting users, leading to security vulnerabilities or unauthorized access.

To mitigate these risks, HTML sanitization involves parsing the HTML input, inspecting the elements, attributes, and scripts within it, and selectively removing or modifying any potentially dangerous or unwanted components.