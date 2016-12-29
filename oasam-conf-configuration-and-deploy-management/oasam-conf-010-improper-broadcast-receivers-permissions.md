
#OASAM-CONF-010: Improper Broadcast Receivers permissions

##Description:
At this stage, the attacker will list the necessary permissions in order to launch each broadcast receiver. With this information, it is possible to obtain the attack surface both from inside and outside the application environment, so the attacker could learn better how to attack the application security in the future.
For instance, a broadcast receiver performing functionalities requiring special permissions and that can be launched outside the application (exported) and does not require permissions, compromises security due to the fact that it enables the broadcast receiver to be launched by any device application.

##Risks:
The risks vary depending on the functionality’s sensibility of each broadcast receiver.

##Recommendations:
As a general rule, it is recommended to require permissions on the broadcast receivers performing sensitive functionalities, particularly if they are exported broadcast receivers.

##References:
1. http://developer.android.com/guide/topics/security/permissions.html
