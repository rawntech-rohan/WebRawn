<%-- 
    Document   : index
    Created on : Feb 1, 2018, 12:56:38 PM
    Author     : kazi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center> <h1>WELCOME TO RAWN</h1></center>
         <form method="post" action="loginProcess.jsp">

            <center>

                <b style="color:blue">Login Here</b><br>

                <table border="1" width="2" bgcolor="khaki" style="color:red">

                    <tr><td><b>UserName</b></td> <td><input type="text" name="uname"></td></tr>

                    <tr><td><b>Password</b></td> <td><INPUT type="password" name="upass"></td></tr>

                    <tr><td><input type="submit" value="Login"></td>

                        <td><input type="reset" value="Reset"></td>
                        <a href="signup.jsp">Sign Up Here</a>

                </table>

        </form>
    </body>
</html>
