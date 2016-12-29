
#OASAM-DV-003: SQL Injection

##Description:
SQL injection vulnerabilities may occur when information coming from insecure containers is used for building dynamic SQL queries without implementing relevant controls and/or filters for such information. Insecure containers are any data source out from the source code, such as data provided by the user, uncontrolled databases, web services, etc. Android uses SQLite for storing data. An example of vulnerable codeis shownbelow:


> String con = "DELETE FROM case_values WHERE _id = " + paramString;

> localSQLiteDatabase.execSQL(con);

##Risks:
SQL injection vulnerabilities could allow an attacker to use special characters on SQL language in order to alter a statement that is built with external information in a dynamic manner. As a result, it could be possible to obtain arbitrary information from the database, alter this information and alter the workflow of the affected application.

##Recommendations:
It is recommended to validate every field through whitelists. Thus, only non-dangerous characters will be accepted. It is important to normalize input in order to prevent evasions through parameter codifications. If possible, it is recommended to use prepared statements, since it is the current safest option to build SQL statements with external parameters.

##References:
1. Dynamic SQL of “Smartphone apps are not that smart: Insecure Development Practices by Vulnex

2. OWASP Top Ten Mobile Risk number 4: Client Side Injection.
