
#OASAM-DV-007: Intent Injection

##Description:
If user’s input is loaded in a dynamic manner in the Intent data, a malicious user could manipulate such data in order to execute code through it. In particular, the existence of dynamic data must be checked while including such data in an Intent, especially through the following Intent methods:addCategory(), setAction(), setClass(), setClassName(), setComponent(), setData() andsetDataAndType().

##Risks:
This vulnerability puts at risk the normal execution of the application, since if an user is capable to modify data stored within the Intents, the normal performance of the application could be also modified, as well as the interaction between applications by sending Intents.

##Recommendations:
It is recommended to check the user input values, especially those that go to Intent data instantiating the application. For such purpose, it is recommended to inspect user data ending as parameter in any of the following Intent functions: addCategory(), setAction(), setClass(), setClassName(), setComponent(), setData() and setDataAndType().

##References:
1. Flaw 5.2.5 of “A Study of Android Application Security”

2. OWASP Top Ten Mobile Risk number 4: Client Side Injection
