<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
String t1=request.getParameter("t1");
String t2=request.getParameter("t2");
String t3=request.getParameter("t3");
String t4=request.getParameter("t4");
String t5=request.getParameter("t5");
String t6=request.getParameter("t6");
int t7=Integer.parseInt(request.getParameter("t7"));
String t8=request.getParameter("t8");
String t9=request.getParameter("t9");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
Statement atmt=con.createStatement();
ResultSet rs=atmt.executeQuery("select * from Student where id='"+t1+"'");
int count=0;
while(rs.next()){
	count=count+1;
}
if(count==0){

PreparedStatement ptmt=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?)");
ptmt.setString(1, t1);
ptmt.setString(2, t2);
ptmt.setString(3, t3);
ptmt.setString(4, t4);
ptmt.setString(5, t5);
ptmt.setString(6, t6);
ptmt.setInt(7, t7);
ptmt.setString(8, t8);
ptmt.setString(9, t9);
ptmt.setString(10, "no");
ptmt.execute();
ptmt.close();
}else{
	out.print("<a href='adminhome.html'>Click here </a>To Go Back");
}

con.close();
response.sendRedirect("adminhome.jsp?msg=success");
}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>