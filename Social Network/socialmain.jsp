<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>socialmain</title>
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
.style12 {font-size: 24px}
.style13 {color: #333333}
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
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="socialrentreq.jsp"><img src="images/slide3.jpg" alt="" width="940" height="310" border="0" /> </a> </div>
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
              <p>Social Menu </p>
            </div>
            <ul class="style13">
              <li> <a href="socialmain.jsp"><strong>Home</strong></a></li>
              <li> <a href="allusersandauthorize.jsp"><strong>List All Users And Authorize </strong></a><br />
              </li>
              <li> <a href="allfriendrequest.jsp"><strong>List All Friend Request / Response </strong></a></li>
              <li><a href="fixadamount.jsp"><strong>Fix Ad Amount By Period</strong></a></li>
              <li><a href="uploadedproducts.jsp"><strong>View All Advertised Products</strong></a></li>
              <li><a href="viewadusers.jsp"><strong>View All Ad Users Details </strong></a> </li>
              <li><a href="Viewprofit1.jsp"><strong>View Profit based on Advertisement </strong></a> </li>
              <li><a href="UserProfitChart.jsp"><strong>View profit in Chart based on User </strong></a> </li>
              <li> <a href="userslogin1.jsp"><strong>Log Out</strong></a></li>
            </ul>
          </div>
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="mainbar">
       <form id="form1" name="form1" method="post" action="adminauthentication.jsp">
                          <h3 align="left" class="style12">Welcome To <%=(String)application.getAttribute("site")%>  Social Main :: <%=(String)application.getAttribute("csp")%></h3>
                          <p class="img"><img src="images/sn.jpg" width="582" height="326" /></p>
       </form>
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


