
#OASAM-CONF-001: Unrestricted debugging

##Description:
It is usual to enable debugging mode while developing an application in order to extract information about its operation. However, this mode must be disabled while developing applications.


##Risks:
The application on debugging mode provides information that an attacker could use to perform attacks on such application.
Recommendations:
It is recommended to set the debug option to false or remove it in the AndroidManifest.xml file, due to the fact that an application disables debugging mode by default.

##References:
1. Debug Code Enabled of “Smartphone apps are not that smart: Insecure Development Practices by Vulnex”

2. http://developer.android.com/guide/topics/manifest/application-element.html

3. DRD10-J. Do not release apps that are debuggable - https://www.securecoding.cert.org/confluence/display/java/DRD10-J.+Do+not+release+apps+that+are+debuggable
