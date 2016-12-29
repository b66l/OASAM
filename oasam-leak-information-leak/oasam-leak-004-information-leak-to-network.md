
#OASAM-LEAK-004: Information Leak to Network

##Description:
In order to send data to the network, it is necessary to have the “android.permission.INTERNET” permission enabled. An application with such permission can send information to the network through many libraries; the most common ones are java.net.* and android.net.*. It is not recommended to send unencrypted sensitive information since an attacker could extract it by sniffing the network traffic.

##Risks:
An attacker could get access to unencrypted sensitive information sent to the network by sniffing.

##Recommendations:
It is recommended to store sensitive information in locations that can only be accessed by the application and, preferably, encrypt such information. In general terms, these guidelines must be followed in order to store data:


1. Shared Preferences. For storing options as pairs of values.

2. Internal Storage. For storing data in the device memory. By default, this type of storing is not accessible by third-party applications. .

3. External Storage. For storing data on locations shared by all the device applications, such as SD cards.

4. SQLite Database. For storing data on BBDD SQLite. By default, these types of databases are not accessible by third-party applications.

5. Network Connection. For storing data on services through the net. In such cases, it is recommended to maximize precautions and use encryption techniques.

##References:
1. http://developer.android.com/guide/topics/data/data-storage.html#filesExternal

2. http://developer.android.com/guide/topics/data/data-storage.html

3. OWASP Top Ten Mobile Risk 3: Insufficient Transport Layer Protection

4. Flaw 32 of “42+ Best practices in secure mobile development for iOS and Android”

5. http://developer.android.com/training/basics/network-ops/managing.html
