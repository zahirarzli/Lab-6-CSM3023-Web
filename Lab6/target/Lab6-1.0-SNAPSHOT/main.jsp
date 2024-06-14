<%-- 
    Document   : main
    Created on : Jun 15, 2024, 2:29:35 AM
    Author     : S67554
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Lab6.com.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Department of Quality UMT</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }
            h1, h2 {
                font-weight: bold;
                
            }
            a {
                color: blue;
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <%
            // Retrieve the user object from the session
            User user = (User) session.getAttribute("user");

            // Check if user is null, if so redirect to login page
            if (user == null) {
                response.sendRedirect("login.jsp?error=Please+login+first");
                return;
            }
        %>
        
        <h1>Welcome, <%= user.getFirstname() %> <%= user.getLastname() %></h1>
        <p>Your username is: <%= user.getUsername() %></p>
        <p><a href="logout.jsp">Logout</a></p>
        
        <footer>
            <p>&copy; Quality UMT - 2024</p>
        </footer>
    </body>
</html>