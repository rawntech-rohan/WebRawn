<%-- 
    Document   : loginProcess
    Created on : Feb 1, 2018, 2:25:25 PM
    Author     : kazi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       

<%

    String name = request.getParameter("uname");

    String pass = request.getParameter("upass");

    try {

        Class.forName("org.postgresql.Driver");

        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/rohan", "postgres", "syspass");

        PreparedStatement ps = con.prepareStatement("select * from reg where name=? and pass=? and verify='active'");

        ps.setString(1, name);

        ps.setString(2, pass);

        ResultSet rs = ps.executeQuery();

        int x = 0;

        while (rs.next()) {

            if (rs.getString(1).equals(name) && rs.getString(3).equals(pass)) {

                x = 1;

            } else {

                x = 2;

            }

        }

        if (x == 1) {

 

%>

<jsp:include page="logout.jsp"/>

<%                HttpSession s = request.getSession();

//response.sendRedirect("./dashboard");

    out.println("<center><h1>Welcome: " + name + "</h1>");

    out.println("<br/><b>You are successfully login........ ");

} else {

    out.println("<center>" + "<b>Either You Enter Wrong UserName or Password</b>");

%>

<jsp:include page="login.jsp"/>

<%}

 

    } catch (Exception ex) {

        out.println(ex);

    } 

%>
    </body>
</html>
