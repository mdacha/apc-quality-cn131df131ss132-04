<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
String result;

String host = "smtp.gmail.com";
String to = "specterhouseevan@gmail.com";
String from = "evanspecterhouse@gmail.com";
String pass = "essayerhumaine";

Properties properties = System.getProperties();

properties.put("mail.smtp.starttls.enable", "true");
properties.put("mail.smtp.host", host);
properties.put("mail.smtp.user", from);
properties.put("mail.smtp.password", pass);
properties.put("mail.smtp.port", "587");
properties.put("mail.smtp.auth", "true");

//Get the default Session object.
Session mailsession = Session.getDefaultInstance(properties, null);

try {
 MimeMessage message = new MimeMessage(mailsession);

 message.setFrom(new InternetAddress(from));

 message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

 message.setSubject("Election returns REJECTED");

 message.setContent("Sent election returns rejected. Reconsolidate following the provided BEI/BOC guidelines.", "text/html; charset=utf-8");

 Transport transport = mailsession.getTransport("smtps");
 transport.connect(host, from, pass);
 transport.sendMessage(message, message.getAllRecipients());
 result = "Message sent successfully!";
 transport.close();
} catch (MessagingException mex) {
 System.out.println(mex.getLocalizedMessage());
 result = "Error: Unable to send message ... redirecting";
}

/*    try{
      MimeMessage message = new MimeMessage(mailSession);
      message.setFrom(new InternetAddress(from));
      message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
      message.setSubject("This is the Subject Line!");
      message.setText("This is actual message");
      Transport.send(message);
      result = "Sent message successfully....";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   } */
%>
<html>
<head>
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>Sending email..</title>
<META http-equiv="refresh" content="3;URL=http://localhost:8080/AES/pile.jsp">
</head>
<body>
<div class="alert alert-success" style="position: absolute; top: 40%; left: 36%;">
        <strong> <%= result %></strong> You will be redirected to the previous page
      </div>
</body>
</html>