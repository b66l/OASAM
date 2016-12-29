
#OASAM-CRYPT-003: Insecure use of Transport Protocol

##Description:
Information communications through HTTP channels can be easily intercepted. In the case of using HTTPS, an attacker could use SSLStrip techniques to access to such information, making necessary the use of additional mechanisms like forcing, from the client side, to enable sending information only through a secure HTTPS channel.

##Risk:
A malicious user could perform attacks on the cryptography in use. In the case of using HTTPS, there exist various types of attacks; the most known is SSLStrip. If the attacker is successful, information that was supposed to be sent encrypted could be accessed.

##Recommendations:
It is recommended to use HTTPS instead of HTTP when possible. Furthermore, it is recommended to use mechanisms from the client side that forces sending information through a secure channel; for instance, redirecting to a secure channel if an attempt of sending information through an unencrypted channel is detected. In addition, it is recommended to assess the need for using HTTP Strict Transport Security headers on webservers; with such headers, the browser would force the use of encrypted channels in communications.
 

##References:
1. Flaw 40 de “42+ Best practices in secure mobile development for iOS and Android”

2. SSLStrip, http://www.securitytube.net/video/193

3. Strict Transport Security header, https://www.owasp.org/index.php/HTTP_Strict_Transport_Security
