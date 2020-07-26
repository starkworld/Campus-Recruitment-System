<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Greeny Template, Free HTML CSS Layout</title>
<meta name="keywords" content="free design template, download web templates, Crazy Website, XHTML, CSS" />
<meta name="description" content="Crazy - Free CSS Template, Free XHTML CSS Design Layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="fullsize/fullsize.css" media="screen" rel="stylesheet" type="text/css" />

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
						<li><a href="deletest.html">Delete Student </a></li>
						<li><a href="update.jsp">Update Record</a></li>
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

</div>
<br><center>
		<%@ page import="java.sql.*" %>
 			 <% 
// 			 String s1="",s2="",s3="",s4="",s5="",s6="",s8="",s9="",s10="";
// 			 int s7=0;
// 			 Connection con=null;
// 			 try{
// 			 Class.forName("com.mysql.jdbc.Driver");
// 			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
// 			 Statement st=con.createStatement();
// 			 ResultSet rs=st.executeQuery("select * from student");
// 			 int count=0;
// 			 while(rs.next())
// 			 {
// 			 s1=rs.getString(1);
// 			 s2=rs.getString(2);
// 			 s3=rs.getString(3);
// 			 s4=rs.getString(4);
// 			 s5=rs.getString(5);
// 			 s6=rs.getString(6);
// 			 s7=Integer.parseInt(rs.getString(7));
// 			 s8=rs.getString(8);
// 			 s9=rs.getString(9);
// 			  s10=rs.getString(10);			 
			 
// 			 }
			 
// 			 PreparedStatement pstmt=con.prepareStatement("update users set i=?,lname=?,uname=?,password=?,contact=?,address=?,email=? where uid=?");
//         pstmt.setString(1, fname);
//         pstmt.setString(2, lname);
//         pstmt.setString(3, uname);
//         pstmt.setString(4, password);
//         pstmt.setString(5, contact);
//         pstmt.setString(6, address);
//         pstmt.setString(7, email);
//         /* pstmt.setString(8, paymentoption);
//         pstmt.setString(9,phno); */
//         pstmt.setInt(8, uid);
         %>
         <BR><BR><BR><BR><BR><BR>
			 <form name="form1" action="update1.jsp">
			 <table>
			 <tr><td>Student Id</td><td><input type="text" name="t1" value= ""/></td></tr>
			 <tr><td>Name:</td><td><input type="text" name="t2" value= ""/></td></tr>
			 <tr><td>Email Id</td><td><input type="text" name="t3" value= ""/></td></tr>
			 <tr><td>Phone No.:</td><td><input type="text" name="t4" value= ""/></td></tr>
			 <tr><td>Year Pass.:</td><td><input type="text" name="t5" value= ""/></td></tr> 
			 <tr><td>Branch:</td><td><input type="text" name="t6" value= ""/></td></tr>
			 <tr><td>Percentage:</td><td><input type="text" name="t7" value= ""/></td></tr>
			 <tr><td>Skills:</td><td><input type="text" name="t8" value= ""/></td></tr>
			 <tr><td>Gender:</td><td><input type="text" name="t9" value= ""/></td></tr>
			 <tr><td>State Place:</td><td><input type="text" name="t10" value= ""/></td></tr>
			</table>
			<input type="submit" name="submit" value="Update"/>
			 
			 
			 <%
			 
// 			 }
// 			 catch(Exception e)
// 			 {
// 				 System.out.println(e);
// 			 }
			 
			 %>
               
               </center>
                  
                <div id="home" style="display: none;">
                Home
                </div>
                <div id="contact" style="display: none;">
               contact
                </div>
                    <div id="about" style="display: none;">
             about
                </div>
               
                    
			</div><!-- End Of right-->

            <div class="cleaner"></div>
        </div><!-- End Of Content area -->
    </div><!-- End Of Container -->
</html>