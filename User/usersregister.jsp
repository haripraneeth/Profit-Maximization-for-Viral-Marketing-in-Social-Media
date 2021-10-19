<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>usersregister</title>
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
.style14 {color: #FF00FF}
.style28 {font-size: 25px;
	color: #6633FF;
}
.style30 {	color: #FF0099;
	font-weight: bold;
}
.style39 {font-size: 25px; color: #666666; }
.style43 {color: #666666; font-weight: bold; font-size: 14px; }
.style44 {
	color: #666666;
	font-size: 14px;
}
.style46 {color: #666666; font-weight: bold; font-size: 16px; }
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
        <form id="form1" name="form1" method="post" action="userregisterauthentication.jsp" enctype="multipart/form-data">
          <h3>&nbsp;</h3>
          <h3>
            <table width="516" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="508"><div align="left" class="style39">Welcome To User Registration..</div></td>
              </tr>
            </table>
          </h3>
          <h3>
            <label for="name"><span class="style43">User Name (required)</span></label>
            <p class="style30">
              <input id="name" name="uname" class="text" />
            </p>
            <span class="style43">
            <label for="password">Password (required)</label>
            </span>
            <p class="style30">
              <input type="password" id="password" name="pass" class="text" />
            </p>
            <span class="style30">
            <label for="email"><span class="style44">Email Address (required)</span></label>
            </span>
            <p class="style30">
              <input id="email" name="email" class="text" />
            </p>
            <span class="style30">
            <label for="mobile"><span class="style44">Mobile Number (required)</span></label>
            </span>
            <p class="style30">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style43">
            <label for="address">Your Address</label>
            </span>
            <p class="style30">
              <textarea id="address" name="addr" rows="3" cols="50"></textarea>
            </p>
            <span class="style30">
            <label for="dob"><span class="style44">Date of Birth (required)</span><br />
            </label>
            </span>
            <p class="style30">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style30">
            <label for="gender"><span class="style44">Select Gender (required)</span></label>
            </span></h3>
          <h3><p class="style30">
            <select id="s1" name="gender" style="width:480px;" class="text">
              <option>--Select--</option>
              <option>MALE</option>
              <option>FEMALE</option>
            </select>
            </p>
            <span class="style30">
            <label for="pincode"></label>
            </span><span class="style30">
            <label for="location"></label>
            </span>
            <p class="style30">
              <label for="pic"><span class="style44">Select Profile Picture (required)</span></label>
              <input type="file" id="pic" name="image" class="text" />
            </p>
            <p class="style30"><span class="style44">Select Social Site (required)</span>
              <label>
                <select name="site">
                  <option>Select</option>
                  <option>Facebook</option>
                  <option>Twitter</option>
                  <option>LinkedIn</option>
                </select>
              </label>
              <br />
              <input name="submit" type="submit" value="REGISTER" />
            </p>
            <table width="516" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="508"><div align="left" class="style28">
                  <div align="right"><a href="index.html" class="style46">Back</a></div>
                </div></td>
              </tr>
            </table>
          </h3>
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



