<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Greeny Template, Free HTML CSS Layout</title>
<meta name="keywords" content="free design template, download web templates, Crazy Website, XHTML, CSS" />
<meta name="description" content="Crazy - Free CSS Template, Free XHTML CSS Design Layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="fullsize/fullsize.css" media="screen" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="fullsize/jquery.js"></script>
<script type="text/javascript" src="fullsize/jquery.fullsize.minified.js"></script>
<script language="javascript" type="text/javascript">
$(function(){
				$("div.templatemo_gallery img").fullsize();
			});
</script>
<script type="text/javascript" src="Functions.js"></script>

</head>
<body>
	<div id="templatemo_container">
    	<div id="templatemo_content_area">
        	<div id="templaetmo_left">
            	<div id="templatemo_logo_area">
                	<div id="templaetmo_logo">
                    	GREENY
                    </div>
                    <div id="templaetmo_slogan">
                    	FREE CSS TEMPLATE
                    </div>
                </div>
                
                <div class="templatemo_menu">
                	<ul>
						<li id="home1" onclick="functions(this)"><a href="adminhome.jsp" class="current">Home</a></li>
						<li id="tp1" onclick="functions(this)"><a href="adminhome.jsp" target="_parent">Register TPO</a></li>
						<li id="st1" onclick="functions(this)"><a href="adminhome.jsp">Register Student</a></li>	
						<li><a href="viewst.jsp">View Student List</a></li>
						<li><a href="delete.html">Delete Student Record</a></li>
						<li id="contact1" onclick="functions(this)"><a href="#">Contact</a></li>
						<li id="contact1"><a href="index.html">Logout</a></li>
					</ul>
                </div>
                
                       </div><!-- End Of left -->
            
            <div id="templaetmo_right">
            	<div id="templaetmo_right_top">
                	<h1>Welcome to College Placement Organiser</h1>
                </div>
                <div id="templaetmo_right_mid">
                
                               
                    <div class="cleaner"></div>
                    
                    <div class="templatemo_h_line"></div>
                  
                </div><!-- End Of right mid-->
                
                
                                    <div id="tp" style="display: none;">
                                <h3 align="center">TPO</h3>   


 <%@ page import="java.sql.*" %>
			 <%
			 String str=request.getParameter("tt");
			 Connection con=null;
			 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
			 Statement st=con.createStatement();
			 int rs=st.executeUpdate("delete from student where id='"+str+"'");
			 Statement st1=con.createStatement();
			 ResultSet rs1=st.executeQuery("select * from student where id='"+str+"'");
			 int count=0;
			 while(rs1.next())
			 {
				 count++;
			 }
			 if(count==0)
			 {%>
			 <jsp:forward page="adminhome.jsp"/> <%
			 out.println("Deleted Record of Student Id:"+str);
			
			}
			 else
			 {
				 %>
				 <jsp:forward page="adminhome.jsp"/>
				 <%
			 out.println("Record not found of Student Id:"+str);
			 }
			 }catch(Exception e)
			 {
				 System.out.println(e);
			 }
			 finally
			 {
				 con.close();
			 }
			 %>
               
      </div>
      </div>
      </div></div></body>        
</html>