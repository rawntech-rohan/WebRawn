<%-- 
    Document   : signup
    Created on : Feb 1, 2018, 1:36:33 PM
    Author     : kazi
--%>

<%@page import="java.util.UUID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
            function validateForm(event)
            {
                event.preventDefault(); // this will prevent the submit event.
                if(document.regis.uname.value=="")
                {
                  alert("User Name can not be left blank");
                  document.regis.uname.focus();
                  return false;
                }
                else if(document.regis.upass.value=="")
                {
                  alert("Password can not be left blank");
                  document.regis.upass.focus();
                  return false;
                }
                else {
                    document.regis.submit();// fire submit event
                }
            }
        </script>  
    </head>
    <body>
        <form action="regProcess.jsp" name="regis">
            <center>
                <h1>Welcome User Please fill the detail below</h1>
                <h3>already sign up <a href="index.jsp"> click here </a></h3>
                <table border="2" bgcolor="grey" style="color:blue">
                    <tr>
                        <td>
                           <b>User Name:</b>
                        </td>
                        <td>
                            <input type="text" name="uname" required>
                        </td>
                    </tr>
                    
                        
                            <input type="hidden" name="utoken" value="<%=UUID.randomUUID().toString()%>"  >
                        
                   

                    <tr>

                        <td>

                            <b>Email-ID:</b>

                        </td>

                        <td>

                            <input type="email" name="uemail" required>

                        </td>

                    </tr>

                    <tr>

                        <td>

                            <b>Create Password:</b>

                        </td>

                        <td>

                            <input type="password" name="upass" required>

                        </td>

                    </tr>

                    <tr>

                        <td>

                            <b>Confirm Password:</b>

                        </td>

                        <td>

                            <input type="password" name="cpass" required>

                        </td>

                    </tr>

                    <tr>

                        <td>

                            <b>D.O.B</b>

                        </td>

                        <td>

                            <input type="text" name="udob">

                        </td>

                    </tr>

                    <tr>

                        <td>

                            <b>Gender:</b>                       

                        </td>

                        <td>

 

                        </td></tr>

                    <tr>  

                        <td>

                            <input type="radio" name="ugender" value="Male">Male

                        </td>

                        <td>

                            <input type="radio" name="ugender" value="Female">Female

                        </td>

                    </tr>

                    <tr>

                        <td>

                            <b>Phone No:</b>

                        </td>

                        <td>

                            <input type="text" name="uphone">

                        </td>

                    </tr>

                    <tr>

                        <td>

                            <b>Country:</b>

                        </td>

                        <td>

                            <input type="text" name="uloc">

                        </td>

                    </tr>   

                    <tr>
                        <td>
                            <input type="submit" value="SignUp">
                        </td>
                        <td>
                            <input type="reset" value="Reset">
                        </td>
                    </tr>
                </table>
        </form>

    </body>
</html>
