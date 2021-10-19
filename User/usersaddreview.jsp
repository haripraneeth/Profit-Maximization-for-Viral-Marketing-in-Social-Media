<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>usersaddreview</title>
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
.style1 {font-size: 12px}
.style14 {color: #FF00FF}
.style23 {color: #42ac1f}
.style25 {	font-size: 20px;
	font-weight: bold;
}
.style26 {font-size: 25px}
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
	<h3 align="center" class="style12">&nbsp;</h3>
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
        <div class="box">
          <pre class="style25 style26" align="left">Review on Product<span class="style23"> <%=request.getParameter("p_Name")%></span></pre>
          <pre><strong>         <%

    
      	try 
	{
      		
      		String p_Name="",categorie="";
			p_Name = request.getParameter("p_Name");
			
		
		   %></strong></pre>
          <div id="templatemo_right_section">
            <form action="userrecommendation1.jsp?type=<%="recommend"%>" method="post" id="form1">
              <div align="center" class="style1">
                <table width="428" border="0">
                  <tr>
                    <td width="188" height="35"><div align="center" class="style8 style14">Product </div></td>
                    <td width="230"><label>
                      <input type="text" name="p_Name" value="<%=p_Name%>" readonly="readonly" />
                    </label></td>
                  </tr>

                  <tr>
                    <td height="52"><div align="center" class="style8 style14">Enter Your Review</div></td>
                    <td><textarea name="p_rec"></textarea></td>
                  </tr>
                  <!--
	   <tr>
        <td><div align="center" class="style8">Give Rank </div></td>
        <td><label>
          <select name="rank">
          <option>--Select--</option>
          <option><%= "Good"%></option>
		  <option><%= "Very Good"%></option>
		  <option><%= "Awesome"%></option>
           
          </select>
        </label></td>
      </tr>
	  -->
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><label>
                      <input type="submit" name="Submit" value="Submit" />
                    </label></td>
                  </tr>
                </table>
              </div>
            </form>
             
            </p>
            <%

	 
	 
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </p>
            <div class="style4">
              <div align="left"><a href="searchproducts.jsp">Back</a></div>
            </div>
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


