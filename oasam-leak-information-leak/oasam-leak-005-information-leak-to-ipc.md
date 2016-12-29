
#OASAM-LEAK-005: Information Leak to IPC

##Description:
It is possible to store information in Intents through theputExtra() y putExtras() functions from the Intent class, as well as through the URI in the parameters by the GET method through the parse() from the URI class. It is not recommended to send unencrypted sensitive data through Implicit Intents since the application that will process such information is unknown a priori.

##Risks:
An illegitimate application could get access to sensitive data by intercepting the Intent.

##Recommendations:
It is recommended to store sensitive information in locations that can only be accessed by the application and, preferably, encrypt such information. In general terms, these guidelines must be followed in order to store data:

1. Shared Preferences. For storing options as pairs of values.

2. Internal Storage. For storing data in the device memory. By default, this type of storing is not accessible by third-party applications. .

3. External Storage. For storing data on locations shared by all the device applications, such as SD cards.

4. SQLite Database. For storing data on BBDD SQLite. By default, these types of databases are not accessible by third-party applications.

5. Network Connection. For storing data on services through the net. In such cases, it is recommended to maximize precautions and use encryption techniques.

##References:
1. http://developer.android.com/guide/topics/data/data-storage.html

2. Flaw 32 of “42+ Best practices in secure mobile development for iOS and Android”

3. DRD03-J. Do not broadcast sensitive information using an implicit intent - https://www.securecoding.cert.org/confluence/display/java/DRD03-J.+Do+not+broadcast+sensitive+information+using+an+implicit+intent
