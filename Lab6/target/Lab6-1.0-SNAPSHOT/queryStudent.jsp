<%-- 
    Document   : queryStudent
    Created on : Jun 14, 2024, 11:55:02 PM
    Author     : S67554
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 - Task 3</title>
        <style>
            table{
                border-collapse: collapse;
            }
            td, th{
                border: 1px solid #999;
                padding: 0.5rem;
                text-align: left;
            }
            th{
                background: gold;
            }
        </style>
    </head>
    <body>
        <h1>Lab 6 - Task 4 : Retrieving record via JSP Page</h1>
        
        <%
            out.print("<table>");
                out.print("<thead>");
                    out.print("<tr>");
                        out.print("<th>" + "ISBNNo" + "</th>");
                        out.print("<th>" + "Author" + "</th>");
                        out.print("<th>" + "Title" + "</th>");
                    out.print("</tr>");
                out.print("</thead>");
            out.print("<tbody>");
        %>
        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Step 1: MySQL driver loaded...!");
            
            String myURL = "jdbc:mysql://localhost:3306/csm3023";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            System.out.println("Step 2: Database is connected...!");
            
            Statement myStatement = myConnection.createStatement();
            
            String myQuery = "SELECT * FROM student";
            ResultSet myResultSet = myStatement.executeQuery(myQuery);
            
            while(myResultSet.next()){
                out.print("<tr>");
                    out.print("<td width=\"20%\">" +  myResultSet.getString(1) + "</td>");
                    out.print("<td width=\"40%\">" +  myResultSet.getString(2) + "</td>");
                    out.print("<td width=\"40%\">" +  myResultSet.getString(3) + "</td>");
                out.print("</tr>");
            }

                System.out.println("Step 5: Close database connection..!");
                myConnection.close();
                System.out.println(" ");
                System.out.println("Database connection is closed..!");
                
                out.print("</tbody>");
            out.print("</table>");
        %>
    </body>
</html>
