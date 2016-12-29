
#OASAM-IS: Intent Spoofing

This category covers all the vulnerabilities involved in the delivery of arbitrary Intents to a component that expects to receive other type of intent. In this way, the attacker will use the victim’s filters to send unexpected data and thus, take advantage of these functionalities. In order to have success with this type of vulnerability, target components must be public or exportable as a general rule; otherwise, they will not be available for other applications. For such purpose, components must have the “EXPORTED” flag enabled in the AndroidManifest.xml file. Note that Broadcast Receivers could be declared on AndroidManifest or at runtime.

The following controls are applied in this category:


**OASAM-IS-001:Broadcast Injection.** Intent Spoofing on Broadcast components.

**OASAM-IS-002: Malicious ActivityLaunch.** Arbitrary launch of Activities

**OASAM-IS-003:Malicious Service Launch.** Arbitrary launch of Services.

**OASAM-IS-004:Insecure Pending Intent Control.** Weaknesses related with the insecure use of Pending Intents.
