
#OASAM-UIR: Unauthorized Intent Receipt

This category covers all the vulnerabilities related with the resolution of implicit Intent delivery. When an application sends an implicit Intent, there is no guarantee that a malicious application will not gather such Intent, since a malicious application could register a Intent Filter capable to pass the resolution (action, data and category), unless such Intent has a set of required permissions that the malicious user does not have. If a malicious application is able to intercept implicit Intents, it could have access to the execution of dataflow, being able to perform denial-of-service attacks or phishing. This category considers how this type of vulnerability can be exposed on particular components: Broadcast, Activities y Services.

The following controls are applied in this category:

**[OASAM-UIR-001: Broadcast Theft.](https://github.com/b66l/OASAM/blob/master/oasam-uir-unauthorized-intent-receipt/oasam-uir-001-broadcast-theft.md)** Intent interception on Broadcast components.

**[OASAM-UIR-002: Activity Hijacking.](https://github.com/b66l/OASAM/blob/master/oasam-uir-unauthorized-intent-receipt/oasam-uir-002-activity-hijacking.md)** Intent interception on Activity components.

**[OASAM-UIR-003: Service Hijacking.](https://github.com/b66l/OASAM/blob/master/oasam-uir-unauthorized-intent-receipt/oasam-uir-003-service-hijacking.md)** Intent interception on Service components.

**[OASAM-UIR-004: Weakness Special Intents.](https://github.com/b66l/OASAM/blob/master/oasam-uir-unauthorized-intent-receipt/oasam-uir-004-weakness-special-intents.md)** Pending Intent interception.
