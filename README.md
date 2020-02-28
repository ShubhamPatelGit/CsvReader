# CsvReader

Q: I have a bunch of files in CSV format (with same set of fields) and to aid non-programmers I need to make it easy to access the same. Develop a web UI which has a dropdown to select one file and one or more fields in the file and extract the information?

The technologies used are:
1. Java
2. Servlet
3. JSP
4. Html
5. Bootstrap
6. Spring MVC

Requirements:
1. JDK 8 or above.
2. Apache Tomcat server v8.5 or above.

How to run:
1. This is an Eclipse IDE project.
2. It can be cloned and imported directly into the Eclipse.
3. Add the server.
4. Create some CSV files for students data with 3 fields:
    1. Name
    2. Roll No.
    3. Email Id
5. Provide the path of the folder which has CSV files to the 'path' named variable in 'Student' class in 'com.pojo' package. By default it is: 'D:\\CsvFolder'.
6. Click on the project and select 'Run as' then 'Run on Server', Select the added server and click Finish.
7. After some processing, you will be redirected to the Home page of the project. Here, you can select the CSV files you want to see and the student data fields.
