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
						<li><a href="deletest.html">Delete Student Record</a></li>
						<li><a href="update.jsp">Update Record</a></li>
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

</div>
<br><center>
		<%@ page import="java.sql.*" %>
			 <%
			 
			 String s1=request.getParameter("t1");
			  String s2=request.getParameter("t2");
			   String s3=request.getParameter("t3");
			    String s4=request.getParameter("t4");
				 String s5=request.getParameter("t5");
				  String s6=request.getParameter("t6");
				   int s7= Integer.parseInt(request.getParameter("t7"));
				    String s8=request.getParameter("t8");
					 String s9=request.getParameter("t9");
					 String s10=request.getParameter("t10");
			 Connection con=null;
			 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
			 Statement st=con.createStatement();
			 st.executeUpdate("update student set id='"+s1+"',name='"+s2+"',emailid='"+s3+"',phoneno='"+s4+"yop='"+s5+"',sb='"+s6+"',aggregate="+s7+",skills='"+s8+"',gender='"+s9+"',PlaceState='"+s10+"'");
			 
			 
			 }catch(Exception e)
			 {
				 System.out.println(e);
			 }
			
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