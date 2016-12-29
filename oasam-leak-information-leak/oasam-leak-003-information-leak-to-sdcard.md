
#OASAM-LEAK-003: Information Leak to SDCard

##Description:
It is possible to store data on SDcards through the following functions:


1. With API 7 or lower.  Through the getExternalStorageDirectory() function.

2. With API8 or higher. Through the getExternalFilesDir() function.

It is not recommended to store sensitive data in the device SDcard, since any application could extract it.

##Risks:
Any application could have access to the sensitive data stored in the SDcard.

##Recommendations:
It is recommended to store sensitive information in locations that can only be accessed by the application and, preferably, encrypt such information. In general terms, the following guidelines must be followed in order to store data:


1. Shared Preferences. For storing options as pairs of values.

2. Internal Storage. For storing data in the device memory. By default, this type of storing is not accessible by third-party applications. .

3. External Storage. For storing data on locations shared by all the device applications, such as SD cards.

4. SQLite Database. For storing data on BBDD SQLite. By default, these types of databases are not accessible by third-party applications.

5. Network Connection. For storing data on services through the net. In such cases, it is recommended to maximize precautions and use encryption techniques.

##References:
1. http://developer.android.com/guide/topics/data/data-storage.html#filesExternal

2. http://developer.android.com/guide/topics/data/data-storage.html

3. Flaw 1 of “42+ Best practices in secure mobile development for iOS and Android”

4. Flaw 32 of “42+ Best practices in secure mobile development for iOS and Android” 

5. DRD00-J. Do not store sensitive information on external storage (SD card) - https://www.securecoding.cert.org/confluence/pages/viewpage.action?pageId=114851866
