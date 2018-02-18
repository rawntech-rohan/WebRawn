<%-- 
    Document   : query
    Created on : Feb 4, 2018, 9:46:46 AM
    Author     : kazi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Db.ConnectionManager" %>
<%

ConnectionManager dbcon = new ConnectionManager();
Connection con = dbcon.dbconnect();
Statement statement = (Statement) con.createStatement();
    
    String sql = "SELECT * from reg";
    ResultSet rs = statement.executeQuery(sql);


  //pstmt = conn.prepareStatement("Select * from reg");
    
  //ResultSet rs=pstmt.executeQuery();
  
while(rs.next())
       {
           out.println(rs.getString("name"));        
       }

%>
 