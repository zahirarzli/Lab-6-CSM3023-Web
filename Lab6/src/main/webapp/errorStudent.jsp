<%-- 
    Document   : errorStudent
    Created on : Jun 14, 2024, 11:14:28 PM
    Author     : S67554
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="errorFrm" action="insertStudent.jsp" method="post">
            <h1>Lab 6 - Task 1 - Perform creating and retrieving records via JSP page</h1>
            <p>Error occur when inserting record...!</p>
            <p>Error Message: ${exception.getMessage()}</p>
            <br>
        </form>
    </body>
</html>
