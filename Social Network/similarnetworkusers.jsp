<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>adminmain1</title>
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
.style16 {
	color: #666666;
	font-weight: bold;
}
.style24 {font-size: 16px}
.style25 {color: #666666; font-weight: bold; font-size: 16px; }
.style26 {font-size: 24px}
.style31 {color: #FF00FF;
	font-size: 24px;
}
.style39 {color: #9900FF;
	font-weight: bold;
	font-size: 14px;
}
.style5 {color: #666666;
	font-size: 24px;
}
.style55 {color: #FF0000}
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
          <li><a href="adminlogin.jsp"><span>Admin</span></a></li>

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
      <div align="left">
        <div class="sidebar">
          <div class="gadget">
            <div class="col_allw280 fp_service_box col_last">
              <div class="con_tit_02 style3">
                <p align="left">&nbsp;</p>
                <p align="left">Admin Menu</p>
                <p align="left" class="style16"><a href="adminmain1.jsp" class="style24">Home</a></p>
                <p align="left" class="style16"><a href="allreviewsranks.jsp" class="style24">Posted Products with Ranks &amp; Reviews</a></p>
                <p align="left" class="style16"><a href="similarnetworkusers.jsp" class="style24">All Similar Network Users </a></p>
                <p align="left" class="style16"><a href="allfriendrequest1.jsp" class="style24">View Friend Request / Response Different Sites</a></p>
                <p align="left" class="style16"><a href="purchaselist1.jsp" class="style24">Find Purchased Products </a></p>
                <p align="left" class="style16"><a href="chart.jsp" class="style24">Chart To Count Users In Same Site </a></p>
                <p align="left" class="style25"><a href="index.html">Log Out</a></p>
                <p align="left">&nbsp;</p>
                <p>&nbsp;</p>
              </div>
            </div>
            <h2 class="star">&nbsp;</h2>
          </div>
        </div>
      </div>
      <div class="mainbar style26"> 
        <div align="left">
          <div class="mainbar">
            <div class="col_allw280 fp_service_box">
              <table width="431" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="423"><span class="style31">Users In Similar Sites..</span></td>
                </tr>
              </table>
              <p>&nbsp;</p>
              <table width="542" border="2" align="center"  cellpadding="0" cellspacing="0"  ">
                <tr>
                  <td colspan="2"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style55 style52">
                      <div align="center" class="style55">Social Network Sites</div>
                  </div></td>
                </tr>
                <%@ include file="connect.jsp" %>
                <%@ page import="java.io.*"%>
                <%@ page import="java.util.*" %>
                <%@ page import="java.util.Date" %>
                <%@ page import="com.oreilly.servlet.*"%>
                <%@ page import ="java.text.SimpleDateFormat" %>
                <%
					  
						String s1,s2,s3,s4,s5,s6,s7,site="";
						int i=0;
						try 
						{
							
						   	String query="select distinct(site) from user";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								site=rs.getString(1);
								
										%>
                <tr>
                  <td width="241" height="39" align="center"  valign="middle"><div align="center"><strong>
                      <%out.println(site);%>
                  </strong></div></td>
                  <td width="293" height="39" align="center"  valign="middle"><form id="form1" name="form1" method="post" action="sfrienddetails.jsp">
                      <label>
                      <input type="hidden" value="<%=site%>" name="site"/>
                      <input type="submit" name="Submit" value="View Friends" />
                      </label>
                  </form></td>
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
              <p>&nbsp;</p>
              <table width="543" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="535"><div align="right"><a href="adminmain1.jsp" class="style39"><strong>Back</strong></a></div></td>
                </tr>
              </table>
            </div>
          </div>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
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

