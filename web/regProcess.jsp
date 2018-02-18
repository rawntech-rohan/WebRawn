<%-- 
    Document   : regProcess
    Created on : Feb 1, 2018, 1:39:30 PM
    Author     : kazi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ page language="java" import="java.sql.*"%>

<%@page import="java.util.UUID"%>
<%@page import="Db.ConnectionManager" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        

<%

// registration string

    String name = request.getParameter("uname");

    String email = request.getParameter("uemail");

    String pass = request.getParameter("upass");

    String repass = request.getParameter("cpass");

    String dob = request.getParameter("udob");

    String gender = request.getParameter("ugender");

    String phone = request.getParameter("uphone");

    String country = request.getParameter("uloc");
    
    String token = request.getParameter("utoken");

    String role = request.getParameter("urole"); 
     
// database saved statement
    try {

        ConnectionManager dbcon = new ConnectionManager();
        Connection con = dbcon.dbconnect();
        //Statement st = (Statement) con.createStatement();
        //String sql = "SELECT * from reg where name='" + name + "' and email='" + email + "'";
        
        PreparedStatement ck =con.prepareStatement("select * from reg where name=?");
        ck.setString(1,name);
        
        ResultSet rs=ck.executeQuery();
            if(rs.next()){
                out.println("Choose other username");
            }
            else if (pass!=null && repass!=null && !pass.equals(repass)) {
                out.println("password not match");
            }else {
                PreparedStatement ps = con.prepareStatement("insert into reg values(?,?,?,?,?,?,?,?)");

                    ps.setString(1, name);

                    ps.setString(2, email);

                    ps.setString(3, pass);

                    ps.setString(4, dob);

                    ps.setString(5, gender);

                    ps.setString(6, phone);

                    ps.setString(7, country);
                    
                    ps.setString(8, token);

                    ps.executeUpdate();

                    out.println("Welcome To "+name+".");
    %>
                   <%@include file="sendmail.jsp" %>
    <%
            }            
    } catch (Exception e) {
        out.println(e);
    } 

%>

    </body>
</html>
