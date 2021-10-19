<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>cspregister</title>
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
.style12 {font-size: 24px}
.style10 {	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #000000;
}
.style8 {
	color: #00a3e0;
	font-size: 24px;
}
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
      <div align="center">
        <p class="style8">Social Registration       </p>
        <p class="style8">&nbsp;</p>
      </div>
      <div class="mainbar">
        <form action="aregins.jsp" method="post" enctype="multipart/form-data" name="s" target="_top" id="s" onsubmit="return valid()"  ons="ons">
          <span class="style14 style20 style5 style12 style13 style10">
          <label for="name"> Name (required)<br />
          </label>
          </span>
          <p class="style14 style5 style12 style13 style10">
            <input id="name" name="userid" class="text" />
          </p>
          <span class="style14 style20 style5 style12 style13 style10">
          <label for="email">Password (required)<br />
          </label>
          </span>
          <p class="style14 style5 style12 style13 style10">
            <input type="password" id="password" name="pass" class="text" />
          </p>
          <span class="style14 style20 style5 style12 style13 style10">
          <label for="email">Email id (required)<br />
          </label>
          </span>
          <p class="style14 style5 style12 style13 style10">
            <input id="email" name="email" class="text" />
          </p>
          <span class="style14 style20 style5 style12 style13 style10">
          <label for="mobile">Mobile Number (required)<br />
          </label>
          </span>
          <p class="style14 style5 style12 style13 style10">
            <input id="mobile" name="mobile" class="text" />
          </p>
          <span class="style14 style5 style12 style13 style10">
          <label for="address">Your Address<br />
          </label>
          </span>
          <p class="style14 style5 style12 style13 style10">
            <textarea name="address" cols="30" id="address"></textarea>
          </p>
          <span class="style14 style20 style5 style12 style13 style10">
          <label for="dob">Date of Birth (required)<br />
          </label>
          </span>
          <p class="style14 style5 style12 style13 style10">
            <input id="dob" name="dob" class="text" />
          </p>
          <span class="style14 style20 style5 style12 style13 style10">
          <label for="gender">Select Gender (required)<br />
          </label>
          </span>
          <p class="style20 style5 style12 style13 style10">
            <select id="s1" name="gender" class="text" style="width:170px">
              <option>-Select-</option>
              <option>Male</option>
              <option>Female</option>
            </select>
          </p>
          <span class="style19 style14 style23 style5 style12 style13 style10">
          <label for="pincode">Enter Pincode (required)<br />
          </label>
          </span>
          <p class="style20 style5 style12 style13 style10">
            <input id="pincode" name="pincode" class="text" />
          </p>
          <span class="style19 style14 style23 style5 style12 style13 style10">
          <label for="location">Enter Location (required)<br />
          </label>
          </span>
          <p class="style20 style5 style12 style13 style10">
            <input id="loc" name="location" class="text" />
          </p>
          <span class="style19 style14 style23 style5 style12 style13 style10">
          <label for="pic">Select Profile Picture (required)</label>
          </span> <span class="style20 style23 style5 style12 style13 style10">
          <label for="pic"><br />
          </label>
          </span>
          <p class="style15">
            <input type="file" id="pic" name="pic" class="text" />
          </p>
          <p class="style15">
            <input name="submit" type="submit" value="REGISTER" />
          </p>
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


