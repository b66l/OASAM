
#OASAM-DV-005: Dos Null Check in IPC

##Description:
Android ends applications when a null reference is found. If null references are not checked while retrieving data from an Intent, an attacker could send intents with fields with null values in order to deny the service to applications, especially those that have running services. In particular, the existence of null references must be checked while retrieving data from an Intent, especially the following methods: getAction() y getExtra().

##Risks:
This vulnerability puts at risk the availability of the applications that do not perform checks in order not to attempt to access to null values. In case of running services by the applications, an attacker could deny such services without the user being aware, so it is especially harmful.

##Recommendations:
It is recommended to check for null values while retrieving data from Intents, especially the following methods: getAction() y getExtra().

##References:
1. Flaw 5.2.5 of “A Study of Android Application Security”

2. OWASP Top Ten Mobile Risk number 4: Client Side Injection
