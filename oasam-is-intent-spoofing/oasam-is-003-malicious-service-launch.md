
#OASAM-IS-003: Malicious Service Launch

##Description:
Services can be launched on the basis of data coming from the user or the reception of arbitrary Intents. This allows various attack surfaces:

1. If a Service uses data from the Intent without verifying its origin, the application’s data integrity will be affected.

2. If a Service delivers data considered as sensitive and can be publicly launched, a specially manipulated Intent could launch it, leading to a confidential information disclosure.

##Risks:
The presence of this vulnerability could allow performing arbitrary actions in the application by executing Services and also lead to the disclosure of information used by the Service. As an aggravating circumstance, Services usually trust more the data provided by users and Intents; moreover, they provide in many cases API interfaces so the applications could communicate with each other.

##Recommendations:
It is recommended to use public components only when necessary and, in those cases, validate thoroughly each parameter retrieved from the Intent or coming from the user. Additionally, Services can be protected setting permissions.

##References:
1. Flaw 3.2.3 of “Analyzing Inter-Application Communication in Android”

2. DRD06-J. Do not act on malicious intents - https://www.securecoding.cert.org/confluence/display/java/DRD06-J.+Do+not+act+on+malicious+intents

3. DRD07-J. Protect exported services with strong permissions - https://www.securecoding.cert.org/confluence/display/java/DRD07-J.+Protect+exported+services+with+strong+permissions

4. DRD16-J. Explicitly define the exported attribute for private components - https://www.securecoding.cert.org/confluence/display/java/DRD16-J.+Explicitly+define+the+exported+attribute+for+private+components
