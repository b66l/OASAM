
#OASAM-INFO-005: Component Launch Intents

##Description:
An attacker will search the necessary intent to launch the component. Thus, if the component is accessible (exported in the case of other device applications), it will be able to launch it from other application or component.

##Risks:
An attacker will get the information to acquire knowledge about the application while the list of Launch Intents of an application component is necessary to run such application, so its exposure in itself does not constitute a risk to security.

##Recommendations:
This information is necessary for developing applications, so it is not possible to restrict the access to such information.

##References:
1. http://developer.android.com/reference/android/content/Intent.html
