
#OASAM-IS-002: Malicious Activity Launch

##Description:
Activities can be launched on the basis of data coming from the user or the reception of arbitrary Intents. This allows various attack surfaces:

1. If an Activity uses data from the Intent without verifying its origin, the application’s data integrity will be affected.

2. If an Activity delivers data considered as sensitive and can be publicly launched, a specially manipulated Intent could launch it, leading to a confidential information disclosure.

##Risks:
The presence of this vulnerability could mislead an user, due to the fact that users would be thinking that they are using a legitimate Activity, when they are actually performing actions that are being reported to the attacker. Additionally, it is possible the leak of the information used by the Activity.

##Recommendations:
It is recommended to use public components only when necessary and, in those cases, validate thoroughly each parameter retrieved from the Intent or coming from the user.

##References:
1. Flaw 3.2.2 of “Analyzing Inter-Application Communication in Android”

2. https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)

3. DRD06-J. Do not act on malicious intents - https://www.securecoding.cert.org/confluence/display/java/DRD06-J.+Do+not+act+on+malicious+intents

5. DRD09-J: Restrict access to sensitive activities - https://www.securecoding.cert.org/confluence/display/java/DRD09-J%3A+Restrict+access+to+sensitive+activities

6. DRD16-J. Explicitly define the exported attribute for private components - https://www.securecoding.cert.org/confluence/display/java/DRD16-J.+Explicitly+define+the+exported+attribute+for+private+components
