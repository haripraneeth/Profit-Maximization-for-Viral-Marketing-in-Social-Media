<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>manageaccount</title>
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
.style11 {color: #3366FF;
	font-weight: bold;
}
.style40 {color: #0000FF}
.style23 {color: #42ac1f}
.style30 {color: #FF00FF}
.style35 {font-size: 25px}
.style40 {color: #00FF00; font-weight: bold; }
.style41 {color: #333333}
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
          <h2 class="title"><a href="#"><span class="style40"><span class="style35"><span class="style30">User</span> <span class="style23"><%=(String)application.getAttribute("user")%><span class="style30">'s</span></span> <span class="style30">account</span> </span><span class="style30">..</span></span></a></h2>
          <div class="entry">
            <table width="206" border="0" align="center" cellpadding="2" cellspacing="2">
              <tr>
                <td width="198"><p><strong><a href="accountdetails.jsp" class="style41">My Account Details </a></strong></p>
                    <p><strong><a href="createaccount.jsp" class="style41">Create  Account </a></strong></p>
                  <p><strong><a href="addmoney.jsp" class="style41">Add Money </a></strong></p></td>
              </tr>
            </table>
            <p><a href="usersmain.jsp" class="style11">Back</a></p>
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


