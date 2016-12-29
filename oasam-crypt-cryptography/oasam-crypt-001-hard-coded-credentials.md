
#OASAM-CRYPT-001: Hard-coded credentials

##Description:
Using hard-coded or empty passwords are easy to be extracted  for a malicious user by disassembling the application.

##Risks:
A malicious user could have access to hard-coded credentials, accessing to the services allowed by such credentials.

##Recommendations:
It is recommended to store confidential information in locations that can only be accessed by the application and, preferably, encrypt such information.


##References:
1. Flaw 6.5.1 of “A Study of Android Application Security”
