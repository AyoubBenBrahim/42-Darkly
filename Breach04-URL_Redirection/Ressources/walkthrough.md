
at the Enumeration phase, when using OWASP ZAP for possible vulnerabilities

![alt text](./redirect.png)

the three icons at the bottom can be exploited to redirect to a phishing link

using inspect

![alt text](./phishing.png)

then click the fake link

GOOD JOB HERE IS THE FLAG : `B9E775A0291FED784A2D9680FCFAD7EDD6B8CDF87648DA647AAF4BBA288BCAB3`

## # Prevention

You can prevent redirects to other domains by checking the URL being passed to the redirect function. Make sure all redirect URLs are **relative paths** – i.e. they start with a single `/` character.

If you *do* need to perform external redirects, consider restricting the individual sites that you permit redirects to.