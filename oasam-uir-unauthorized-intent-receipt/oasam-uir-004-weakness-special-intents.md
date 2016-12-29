
#OASAM-UIR-004: Weakness Special Intents

##Description:
If an implicit intent is sent in order to deal with a Content Provider, it can contain sensitive information in the URI, being able to be read if a malicious component intercepts the Intent.
On the other hand, a Pending Intent retains the permissions from its creator, so if a malicious component intercepts a Pending Intent, it could use the permissions from the Pending Intent creating in order to impersonate it.

##Risks:
The presence of this vulnerability enables the leak of information included in the URI. Additionally, this vulnerability allows the attacker to supplant permissions from the Pending Intent creator.

##Recommendations:
It is recommended to assess the need for sending implicit Intents. In order to communicate Intents in an application, it is highly recommended to use explicit Intents. If sending sensitive data in an Intent is necessary, it is recommended to protect it by setting permissions and encrypting such data.

##References:
1. Flaw 3.1.4 de “Analyzing Inter-Application Communication in Android”

2. http://developer.android.com/reference/android/app/PendingIntent.html
