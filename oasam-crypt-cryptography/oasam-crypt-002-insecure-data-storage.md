
#OASAM-CRYPT-002: Insecure Data Storage

##Description:
Encryption is not enough to guarantee information confidentiality. It is necessary to use encryption functions properly, using more robust algorithms and the biggest key lengths as possible. For instance, using AES as an encryption algorithm is possible on Android, but it is recommended to use a 256-bit key instead of 128 bits.

##Risks:
A malicious user could perform attacks on the cryptography in use. Note that a user with administrator privileges could consult the memory of the device processes, being able to have access to all the unencrypted information.

##Recommendations:
It is recommended to use AES with 256-bit keys. In addition, it is recommended to generate IV vectors through SecureRandom and the key should derive from a password using protocols known as PBKDF2 (Password-Based Key Derivation Function).

##References:
1. Flaw 32 of “42+ Best practices in secure mobile development for iOS and Android”

2. Flaw 6.5.2 of “A Study of Android Application Security”

3. OWASP Top Ten Mobile Risk No. 1: Insecure Data Storage

4. RFC 6070, http://tools.ietf.org/html/rfc6070

5. DRD17-J. Do not use the Android cryptographic security provider encryption default for AES - https://www.securecoding.cert.org/confluence/display/java/DRD17-J.+Do+not+use+the+Android+cryptographic+security+provider+encryption+default+for+AES

6. DRD18-J. Do not use the default behavior in a cryptographic library if it does not use recommended practices - https://www.securecoding.cert.org/confluence/display/java/DRD18-J.+Do+not+use+the+default+behavior+in+a+cryptographic+library+if+it+does+not+use+recommended+practices
