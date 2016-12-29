
#OASAM-UIR-001: Broadcast Theft

##Description:
An implicit Intent is public when it is not protected with “Signature” or ”SignatureOrSystem” type permissions. When an application sends a public implicit Intent, such Intent can be read by any system component.A malicious application could have access to it, obtaining sensitive data if the Intent simply contains it defining Intent Filters for all actions, data and categories. This is especially dangerous on Sticky Broadcasts, since the Intent persists in them and can be redirected repeatedly to various recipients. This gives a greater time window in which the malicious component can operate. Moreover, Sticky Broadcasts cannot be protected through permissions.

##Risks:
An attacker could perform a denial-of-service attack on the Ordered Broadcasts, since an Intent can only be spread on them if the first component receiving the Intent to uses it for output. Additionally, it could be used to perform Man-in-the-Middle attacks with its subsequent data injection on the spread Intents.

##Recommendations:
It is recommended to consider the need for sending implicit Intents. In order to communicate Intents in an Application, the use of explicit Intents is always recommended. When sending sensitive data in an Intent is necessary, it is recommended to protect them by setting permissions and encrypting such data.

##References:
1. Flaw 3.1.1 de “Analyzing Inter-Application Communication in Android”

2. DRD05-J. Do not grant URI permissions on implicit intents - https://www.securecoding.cert.org/confluence/display/java/DRD05-J.+Do+not+grant+URI+permissions+on+implicit+intents
