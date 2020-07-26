 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@page import="java.util.Properties" %>
<%@page import="javax.mail.*"%>    
<%@page import="javax.mail.internet.*"%> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

try{
	System.out.println("in try");
String to=request.getParameter("to");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
Statement stmt2=con.createStatement();
ResultSet rs2=stmt2.executeQuery("select * from placements where cname='"+to+"'");
while(rs2.next()){
	int agr=Integer.parseInt(rs2.getString(3));
    Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from student where aggregate >='"+agr+"'");
	while(rs.next()){
System.out.println("hiiiiiiii");
//if(rs.getString(7).equals(agr)){
String email=rs.getString(3);
try{
	String SMTP_HOST_NAME = "smtp.gmail.com";
	String SMTP_PORT = "465";
	String emailMsgTxt = "Test Message Contents";
	 String emailSubjectTxt = "A test from gmail";
	 String emailFromAddress = "sravan.coign@gmail.com"; 
	 String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
	 
	// String   to=email;
	 boolean debug = true;
	 Properties props = new Properties();
	 props.put("mail.smtp.host", SMTP_HOST_NAME);
	 props.put("mail.smtp.auth", "true");
	 props.put("mail.debug", "true");
	 props.put("mail.smtp.port", SMTP_PORT);
	 props.put("mail.smtp.socketFactory.port", SMTP_PORT);
	 props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
	 props.put("mail.smtp.socketFactory.fallback", "false");

	 javax.mail.Session session1 = javax.mail.Session.getInstance(props,new javax.mail.Authenticator() {

	 protected PasswordAuthentication getPasswordAuthentication() {
	 return new PasswordAuthentication("sravan.coign@gmail.com", "sravan1990");
	 }
	 });

	 session1.setDebug(debug);

	 Message msg = new MimeMessage(session1);
	 InternetAddress addressFrom = new InternetAddress(emailFromAddress); 
	 msg.setFrom(addressFrom);

	 InternetAddress addressTo =new InternetAddress(email);
	 msg.setRecipient(Message.RecipientType.TO, addressTo);

	 // Setting the Subject and Content Type
	 msg.setSubject("message From Service Provider");
	 msg.setContent("Congratulations! you have been selected for the company On Date"+rs2.getString(1)+"\n Company name "+rs2.getString(2)+"\n Percentage Required "+rs2.getString(3)+"\n Technologies Required "+rs2.getString(4)+"\n Contact No "+rs2.getString(5)+"\n No  Of Vecencies "+rs2.getString(6)+"\n Address "+rs2.getString(7) , "text/plain");
	 Transport.send(msg);
	 System.out.println("Message Send.....");

}catch(Exception e){
	System.out.print(e);
//}
PreparedStatement ptmt=con.prepareStatement("update student set PlaceState=CONCAT(PlaceState, '::g') where emailid='"+email+"'");
ptmt.executeUpdate();
ptmt.close();
response.sendRedirect("tpohome.jsp");
}            
}
}

}catch(Exception e){
	out.println(e);
}


%>
</body>
</html>