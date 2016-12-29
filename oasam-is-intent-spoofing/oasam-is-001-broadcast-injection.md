
#OASAM-IS-001: Broadcast Injection

##Description:
Broadcast Receivers are used to register Intents and respond them. If one of these components is public, any application could send Intents. Registering Intents with system actions by Broadcast Receivers is dangerous, since the fact that registering such Intents makes the element public and accessible, so a malicious application could send explicit Intents without the corresponding actions because they are system actions.

##Risks:
In many cases, Broadcast Receivers get Intents and activate Activities or Services with their data. Broadcast injection vulnerabilities could allow an attacker manipulating these components to interact with them through arbitrary data injection.

##Recommendations:
It is recommended to use public components only when necessary and, in such cases, validate thoroughly each parameter retrieved from the Intent. If Broadcast Receivers register system actions, it is recommended to validate the Intent’s action, since a malicious Intent cannot register system actions, so this validation can be used to learn if the Intent comes from the Android system or not.

##References:
1. Flaw 4B of “Semantically Rich Application-Centric Security in Android”

2. Flaw 3.2.1 of “Analyzing Inter-Application Communication in Android”

3. Flaw 26 of “42+ Best practices in secure mobile development for iOS and Android”

4. Flaw 5.2.5 of “A Study of Android Application Security”

5. DRD06-J. Do not act on malicious intents - https://www.securecoding.cert.org/confluence/display/java/DRD06-J.+Do+not+act+on+malicious+intents

6. DRD16-J. Explicitly define the exported attribute for private components - https://www.securecoding.cert.org/confluence/display/java/DRD16-J.+Explicitly+define+the+exported+attribute+for+private+components
