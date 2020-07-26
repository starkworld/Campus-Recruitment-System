<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	String n=session.getAttribute("id").toString();
String t1=request.getParameter("t1");
String t2=request.getParameter("t2");
String t3=request.getParameter("t3");
String t4=request.getParameter("t4");
String t5=request.getParameter("t5");
String t6=request.getParameter("t6");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reimbresment","root","");
PreparedStatement ptmt=con.prepareStatement("insert into expences values(?,?,?,?,?,?,?,?,?)");
ptmt.setString(1, t1);
ptmt.setString(2, t2);
ptmt.setString(3, t3);
ptmt.setString(4, t4);
ptmt.setString(5, t5);
ptmt.setString(6, t6);
ptmt.setString(7, n);
ptmt.setString(8, "No");
ptmt.setString(9, "No");
ptmt.execute();
ptmt.close();
con.close();
response.sendRedirect("Employeeshome.jsp");
}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>