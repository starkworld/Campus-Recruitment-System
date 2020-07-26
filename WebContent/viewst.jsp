<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Greeny Template, Free HTML CSS Layout</title>
<meta name="keywords" content="free design template, download web templates, Crazy Website, XHTML, CSS" />
<meta name="description" content="Crazy - Free CSS Template, Free XHTML CSS Design Layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="fullsize/fullsize.css" media="screen" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function f1()
{

	var x1=document.forms["form1"]["t1"].value;
	var x2=document.forms["form1"]["t2"].value;
	var x3=document.forms["form1"]["t3"].value;
	var x4=document.forms["form1"]["t4"].value;
	var x5=document.forms["form1"]["t5"].value;
	var atpos=x5.indexOf("@");
	var dotpos=x5.lastIndexOf(".");
	var x6=document.forms["form1"]["t6"].value;
	var x7=document.forms["form1"]["t7"].value;
	var x8=document.forms["form1"]["t8"].value;
	var x9=document.forms["form1"]["t9"].value;
	
	var x10=document.forms["form1"]["t10"].value;
	var x11=document.forms["form1"]["t11"].value;
	
	
	if(x1==null || x1=="")
	{
		alert("enter employee id");
		return false;
	}else if(!isNaN(x2))
		{
		alert("enter characters only");
		return false;
		}
	
	else if(x2==null || x2=="")
	{
		alert("enter full name");
		return false;
	}
	else if(!isNaN(x3))
	{
	alert("enter characters only");
	return false;
	}
	
	else if(x3==null || x3=="")
	{
		alert("enter designation");
		return false;
	}
	else if(isNaN(x4))
	{
	alert("enter numbers only");
	return false;
	}
	else if(x4==null || x4=="")
	{
		alert("enter exprience");
		return false;
	}
	else if(x5==null || x5=="")
	{
		alert("enter email id");
		return false;
	}
	else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x5.length)
	  {
		  alert("Not a valid e-mail address");
		  return false;
		  }
	else if(x6==null || x6=="")
	{
		alert("enter phone number");
		return false;
	}
	else if(x6.length<10)
			{
		alert("phone number should be 10 digit");
		return false;
			}
	else if(x6.length>10)
	{
alert("phone number should be 10 digit");
return false;
	}
	else if(x7==null || x7=="")
	{
		alert("enter date of joining");
		return false;
	}
	else if(x8==null || x8=="")
	{
		alert("enter birth date");
		return false;
	}
		else if(x10==null || x10=="")
	{
		alert("enter password");
		return false;
	}
		else if(x10.length < 6)
			{
			alert("password should have legth more than 6");
			}
	else if(x11!=x10)
	{
		alert("password didn't matched, should enter same password");
		return false;
	}
	
	else
		{
		return true;
		}
	
	}
</script>
<script type="text/javascript">
function f2()
{

	var y1=document.forms["fm"]["t1"].value;
	var y2=document.forms["fm"]["t2"].value;
	var y3=document.forms["fm"]["t3"].value;
	var atpos=y3.indexOf("@");
	var dotpos=y3.lastIndexOf(".");
	var y4=document.forms["fm"]["t4"].value;
	var y5=document.forms["fm"]["t5"].value;
	
	var y6=document.forms["fm"]["t6"].value;
	var y7=document.forms["fm"]["t7"].value;
	var y8=document.forms["fm"]["t8"].value;
	var y9=document.forms["fm"]["t9"].value;
	
	
	
	
	if(y1==null || y1=="")
	{
		alert("enter employee id");
		return false;
	}
	else if(isNaN(y1))
	{
		alert("enter integers only");
		return false;
	}
	
	
	else if(y2==null || y2=="")
	{
		alert("enter full name");
		return false;
	}
	else if(!isNaN(y2))
		
	{
	alert("enter characters only");
	return false;
	}
	
	else if(y3==null || y3=="")
	{
		alert("enter email id");
		return false;
	}
	else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=y3.length)
	  {
		  alert("Not a valid e-mail address");
		  return false;
		  }
	else if(y4==null || y4=="")
	{
		alert("enter phone number");
		return false;
	}
	else if(y4.length<10)
			{
		alert("phone number should be 10 digit");
		return false;
			}
	else if(y4.length>10)
	{
alert("phone number should be 10 digit");
return false;
	}
	else if(y5==null || y5=="")
	{
		alert("enter year of passing");
		return false;
	}
	else if(isNaN(y5))
		{
			alert("enter interger only");
			return false;
		}
	else if(y6==null || y6=="")
	{
		alert("enter stream/branch");
		return false;
	}
	else if(!isNaN(y6))
		{
		alert("enter characters only");
		return false;
		}
		else if(y7==null || y7=="")
	{
		alert("enter percentage");
		return false;
	}
		else if(y8==null || y8=="")
			{
			alert("enter skills");
			return false;
			}
	else
		{
		return true;
		}
	
	}
</script>
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
						<li id="contact1" onclick="functions(this)"><a href="#">Contact</a></li>
 -->						<li id="contact1"><a href="index.html">Logout</a></li>
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
<TABLE ALIGN = "CENTER">

<form name="form1" action = "tpoStore.jsp" onsubmit="return f1()">
<TR><TD>ID:</TD> <TD><input type="text" name = "t1"></TD></TR>
<TR><TD>NAME:</TD><TD><input type="text" name = "t2"></TD></TR>
<TR><TD>DESIGNATION:</TD><TD><input type="text" name = "t3"></TD></TR>
<TR><TD>EXPERIENCE:</TD><TD><input type="text" name = "t4"></TD></TR>
<TR><TD>EMAILID:</TD><TD><input type="text" name = "t5"></TD></TR>
<TR><TD>PHNO:</TD><TD><input type="text" name = "t6"></TD></TR>
<TR><TD>Date Of Joining:</TD><TD><input type="text" name = "t7"></TD></TR>
<TR><TD>Date Of Birth:</TD><TD><input type="text" name = "t8"></TD></TR>
<TR><TD>GENDER</TD><TD><input type="radio" name = "t9" VALUE = "MALE">MALE<input type="radio" name = "t9" VALUE = "FEMALE">FEMALE</TD></TR>
<TR><TD>PASSWORD:</TD><TD><input type="password" name = "t10"><TD></TR>
<TR><TD>CONFORM PASSWORD:</TD><TD><input type="password" name = "t11"><TD></TR>
<TR><TD><input type = "submit" name = "submit"></TD></TR>
</form></TABLE>
</div>


<div id="st" style="display: none;">
<h3 align="center">STUDENT</h3>
<TABLE ALIGN = "CENTER">
<form name="fm" action = "studentStore.jsp"  onsubmit="return f2()">
<TR><TD>ID:</TD> <TD><input type="text" name = "t1"></TD></TR>
<TR><TD>NAME:</TD><TD><input type="text" name = "t2"></TD></TR>
<TR><TD>EMAILID:</TD><TD><input type="text" name = "t3"></TD></TR>
<TR><TD>PHNO:</TD><TD><input type="text" name = "t4"></TD></TR>
<TR><TD>YEAR OF PASSED OUT:</TD><TD><input type="text" name = "t5"></TD></TR>
<TR><TD>STREAM/BRANCH:</TD><TD><input type="text" name = "t6"></TD></TR>
<TR><TD>PERCENTAGE:</TD><TD><input type="text" name = "t7"></TD></TR>
<TR><TD>SKILLS:</TD><TD><TEXTAREA ROWS=5 COLS=5 name="t8"></TEXTAREA></TD></TR>
<TR><TD>GENDER</TD><TD><input type="radio" name = "t9" VALUE = "MALE">MALE</TD>
<TD><input type="radio" name = "t9" VALUE = "FEMALE">FEMALE<TD></TR>
<TR><TD><input type = "submit" name = "submit"></TD></TR>
</form></TABLE>
</div>
<br><center>
 <%@ page import="java.sql.*" %>
  <form>
			 <table border="1">
			 <tr><td>Student Id:</td><td>Student Name:</td><td>Email Id:</td><td>Phone No.:</td><td>Year Of Pass.:</td>
			 <td>Branch:</td><td>Percentage:</td><td>Skills:</td><td>Gender:</td><td>Place State:</td></tr>
			 <%
			 Connection con=null;
			 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select * from student");
			 int count=0;
			 while(rs.next())
			 {
			 count=count+1;
			 %>
			
			 <tr><td><%out.println(rs.getString(1));%></td><td><%out.println(rs.getString(2));%></td>
			     <td><%out.println(rs.getString(3));%></td><td><%out.println(rs.getString(4));%></td>
			    <td><%out.println(rs.getString(5));%></td><td><%out.println(rs.getString(6));%></td>
			       <td><%out.println(rs.getString(7));%></td>
			        <td><%out.println(rs.getString(8));%></td>
			        <td><%out.println(rs.getString(9));%></td>
			         <td><%out.println(rs.getString(10));%></td></tr>	 
			 
			 
			<%
				 
			 }
			 %>
			 <br/><br/>
			 <%
			 out.println("Total Students Are: "+count);
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
			 
			 </form>
			 
			   
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