<%-- 
    Document   : logoutprocess
    Created on : Feb 3, 2018, 3:07:32 PM
    Author     : kazi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
session.invalidate();
request.getSession().invalidate();
//response.sendRedirect("index.jsp");
%>

        <h1><font color="Red">You are Sucessfully logged out...</font></h1>

        <a href="index.jsp">Go-Back To Home Page</a>
    </body>
</html>
