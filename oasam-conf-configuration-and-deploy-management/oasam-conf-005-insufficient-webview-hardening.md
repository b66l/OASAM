
#OASAM-CONF-005: Insufficient WebView hardening

##Description:
WebViewis a class of Android that allows displaying online content within the Android Activities. However, when installing WebView on Android Applications, it has to be taken into consideration the fact that a poor configuration of this extension could expose the application user to a multitude of risks.

##Risks:
An insufficient hardening may imply risks to the user, becoming possible targets for attacks through the web.

##Recommendations:
There is a set of practices that must be taken into consideration in order to harden WebView:

1. Disabling browser plugins support; for example, with the following statement:
webview.getSettings().setPluginsEnabled(false);

2. Disabling local file access; for example, with the following statement:
webview.getSettings().setAllowFileAccess(false);

3. Prevent loading contents from third-party sites, checking that WebView can only access those webs that the application needs, using whitelists for such effect when possible.

4. Disabling JavaScript, with the following statement:
webview.getWebSettings().setJavaScriptEnabled(false);

5. Disables content URL access within WebView. Content URL access allows WebView to load content from a content provider installed in the system., with the following statement:
webview.getWebSettings().setsetAllowContentAccess(false);

6. Sets whether JavaScript running in the context of a file scheme URL should be allowed to access content from other file scheme URLs, with the following statement:
webview.getWebSettings().setAllowFileAccessFromFileURLs(false);

7. Sets whether JavaScript running in the context of a file scheme URL should be allowed to access content from any origin, with the following statement:
webview.getWebSettings().setAllowUniversalAccessFromFileURLs(false);


##References:
1. Flaw 28 of “42+ Best practices in secure mobile development for iOS and Android”

2. http://developer.android.com/reference/android/webkit/WebView.html

3. http://developer.android.com/guide/webapps/webview.html

4. http://labs.mwrinfosecurity.com/blog/2012/04/23/adventures-with-android-webviews/

5. DRD02-J. Do not allow WebView to access sensitive local resource through file scheme - https://www.securecoding.cert.org/confluence/display/java/DRD02-J.+Do+not+allow+WebView+to+access+sensitive+local+resource+through+file+scheme

6. DRD13-J. Do not allow JavaScript in Web Apps - https://www.securecoding.cert.org/confluence/display/java/DRD13-J.+Do+not+allow+JavaScript+in+Web+Apps
