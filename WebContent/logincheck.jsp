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
String id="";
String name="";
try{
id=request.getParameter("id");
name=request.getParameter("pass");

if(id.equals("admin")&& name.equals("admin")){
	response.sendRedirect("adminhome.jsp?msg=success");	
}
PreparedStatement pstmt= null;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
pstmt= con.prepareStatement("select * from tpo where id = ? and password = ?");
System.out.println("select * from tpo where id= '"+id+"' and password = '"+name+"'");
pstmt.setString(1,id);
pstmt.setString(2,name);
pstmt.execute();
ResultSet rs= pstmt.getResultSet();
System.out.println(rs);
if(rs.next())
{
	session.setAttribute("id",rs.getString(1));
	session.setAttribute("name",rs.getString(2));
	response.sendRedirect("tpohome.jsp?msg= success");
}
%>
<jsp:forward page = "index.html"></jsp:forward>
<%
}
catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>
<!-- Statement atmt=con.createStatement();
ResultSet rs=atmt.executeQuery("select * from tpo where id='"+id+"' and password='"+name+"'");

int count=0;
while(rs.next()){
	System.out.println(id+name);
	session.setAttribute("id", rs.getString(1));
	session.setAttribute("name", rs.getString(2));
response.sendRedirect("tpohome.jsp?msg=success");

}
atmt.close();
con.close();
response.sendRedirect("tpohome.jsp?msg=success");
}catch(Exception e){
	System.out.println(e);
}
%>
 -->