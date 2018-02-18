<%-- 
    Document   : sendmail
    Created on : Feb 4, 2018, 4:50:04 PM
    Author     : kazi
--%>

<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>verify your account</h1>
        <%
            
          // email confirmation string

                final String username = "rawntech.rohan@gmail.com";
                final String password = "Rawntech1!";

                String to = request.getParameter("uemail");
                String from = "rawntech.rohan@gmail.com";
                String subject = "Email Confirmation activation";
                String messageText = ("<html><head></head><body><p>Hi "
                        + name
                        + ",<br>your sign up succesfully.you need to active your account.click this link "
                        + "<a href="
                        +"http://localhost:8081/WebRawn/verifytoken.jsp?token="+token
                        + ">here</a></p></body></html>");

                //String token = UUID.randomUUID().toString();
               // String link = "http://localhost:8080/Mail/verifytoken?token="+ token ;




            // email auth
                Properties props = new Properties();
               props.put("mail.smtp.auth", "true");
               props.put("mail.smtp.starttls.enable", "true");
               props.put("mail.smtp.host", "smtp.gmail.com");
               props.put("mail.smtp.port", "587");

            //multipart

                  MimeBodyPart mimeBodyPart=new MimeBodyPart();
                  mimeBodyPart.setContent(messageText,"text/html");
                  MimeMultipart multipart=new MimeMultipart();
                  multipart.addBodyPart(mimeBodyPart);

            
               
            // email session
                Session mailSession = Session.getInstance(props,
                 new javax.mail.Authenticator() {
                       protected PasswordAuthentication getPasswordAuthentication() {
                           return new PasswordAuthentication(username, password);
                       }
                 });
                
                    try {
                        Message message = new MimeMessage(mailSession);
                        message.setFrom(new InternetAddress(from));
                        message.setRecipients(Message.RecipientType.TO,
                                    InternetAddress.parse(to));
                        message.setSubject(subject);
                        message.setText(messageText);
                        message.setContent(multipart);
                        Transport.send(message);
                        out.println("Email sent successfully to "+email);
                    } catch (MessagingException mex) {
                        mex.printStackTrace();
                        out.println("Error: unable to send message....");
                    }

        %>
    </body>
</html>
