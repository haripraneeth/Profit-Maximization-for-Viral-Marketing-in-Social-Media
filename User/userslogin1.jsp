<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>userslogin1</title>
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
.style5 {	color: #666666;
	font-size: 24px;
}
.style35 {color: #FF00FF;
	font-weight: bold;
}
.style31 {color: #0000FF}
.style32 {color: #006600; font-weight: bold; }
.style34 {color: #666666;
	font-weight: bold;
}
.style36 {color: #000000}
.style37 {color: #333333}
.style38 {color: #666666}
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
          <li><a href="userslogin.jsp"><span>Social Networks</span></a></li>
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
        <form id="form1" name="form1" method="post" action="cspauthentication.jsp">
          <h3>&nbsp;</h3>
          <h3><span class="style5">Welcome To Social Login</span></h3>
          <table width="464" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>
              <td height="40" align="center" valign="middle"><label for="email"><span class="style34">Select Your Social Site (required)</span></label></td>
              <td><label>
                <select name="site">
                  <option>Select</option>
                  <option>Facebook</option>
                  <option>Twitter</option>
                  <option>LinkedIn</option>
                </select>
                </label>
                  </p>
              </td>
            </tr>
            <tr>
              <td width="270" height="46" align="center" valign="middle"><span class="style36">
              <span class="style37">
              <span class="style38">
              <label for="label"><strong>Name (required)</strong></label>
              <label for="name"></label>
              </span></span></span>
                <span class="style38">
                <label for="name"></label>
                </span>
                <span class="style38">
                <label for="name"></label>
                </span>
              <label for="name"></label></td>
              <td width="180"><input id="name" name="userid" class="text" /></td>
            </tr>
            <tr>
              <td height="40" align="center" valign="middle"><span class="style36"> <span class="style38">
                <label for="email"><strong>Password (required)</strong></label>
              </span> </span></td>
              <td><input type="password" id="pass" name="pass" class="text" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Submit" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><div align="right"><a href="index.html" class="style32"><strong>Back</strong></a></div></td>
            </tr>
          </table>
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


