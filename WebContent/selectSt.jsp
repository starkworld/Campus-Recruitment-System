<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      
                   <h1>Selected List For Company</h1>
                     <table border="1">
            <tr><td>Id:</td><td>Name: </td><td>EmailId:</td><td>Phone No</td><td>Year Of Passed</td><td>Strean/Branch</td><td>Aggregate</td><td>Skill</td><td>SENT MAILS </td></tr>
            <%  
            String to=request.getParameter("to");
            try{
            	System.out.print("*********************** inside selectst.jsp");
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
            Statement stmt2=con.createStatement();
            ResultSet rs2=stmt2.executeQuery("select * from placements where cname='"+to+"'");
            while(rs2.next()){
            	int agr=Integer.parseInt(rs2.getString(3));
            Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from student where aggregate >='"+agr+"'");
			while(rs.next()){

            /* if(Integer.parseInt(rs.getString(7)) >= agr){ */
				//out.print("<tr><td>"+rs.getString(1)+" </td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td><a href='sentOneMail.jsp?mail='"+rs.getString(3)+"> Sent Mail</a></tr>");
				%>
				<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getString(3) %></td><td><%=rs.getString(4) %></td><td><%=rs.getString(5) %></td><td><%=rs.getString(6) %></td><td><%=rs.getString(7) %></td><td><%=rs.getString(8) %></td><td><a href="sentOneMail.jsp?mail=<%=rs.getString(3) %>&to=<%=to %>"> Sent Mail</a></tr>
		<%	//  }       
            }
            }
            }catch(Exception e){
            	out.println(e);
            }
            %>
            <tr><td colspan="9" align="center"><a href="sentMailAll.jsp?to=<%=to %>"> Sent All Mail</a> </td></tr>
            </table>
              
</body>
</html>