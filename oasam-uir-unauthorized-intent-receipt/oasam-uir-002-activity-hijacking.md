
#OASAM-UIR-002: Activity Hijacking

##Description:
By taking advantage of this vulnerability,  a malicious Activity is launched instead of the expected one, so the user will be in a wrong application without being aware. This happens when the charge of an Activity depends on an implicit Intent. The attacker registers a more accurate Intent Filter and controls it. This is not always possible, since if various Activities are capable to process an implicit Intent, a message will show up to the user to choose the application. However, this is very dangerous because if this happens and the user set as default action loading the malicious application, the malicious Activity will be always opened without being asked.

##Risks:
The presence of this vulnerability allows executing phishing attacks, as well as leaks of the information handled by the user in the involved Activity. Additionally, this vulnerability allows the attacker modifying the data, putting at risk its integrity.

##Recommendations:
It is recommended to consider the need for sending implicit Intents. In order to communicate Intents in an Application, the use of explicit Intents is always recommended. If sending sensitive data in an Intent is necessary, it is recommended to protect them by setting permissions and encrypting such data.

##References:
1. Flaw 3.1.2 of “Analyzing Inter-Application Communication in Android”
