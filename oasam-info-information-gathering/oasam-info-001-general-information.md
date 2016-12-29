
#OASAM-INFO-001: General Information

##Description:


At this stage, general information about the application is gathered. Some parameters of interest are described below:
Name of the package to analyze:


GIDsassociated to the package in the device: Identifiers of the groups associated to the application.
Shared User IDs: Linux user identifiers with which the application is executed.
Shared User Labels: Strings associated to the Linux user identifiers with which the application is executed.

Application version name:

Application version number:

Application installation date:

Most recent update date:

Application’s path in device:

Shared libraries:

APK path in device:

Application Target SDK:

Isdebugging mode enabled?

Required permissions:

Application Launch Intent: Necessary intent to launch the application.

##Risks:
An attacker will extract information to acquire knowledge about the application while global information is required for the operation of the application, so its exposure in itself does not constitute a risk to security. The value of any of the parameters can become a lower risk; for example, if debugging mode is enabled.

##Recommendations:
This information is necessary for developing applications, so it is not possible to restrict the access to such information. Some parameters could compromise security, for example if the application has debugging mode enabled, which is recommended to avoid.

 

##References:
1. http://developer.android.com/guide/topics/manifest/manifest-intro.html
