
#OASAM-CRYPT-004: Certificate Pinning

##Description:
If the application exchanges information through SSL and does not trust certificate authorities, there is no reason to use this trustworthiness because they do not provide security to the application communications. Moreover, if any of these certificate authorities is compromised, application users would not be vulnerable.

##Risks:
If a certificate authority is compromised, sending fraudulent certificates could have an impact on the confidentiality of the transmitted information, due to the fact that the application would trust these certificates because they are provided by a known certificate authority.

##Recommendations:
In case of using only SSL for defined services, it is recommended to include certificate pinning techniques. Google Chrome browser already uses them for the Google services and also the official Twitter application.

##References:
1. Flaw 41 of “42+ Best practices in secure mobile development for iOS and Android”

2. http://www.thoughtcrime.org/blog/authenticity-is-broken-in-ssl-but-your-app-ha/

3. An analysis of Android SSL (In)Security, SaschaFahl, Marian Harbach, Thomas Muders, Matthew Smith of distributed Computing & Security Group - Leibniz University of Hannover and Lars Baumgärtner, Bernd Freisleben of department of Math. & Computer Science Philipps University of Marburg
