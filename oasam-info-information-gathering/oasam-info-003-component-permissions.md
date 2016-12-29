
#OASAM-INFO-003: Component permissions

##Description:
Required access permissions can be defined for each Android application component. An attacker will list such permissions in order to access to components with sensitive functionality that do not have the corresponding restrictions.

##Risks:
A component without defined permissions can be accessed from an application without restrictions, even it can be accessed from any other application of the device if exported.


##Recommendations:
It is recommended to set permissions to all the components that execute sensitive functionalities.

##References:
1. http://developer.android.com/guide/topics/security/permissions.html#manifest
