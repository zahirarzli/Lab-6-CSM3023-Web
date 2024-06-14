<%-- 
    Document   : insertAuthor
    Created on : Jun 4, 2024, 1:57:52 AM
    Author     : S67554
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 - Task 2</title>
    </head>
    <body>
        <h1>Lab 6 - Task 2 - Perform creating and retrieving records via JSP page</h1>
        <fieldset>
            <legend>Author Registration</legend>
            <form action="processAuthor.jsp" method="post">
                <table>
                    <tr>
                        <td>
                            <label for="authno">Author No</label>
                        </td>
                        <td>
                            <input type="text" id="authno" name="authno" placeholder="E.g. UKxxxxxx">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="name">Name</label>
                        </td>
                        <td>
                            <input type="text" id="name" name="name" placeholder="Enter your name">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="address">Address</label>
                        </td>
                        <td>
                            <input type="text" id="address" name="address" placeholder=" Enter your address">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="city">City</label>
                        </td>
                        <td>
                            <input type="text" id="city" name="city" placeholder="Enter your city">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="state">State</label>
                        </td>
                        <td>
                            <input type="text" id="state" name="state" placeholder="Enter your state">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="zip">Zip</label>
                        </td>
                        <td>
                            <input type="text" id="zip" name="zip" placeholder="Enter your zip">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="submit" value="Submit">Submit</button>
                            <button type="reset" value="Reset">Cancel</button>
                        </td>
                    </tr>
                </table>
            </form>
        </fieldset>
        <footer><p>&copy;2024-HUSNA ZAHIRA</p></footer>
</html>

