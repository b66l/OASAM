
#OASAM-CONF-008: Improper Activities permissions

##Description:
At this stage, the attacker will list the necessary permissions in order to launch each activity. With this information, it is possible to extract the attack surface both from inside and outside the application environment, so the attacker could learn better how to attack the application security in the future.
For instance, an activity performing functionalities requiring special permissions and that can be launched outside the application (exported) and does not require permissions, compromises security due to the fact that it enables the activity to be launched by any device application.

##Risks:
The risks vary depending on the functionality’s sensibility of each activity.

##Recommendations:
As a general rule, it is recommended to require permissions on the activities performing sensitive functionalities, particularly if they are exported Activities.

##References:
1. http://developer.android.com/guide/topics/security/permissions.html
