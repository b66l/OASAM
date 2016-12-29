
#OASAM-IS-004: Insecure Pending Intent Control

##Description:
An application can delegate tasks to another application through Pending Intents. The application receiving the Pending Intent cannot modify its data, but completes empty data. If an application generates a Pending Intent with such purpose but the target is not set, an application receiving the Pending Intent could add it, so such data would be sent to an arbitrary component.

##Risks:
This vulnerability could allow the leak of the information being processed by the application that generated the Pending Intent. Additionally, a malicious application could receive, process and send such information, performing a Man-in-the-Middle attack.

##Recommendations:
When tasks are delegated to other application through a Pending Intent, it is recommended to always set the target to which tasks are being delegated in order to execute them by a third-party application.

##References:
1. Flaw 6.4.5 of “A Study of Android Application Security”

2. http://developer.android.com/reference/android/app/PendingIntent.html

3. DRD06-J. Do not act on malicious intents - https://www.securecoding.cert.org/confluence/display/java/DRD06-J.+Do+not+act+on+malicious+intents
