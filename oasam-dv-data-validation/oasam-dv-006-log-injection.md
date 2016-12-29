
#OASAM-DV-006: Log Injection

##Description:
An attacker could include certain special characters in a specially manipulated text chain, so when it is used in the creation ofa new entry in the log files, it will result in a free manipulation of the output by the attacker. In the case of Android, the standard information logging functions are the following:

1. Log.v(). In order to store extended information.

2. Log.d(). In order to store debugging information.

3. Log.i(). In order to store basic information.

4. Log.w(). In order to store information about alerts.

5. Log.e(). In order to store error logs.

##Risks:
Log files could be corrupted due to false or invalid input. This could result in unreliable logs and the need of discarding all the logs about actions performed in the system by the users. Attackers could use this situation to hide criminal actions and prevent their actions to be detected and thus preventing their persecution for the committed crimes.

##Recommendations:
Every meta-character used for the application while generating logs must be taken into account. For example, if the application uses the pipe character “|” (without quotation marks) in order to format input, this will be a meta-character. That is, an attacker could include an extra-| and it would be impossible to reconstruct afterwards if that | was entered by the application or the attacker. This is applied for any special character in logs.

##References:
1. Data Validation de “Smartphone apps are not that smart: Insecure Development Practices by Vulnex

2. OWASP Top Ten Mobile Risk number 4: Client Side Injection.
