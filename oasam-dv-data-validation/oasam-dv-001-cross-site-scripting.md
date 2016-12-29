
#OASAM-DV-001: Cross Site Scripting

##Description:
Cross Site Scripting (XSS) vulnerabilities are the result of an improper coding ofdata received from insecure sources before using them on HTML output. In the case of Android, the vulnerability is basically derived from using the “setJavaScriptEnabled()” function from the WebView class. This function allows including Java objects to the WebView JavaScript context, so if the data provided to such function is not sanitized, arbitrary JavaScript code could be executed.

##Risks:
Cross Site Scripting (XSS) vulnerabilities allow an attacker to execute script code (HTML, JavaScript, VBScript) on the user’s browser (in the vulnerable application’s domain). For instance, an attacker could exploit a XSS vulnerability to extract user cookies (in order to impersonate the victim in the vulnerable application afterwards) or request information to users (such as credentials). This vulnerability occurs as a result of using insecure information in a HTML output without coding properly and previously.

##Recommendations:
As a general rule, information received from the user should not be trusted. It is dangerous to use data received directly from the user without coding properly in the response page generation. By default, WebView does not execute JavaScript, so it must be enabled only when it is strictly necessary, controlling the origin of the dynamic charge of the code to execute. However, in order to expressly disable JavaScript execution, it is recommended to enter the following statement:
webview.getSettings().setJavaScriptEnabled(false); In the case of using the “addJavascriptInterface()” function, it is recommended to filter the Java objects provided to WebView through whitelistswhen possible.

##References:
1. XSS of “Smartphone apps are not that smart: Insecure Development Practices by Vulnex”

2. Flaw 28 de “42+ Best practices in secure mobile development for iOS and Android”

3. http://labs.mwrinfosecurity.com/blog/2012/04/23/adventures-with-android-webviews/

4. http://developer.android.com/reference/android/webkit/WebSettings.html#setJavaScriptEnabled(boolean)

5. http://developer.android.com/reference/android/webkit/WebView.html#addJavascriptInterface(java.lang.Object,%20java.lang.String)

6. OWASP Top Ten Mobile Risk number 4: Client Side Injection.
