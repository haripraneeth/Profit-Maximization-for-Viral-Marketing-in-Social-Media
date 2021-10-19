<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*" %>
            <%@ page import="java.util.*" %>
            <%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>createaccount</title>
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
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style30 {color: #FF00FF}
.style35 {font-size: 25px}
.style12 {color: #0000FF}
.style42 {color: #00FF00}
.style43 {color: #00FF00; font-weight: bold; }
.style45 {color: #0066FF}
.style9 {color: #FF0000; font-weight: bold; }
.style88 {color: #333333; font-weight: bold; }
.style89 {color: #333333}
.style91 {color: #666666; font-weight: bold; }
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
      <div class="mainbar">
        <div class="post">
          <h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">User Bank Acccount Registration ..</span></span></span></a></h2>
          <div class="entry">
		  <%
		  
		  String user=(String)application.getAttribute("user");
		  
		  String s1,s2,s3,s4;
		  
		  
		  try
		  {
		  
		  
		     String Query="select * from user where username='"+user+"' ";
			 Statement st=connection.createStatement();
			 ResultSet rs=st.executeQuery(Query);
			 if(rs.next())
			 {
			 
			 		s1=rs.getString(4);
					s2=rs.getString(5);
					s3=rs.getString(6);
					
					
					
			 %>
		  
            <form action="baccauthentication.jsp" method="post" id="" enctype="multipart/form-data">
              <label for="name"><span class="style88">Account Number(required)</span></label>
              <p class="style43">
                <input id="name" name="accno" class="text" />
              </p>
              <span class="style43">
              <label for="password"><span class="style89">Branch (required)</span></label>
              </span>
              <p class="style43">
                <input type="text" id="branch" name="branch" class="text" />
              </p>
              <span class="style91">
              <label for="email"><span class="style89">Email Address (required)</span></label>
              </span>
              <p class="style43">
                <input id="email" name="email" value="<%=s1%>" readonly />
              </p>
              <span class="style43">
              <label for="mobile"><span class="style89">Mobile Number (required)</span></label>
              </span>
              <p class="style43">
                <input id="mobile" name="mobile" value="<%=s2%>" readonly />
              </p>
             <span class="style43">
              <label for="address"><span class="style89">Address (required)</span></label>
              </span>
              <p class="style43">
                <input id="address" name="address" value="<%=s3%>" readonly />
              </p>
              <p class="style9"> <span class="style42">
                <label for="amount"><span class="style89">Amount (required)</span></label>
              </span> </p>
              <p class="style9">
                <input id="amount" name="amount" class="text" />
              </p>
              <p align="center" class="style9"><br />
                  <input name="submit" type="submit" value="Create Account" />
              </p>
            </form>
			<%
			}
			connection.close();
			}
			
			catch(Exception e)
			{
			out.println(e.getMessage());
			}
			%>
            <p><span class="style45"><a href="usersmain.jsp" class="style11">Back</a></span></p>
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


