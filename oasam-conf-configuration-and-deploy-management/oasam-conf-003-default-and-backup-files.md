
#OASAM-CONF-003: Default and backup files

##Description:
At this stage, the attacker looks for renamed older versions of modified files, include files that have been loaded in the programming language in use and can be downloaded as source code or even automated or manual backup files as compressed files.
In the case of Android, these files can be left by mistake in the APK file structure.

##Risks:
All these files could allow an attacker to access to internal operations, backdoors, administrative interfaces or even credentials to connect to the administrative interface or the database server.

##Recommendations:
Before packaging an Android application, it is recommended to ensure that the files belonging to the application are strictly necessary and no file containing unnecessary or confidential information is included.

##References:
1. https://www.owasp.org/index.php/4.3.4_Review_Old,_Backup_and_Unreferenced_Files_for_Sensitive_Information_(OTG-CONFIG-004)
