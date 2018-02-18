<%-- 
    Document   : verifytoken
    Created on : Feb 3, 2018, 12:11:54 PM
    Author     : kazi
--%>

<%@ page language="java" import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String urlToken = request.getParameter("token");
            //out.println("Url Token = "+urlToken);
            
            try {

                   Class.forName("org.postgresql.Driver");

                   Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/rohan", "postgres", "syspass");

                   Statement statement = (Statement) con.createStatement();

                   // check duplicate username
                   ResultSet rs = statement.executeQuery("SELECT * from reg where token='" 
                           + urlToken + "'");

                   while(rs.next()){
                       String dbToken  = rs.getString("token");
                       
                       if (urlToken.equals(rs.getString("token"))) {
                            //out.println("activeted");
                            String verify = "active";
                            PreparedStatement ps = con.prepareStatement("update reg set verify=? where token='"
                               + urlToken + "'");
                            ps.setString(1, verify);
                            ps.executeUpdate();
                            response.sendRedirect("http://localhost:8081/WebRawn/active_success.jsp");
                        }
                       else {
                            out.println("Invalid");
                        }
                   }
                   
                   
                   
            } catch (Exception e) {
                   out.println(e);
            }
            
        %>
    </body>
</html>
