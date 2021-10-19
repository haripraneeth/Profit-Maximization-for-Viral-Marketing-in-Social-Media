<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>viewrequest</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {font-size: 14px}
.style16 {font-size: 21px}
.style51 {color: #9900CC}
.style58 {color: #FF00FF}
.style73 {color: #6633FF}
.style77 {color: #0000FF}
.style78 {color: #333333}
.style79 {color: #666666}
.style3 {font-size: 23px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          
          <li><a href="userslogin.jsp"><span>User</span></a></li>
          <li><a href="userslogin.jsp"><span>Social Networks </span></a></li>
          
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html"><span class="style4">Profit Maximization</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="sidebar">
        <div class="gadget">
          <div class="col_allw280 fp_service_box col_last">
            <div class="con_tit_02 style3">
              <p>&nbsp;</p>
              <p>User Menu </p>
            </div>
            <ul>
              <li> <a href="usersmain.jsp"><strong>Home</strong></a> </li>
              <li> <a href="usersprofile.jsp"><strong> My Profile</strong></a></li>
              <li> <a href="searchfriend.jsp"><strong>Search Friends</strong> </a> </li>
              <li> <a href="viewrequest.jsp"><strong>Friend Requests</strong> </a> </li>
              <li> <a href="umyfriends.jsp"><strong>My Friends</strong></a></li>
              <li><a href="ViewFixedRates.jsp"><strong>View Ad Rates</strong></a></li>
              <li><a href="ViewPurchasedRates.jsp"><strong>View Purchased Ad Rates</strong></a></li>
              <li> <a href="searchproducts1.jsp"><strong>Search Products</strong></a></li>
              <li> <a href="addproducts2.jsp"><strong>Add Products</strong></a></li>
              <li><a href="uploadedproducts3.jsp"><strong>My Uploaded Products</strong></a></li>
              <li><a href="viewcart.jsp"><strong>Cart Products</strong></a></li>
              <li><a href="manageaccount.jsp"><strong>Manage Account </strong></a></li>
              <li><a href="purchaselist.jsp"><strong>Purchased Products </strong></a></li>
              <li> <a href="userslogin.jsp"><strong>Log Out</strong></a> </li>
            </ul>
          </div>
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="mainbar">
        <table width="492" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td width="484"><span class="style16"><span class="style73"><span class="style78">Friend Requests To ::</span></span><span class="style51"> <%=application.getAttribute("user")%></span></span></td>
          </tr>
        </table>
        <table width="571" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
          <tr>
            <td  width="109" height="30" align="left" valign="middle" style="color: #2c83b0;"><div align="center" class="style50 style52 style79"><strong>User Name</strong></div></td>
            <td  width="112" height="30" align="center" valign="middle" style="color: #2c83b0;"><div align="center" class="style75 style79"><strong>Mobile</strong></div></td>
            <td  width="112" height="30" align="center" valign="middle" style="color: #2c83b0;"><div align="center" class="style75 style79"><strong>Address</strong></div></td>
            <td  width="121" height="30" align="center" valign="middle" style="color: #2c83b0;"><div align="center" class="style75 style79"><strong>Social Site</strong></div></td>
            <td  width="82" height="30" align="center" valign="middle" style="color: #2c83b0;"><div align="center" class="style75 style79"><strong>Status</strong></div></td>
          </tr>
          <%
					  	String uname = (String)application.getAttribute("user");
						String usite=(String)application.getAttribute("usite");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{					 
								String status="";
								String query1="select * from frequest where requestto='"+uname+"' and tosite='"+usite+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while(rs1.next())
								{
									int j = rs1.getInt(1);
									s1=rs1.getString(2);
									status = rs1.getString(5);
									String fsite = rs1.getString(6);
									
									String query="select * from user where username='"+s1+"' and site='"+fsite+"'"; 
									Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(query);
									if( rs.next()==true )
									{
											s7=rs.getString(2);
											s3=rs.getString(5);
											s4=rs.getString(6);
											s6=rs.getString(10);
										
										
											
						
					%>
          <tr>
            <td  width="109" height="54" align="center" valign="middle" style="color:#000000;"><span class="style65 style77">&nbsp;&nbsp;
                  <%out.println(s1);%>
            </span></td>
            <td  width="112" height="54" align="center" valign="middle"><span class="style65 style77">&nbsp;&nbsp;
                  <%out.println(s3);%>
            </span></td>
            <td height="54" align="center"  valign="middle"><span class="style65 style77">&nbsp;&nbsp;
                  <%out.println(s4);%>
            </span></td>
            <td height="54" align="center"  valign="middle"><span class="style65 style77">&nbsp;&nbsp;
                  <%out.println(s6);%>
            </span></td>
            <%
						if(status.equalsIgnoreCase("waiting"))
						{
								String ss=s6;
						%>
            <td  width="82" valign="middle" height="54" style="color:#000000;"align="center"><a href="updaterequest1.jsp?rid=<%=j%>&amp;si=<%=ss%>" class="style58 style63"><strong>waiting</strong></a></td>
            <%
						}
						else
						{
						%>
            <td  width="17" valign="middle" height="54" style="color:#000000;"align="center"><div align="center"><span class="style12"> <strong>
                <%out.println(status);%>
            </strong>&nbsp;</span></div></td>
            <%
						}
						%>
          </tr>
          <%
						}
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <table width="603" border="0" align="center" cellpadding="2" cellspacing="2">
          <tr>
            <td width="595"><div align="center"><a href="usersmain.jsp" class="style39"><strong>Back</strong></a></div></td>
          </tr>
        </table>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  
    
	
</html>


