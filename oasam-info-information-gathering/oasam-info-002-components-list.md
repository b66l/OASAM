
#OASAM-INFO-002: Components list

##Description:
At this stage, information about the components of an application is gathered. These are the basic components of an Android application:


Activities.

Services.

Content providers.

Broadcast receivers.


##Risks:
An attacker will get the information to acquire knowledge about the application while the list of components of an application is necessary to run such application, so its exposure in itself does not constitute a risk to security.

##Recommendations:
This information is necessary for developing applications, so it is not possible to restrict the access to such information.

##References:
1. http://developer.android.com/guide/components/activities.html
2. http://developer.android.com/guide/components/services.html
3. http://developer.android.com/guide/topics/providers/content-providers.html
4. http://developer.android.com/reference/android/content/BroadcastReceiver.html
