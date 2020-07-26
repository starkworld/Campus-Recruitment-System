<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Greeny Template, Free HTML CSS Layout</title>
<meta name="keywords" content="free design template, download web templates, Crazy Website, XHTML, CSS" />
<meta name="description" content="Crazy - Free CSS Template, Free XHTML CSS Design Layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="fullsize/fullsize.css" media="screen" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="fullsize/jquery.js"></script>
<script type="text/javascript" src="Functions.js"></script>
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
						<li id="home1" onclick="functions(this)"><a href="#" class="current">Home</a></li>
						<li id="tp1" onclick="functions(this)"><a href="#">ADD Companies</a></li>
						<li id="st1" onclick="functions(this)"><a href="#">Sent Mails</a></li>	
						<!-- <li id="about1" onclick="functions(this)"><a href="#">About Us</a></li>
						<li id="contact1" onclick="functions(this)"><a href="about.jsp">Contact Us</a></li> -->
						<li id="contact1"><a href="index.html">Logout</a></li>
					</ul>
                </div>
                
                       </div><!-- End Of left -->
            
            <div id="templaetmo_right">
            	<div id="templaetmo_right_top">
                	<h1>Welcome to Training And Placement Officer</h1>
                </div>
                <div id="templaetmo_right_mid">
                
                

                    
                  
                
                    
                    <div class="cleaner"></div>
                    
                    <div class="templatemo_h_line"></div>
                  
                  
                </div><!-- End Of right mid-->
                <br><br><br><br>
                <form action = "placementStore.jsp">
<TABLE ALIGN = "CENTER" id="tp" style="display: none;">

<TR><TD>ONDATE:</TD> <TD><input type="text" name = "t1"></TD></TR>
<TR><TD>COMPANY NAME:</TD><TD><input type="text" name = "t2"></TD></TR>
<TR><TD>ADDRESS:</TD><TD><TEXTAREA ROWS=5 COLS=5 name="t3"></TEXTAREA></TD></TR>
<TR><TD>PERCENTAGE REQUIRED:</TD><TD><input type="text" name = "t4"></TD></TR>
<TR><TD>TECHNOLOGIES REQUIRED:</TD><TD><TEXTAREA ROWS=5 COLS=5 name="t5"></TEXTAREA></TD></TR>
<TR><TD>CONTACT INFO:</TD><TD><input type="text" name = "t6"></TD></TR>
<TR><TD>NO OF VACANCIES:</TD><TD><input type="text" name = "t7"></TD></TR>
<TR><TD><input type = "submit" name = "submit"></TD></TR>
</TABLE> </form>
                    
                    <table id="st" style="display: none;">
                    <tr><td>
                    <form action="#">
                    <select id="placemen" onchange="operation2(this)">
                    <option>select company name</option>
              <%   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
			Statement stmt1=con1.createStatement();
			ResultSet rs1=stmt1.executeQuery("select * from placements");
			while(rs1.next()){
				out.print("<option value="+rs1.getString(2)+" onclick='operation2(this)'>"+rs1.getString(2)+"</option>");
			}            
            %>    
            </select>
            </form>
                    </td></tr>
                    </table>
                    <div id="displayStudent"></div>
               
                <div id="home" style="display: none;">
                
                </div>
                <div id="contact" style="display: none;">
               contact no:
                </div>
                    <div id="about" style="display: none;">
               companies visited are
                </div>
                               
                    
                    
			</div><!-- End Of right-->

            <div class="cleaner"></div>
        </div><!-- End Of Content area -->
    </div><!-- End Of Container -->
</html>