
#OASAM-CONF-007: Improper Content Provider permissions

##Description:
On Android, Contact Providers are a way to share information between applications through a structured API that allows keeping data integrity. It is also possible to set access and writing permissions to Content Providers. If these permissions are not set, any application could have access to the stored data.

##Risks:
A malicious application could access and/or modify data stored in a Content Provider without the user awareness, affecting the integrity and confidentiality of such data.

##Recommendations:
It is recommended to set permissions to Content Providers. For such purpose, the “uses permission” guideline should be used; for example:


 > < uses-permission android:name="android.permission.READ_USER_DICTIONARY" >

##References:
1. Flaw 27 of “42+ Best practices in secure mobile development for iOS and Android”
2. http://developer.android.com/guide/topics/providers/content-provider-basics.html
3. http://developer.android.com/guide/topics/manifest/uses-permission-element.html
