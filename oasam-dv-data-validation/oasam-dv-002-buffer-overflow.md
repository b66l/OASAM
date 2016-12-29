
#OASAM-DV-002: Buffer Overflow

##Description:
Buffer Overflow vulnerabilities are the result of not checking properly the size of certain data before copying it to a particular memory area. In the case of Android, this type of error is easy to commit while using native code if data buffer size is not validated. Although Android incorporates protections such as ASLR and DEP that reduce exploitability, they do not resolve the fundamental problem.

##Risks:
Risks associated to this type of error are considered very serious for copying information on a memory area that was reserved for other tasks and storing other data from the program. When overflow occurs, the results are unpredictable and it provokes an end of the program execution as a general rule, being also possible to cause a denial of service. By exploiting such errors, an attacker could control the execution of the program, being able to get access to the system remotely by an experienced attacker.

##Recommendations:
As a general rule, any operation entailing copying data on a memory area must be carefully performed in order to guarantee that the target memory area has enough memory to contain the data to copy. There exists a set of functions that are more likely to cause errors and they are not recommended.

##References:
1. http://developer.android.com/guide/practices/security.html#DynamicCode
2. https://www.owasp.org/index.php/Buffer_overflow_attack

3. http://developer.android.com/tools/sdk/ndk/index.html

4. OWASP Top Ten Mobile Risk number 4: Client Side Injection
