
#OASAM-DV-004: Path Manipulation

##Description:
If file generation depends on the user’s input, it is necessary to filter this data because, otherwise, a malicious user could have access to arbitrary information by using the vulnerable application’s permissions. An example of dangerous file generation is shown below:


> file = openFileOutput(unfiltered_variable, Context.MODE_WORLD_READABLE);


If “unfiltered_variable” comes from the user without filtering, the access to files by the application could be controlled, allowing a malicious user to overwrite application’s files.

##Risks:
This vulnerability puts at risk the integrity and availability of the files managed by the application.

##Recommendations:
It is recommended not to use data coming from the user in order to create file names. If necessary, it is recommended to filter input data, preferably according to the use of whitelists.

##References:
1. http://projects.webappsec.org/w/page/13246952/Path%20Traversal

2. OWASP Top Ten Mobile Risk number 4: Client Side Injection.

3. http://developer.android.com/reference/android/content/Context.html#openFileOutput(java.lang.String, int)

4. DRD08-J. Always canonicalize a URL received by a content provider - https://www.securecoding.cert.org/confluence/display/java/DRD08-J.+Always+canonicalize+a+URL+received+by+a+content+provider
