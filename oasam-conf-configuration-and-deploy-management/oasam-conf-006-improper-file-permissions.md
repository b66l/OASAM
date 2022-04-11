
# OASAM-CONF-006: Improper file permissions

## Description:
Generating files with the “MODE_WORLD_READABLE” permission allows a global file reading, so it is not recommended except if it is a file that does not reveal confidential information. Likewise, it is not recommended to set files with “MODE_WORLD_WRITABLE” permission. An example of dangerous file statementcan be seenbelow:


>file = openFileOutput("File_Name", Context.MODE_WORLD_READABLE);

## Risks:
Setting global reading permissions reveals the information contained in a file. If the writing permission is enabled, any application could modify the content of such file, extending the attack surface.


## Recommendations:
It is recommended to generate files with global reading or writing permissions only when it is strictly necessary. In general terms, these guidelines are recommended to follow in order to store data:


1. Shared Preferences. For storing options as pairs of values.

2. Internal Storage. For storing data in the device memory. By default, this type of storing is not accessible by third-party applications.

3. External Storage. For storing data on locations shared by all the device applications, such as SD cards.

4. SQLite Database. For storing data on BBDD SQLite. By default, these types of databases are not accessible by third-party applications.

5. Network Connection. For storing data on services through the net. In such cases, it is recommended to maximize precautions and use encryption techniques.

## References:
1. Flaw 20 of “42+ Best practices in secure mobile development for iOS and Android”

2. Page 22 of “iSEC Securing Android Apps”

3. DRD11-J. Ensure that sensitive data is kept secure - https://www.securecoding.cert.org/confluence/display/java/DRD11-J.+Ensure+that+sensitive+data+is+kept+secure
