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
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:654px;
	height:343px;
	z-index:1;
	left: 373px;
	top: 110px;
}
-->
</style>
</head>
<body>
	<div id="templatemo_container">
    	<div id="templatemo_content_area">
        	<div id="templaetmo_left">
            	<div id="templatemo_logo_area">
                	<div id="templaetmo_logo">
                    	<h6>College Placement Organiser</h6>
                    </div> 
                    <div id="templaetmo_slogan">
                    
                    </div>
                </div>
                
                <div class="templatemo_menu">
                	<ul>
						<li><a href="index.html" class="current">Home</a></li>
						<li><a href="index.html" target="_parent">Login</a></li>
						<li><a href="view.jsp">View</a></li>	
						<li id="about1" onclick="functions(this)"><a href="#">About</a></li>
						<li id="contact1" onclick="functions(this)"><a href="#">Contact</a></li>
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
                <center>
               <div id="tp" style="display: none;">
                    <h2 align="center">LOGIN PAGE</h2>
                    <form method="get" action="logincheck.jsp">
                        <div class="form_row">	
                        <label>LOGIN ID</label><input class="inputfield" name="id" type="text"/>
                        </div>
                        <div class="form_row"><label>PASSWORD</label><input class="inputfield" name="pass" type="password"/></div>
                       <input class="button" type="submit" name="Submit" value="Submit" />
                       <input class = "button" type = "reset" name = "reset" value ="reset" />
                    </form>
               </div>
               </center>
                    
               <div id="home" style="display: none;">
               
               </div>
               <div id="contact" style="display: none;">
               <br><h1>For further details contact</h1>
               </br>
               <br><b>TPO:</b><p>9440363568</p></br>
               <br><b>Administrator:</b><p>8500243293</p></br>
               <br><b>Head Of the Department:</b><p>9494352936</p></br>
               </div>
               <div id="about" style="display: none;">
               <br><h3>Placement organizer helps for on-campus and off-campus recruitment.</h3></br>
               <br><h3>TPO addds recruitment information and sends mail or SMS to selected students</h3></br>
               <br><h3>students are benefited by prior informtion</h3></br>
               </div>
               <div id="st" style="display: none;">
               
               </div>
			</div><!-- End Of right-->

            <div class="cleaner">
              <div id="Layer1">
			 <center><h2>All Company Details</h2></center> 
			  <%@ page import="java.sql.*" %>
			  <table border="1" style="position: absolute; top: 60px;left: 200px">
			 <%
			 Connection con=null;
			 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select * from placements");
			 int count=0;
			 while(rs.next())
			 {
				 out.println("<tr><td>"+rs.getString(1));
				 out.println("</td><td>"+rs.getString(2));
				 out.println("</td><td>"+rs.getString(3));
				 out.println("</td><td>"+rs.getString(4));
				 out.println("</td><td>"+rs.getString(5));
				 out.println("</td><td>"+rs.getString(6));
				 out.println("</td><td>"+rs.getString(7));
				 out.println("</td><td>"+rs.getString(8)+"</td></tr>");
				 
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
			
			  </table>
			  </div>
            </div>
        </div><!-- End Of Content area -->
    </div><!-- End Of Container -->
</html>