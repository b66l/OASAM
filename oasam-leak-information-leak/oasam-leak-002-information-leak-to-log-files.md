
#OASAM-LEAK-002: Information Leak to log files

##Description:
It is possible to store information in Android logs through the following functions:
1. Log.v(). In order to store extended information.

2. Log.d(). In order to store debugging information.

3. Log.i(). In order to store basic information.

4. Log.w(). In order to store information about alerts.

5. Log.e(). In order to store error logs.

It is not recommended to store sensitive information in the device’s logs because any application with the “READ_LOGS” permission could have access to such logs.

##Risks:
Any application with access to the logs could extract sensitive information that could be stored in those logs.

##Recommendations:
It is recommended to store sensitive information in locations that can only be accessed by the application and, preferably, encrypt such information. In general terms, these guidelines must be followed in order to store data:


1. Shared Preferences. For storing options as pairs of values.

2. Internal Storage. For storing data in the device memory. By default, this type of storing is not accessible by third-party applications. .

3. External Storage. For storing data on locations shared by all the device applications, such as SD cards.

4. SQLite Database. For storing data on BBDD SQLite. By default, these types of databases are not accessible by third-party applications.

5. Network Connection. For storing data on services through the net. In such cases, it is recommended to maximize precautions and use encryption techniques.

##Reference:
1. http://developer.android.com/reference/android/util/Log.html

2. http://developer.android.com/reference/android/Manifest.permission.html#READ_LOGS

3. http://developer.android.com/guide/topics/data/data-storage.html

4. Flaw 1 of “42+ Best practices in secure mobile development for iOS and Android”

5. Flaw 32 of “42+ Best practices in secure mobile development for iOS and Android”

6. DRD04-J. Do not log sensitive information - https://www.securecoding.cert.org/confluence/display/java/DRD04-J.+Do+not+log+sensitive+information
