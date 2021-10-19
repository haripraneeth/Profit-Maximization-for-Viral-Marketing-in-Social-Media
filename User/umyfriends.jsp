<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home Page</title>
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
.style46 {	font-size: 14px;
	font-weight: bold;
}
.style43 {
	color: #006600;
	font-size: 24px;
}
.style44 {color: #FF00FF}
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
      <div class="mainbar">
       
          <div class="col_allw280 fp_service_box">
<div align="center">
  <p class="style43">User<span class="style44"> <%=(String)application.getAttribute("user")%></span>'s Friends !!</p>
</div>
            <table width="542" border="2" align="center"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td height="39" align="center"  valign="middle"><div align="center" class="style46">Similar Site </div></td>
                <td height="39" align="center"  valign="middle"><label></label>
                    <form id="form1" name="form1" method="post" action="FriendsInSameSite.jsp">
                      <label>
                      <input type="submit" name="Submit" value="View Friends" />
                      </label>
                  </form></td>
              </tr>
             
     
            <div align="center" class="style46">
              <div align="justify">
                <div align="right">
                  <p align="right"><a href="usersmain.jsp"><strong>Back</strong></a></p>
                </div>
              </div>
            </div>
            
		  
	
</html>


