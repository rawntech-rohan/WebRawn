<%-- 
    Document   : readfile
    Created on : Feb 3, 2018, 4:20:05 PM
    Author     : kazi
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page language="java" import="java.util.*" %> 
<%
FileInputStream fis = new FileInputStream("E:/Rohan/WebRawn/web/WEB-INF/Openbravo.properties");
Properties prop = new Properties();


try {
   prop.load(fis);
} 
catch (IOException e) {
    e.printStackTrace();
}

String duser = prop.getProperty("bbdd.user");
String dsid = prop.getProperty("bbdd.sid");
%>
<%=duser%>
<br>
<%=dsid%>
    </body>
</html>
