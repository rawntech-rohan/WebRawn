<%-- 
    Document   : index
    Created on : Feb 4, 2018, 7:01:37 PM
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
  if (session == null)
{
   %><jsp:forward page="login.jsp" /><%
}
else
{
  // the user *does* have a valid session.
  // do whatever you need to for logged in users.
 out.println("valid");
       %><jsp:include page="logout.jsp"/><%
}
%>
    </body>
</html>
