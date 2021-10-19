<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>accountdetails</title>
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
.style3 {font-size: 23px}
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style11 {color: #3366FF;
	font-weight: bold;
}
.style45 {color: #0000FF}
.style23 {color: #42ac1f}
.style30 {color: #FF00FF}
.style35 {font-size: 25px}
.style42 {color: #FFFFFF}
.style43 {font-family: "Courier New", Courier, monospace}
.style9 {color: #FF0000
; font-weight: bold; }
.style46 {color: #333333}
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
		  <li><a href="userslogin.jsp">User</a></li>
          <li><a href="userslogin1.jsp"><span>Social Networks</span></a></li>
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
      <div class="mainbar"><a href="file:///C|/Tomcat 6.0/webapps/Profit Maximization for Viral Marketing in Online Social Networks Algorithms and Analysis/usersmain.jsp"></a>
        <div class="post">
          <h2 class="title"><a href="#"><span class="style45"><span class="style35"><span class="style30">User</span> <span class="style23"><%=(String)application.getAttribute("user")%><span class="style30">'s</span></span> <span class="style30">account</span> </span><span class="style30">..</span></span></a></h2>
          <div class="entry">
            <table width="405" border="2" align="center"  cellpadding="0" cellspacing="0"  >
              <%@ include file="connect.jsp" %>
              <%@ page import="org.bouncycastle.util.encoders.Base64"%>
              <%
						
						String user=(String )application.getAttribute("user");
						
						String i,s1,s2,s3,s4,s5;
						int s6=0;;
						 
						try 
						{
						   	String query="select * from account where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getInt(7);

							
								
								
					%>
              <tr>
                <td  width="176" valign="middle" height="40" style="color: #333333;"><div align="left" class="style14 style7 style15 style9 style4 style46" style="margin-left:20px;"><strong>Account Number </strong></div></td>
                <td  width="221" valign="middle" height="40" style="color:#333333;"><div align="left" class="style10 " style="margin-left:20px;">
                    <%out.println(i);%>
                </div></td>
              </tr>
             <tr>
                <td  width="176" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style4 style46" style="margin-left:20px;"><strong>User Name</strong></div></td>
                <td  width="221" align="left" valign="middle" height="40"><div align="left" class="style10" style="margin-left:20px;">
                    <%out.println(s1);%>
                </div></td>
              </tr>
              <tr>
                <td  width="176" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style4 style46" style="margin-left:20px;"><strong>Address</strong></div></td>
                <td  width="221" align="left" valign="middle" height="40"><div align="left" class="style10" style="margin-left:20px;">
                    <%out.println(s2);%>
                </div></td>
              </tr>
              <tr>
                <td  width="176" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style4 style46" style="margin-left:20px;"><strong>Email</strong></div></td>
                <td  width="221" align="left" valign="middle" height="40"><div align="left" class="style10 " style="margin-left:20px;">
                    <%out.println(s3);%>
                </div></td>
              </tr>
              <tr>
                <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style4 style14 style7 style15 style9 style46" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style10 " style="margin-left:20px;">
                    <%out.println(s4);%>
                </div></td>
              </tr>
              <tr>
                <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style4 style46" style="margin-left:20px;"><strong>Branch</strong></div></td>
                <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style10 " style="margin-left:20px;">
                    <%out.println(s5);%>
                </div></td>
              </tr>
              <tr>
                <td   width="176" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style4 style14 style7 style15 style9 style46" style="margin-left:20px;"><strong>Amount</strong></div></td>
                <td  width="221" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                    <div align="left" class="style10" style="margin-left:20px;">
                      <%out.println(s6);%>
                      Rs/- </div></td>
              </tr>
              <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
            <p><a href="manageaccount.jsp" class="style10">Back</a><a href="usersmain.jsp" class="style11"></a></p>
        </div>
      </div>
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


