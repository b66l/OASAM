
#OASAM-UIR-003: Service Hijacking

##Description:
By taking advantage of this vulnerability,  a malicious Activity is launched instead of the expected one, so the user will be in a wrong application without being aware. This happens when the charge of an Activity depends on an implicit Intent. The attacker registers a more accurate Intent Filter and controls it.  This vulnerability is more persistent due to the fact that it is transparent to the user because the services do not include graphic interface for it.

##Risks:
The presence of this vulnerability allows leak of the information processed by the involved Service.
Additionally, this vulnerability allows an attacker to modify data, putting at risk its integrity.

##Recommendations:
It is recommended to consider the need for sending implicit Intents. In order to communicate Intents in an Application, the use of explicit Intents is always recommended. If sending sensitive data in an Intent is necessary, it is recommended to protect them by setting permissions and encrypting such data.

##References:
1. Flaw 3.1.3 de “Analyzing Inter-Application Communication in Android”

2. Flaw 25 de “42+ Best practices in secure mobile development for iOS and Android”
