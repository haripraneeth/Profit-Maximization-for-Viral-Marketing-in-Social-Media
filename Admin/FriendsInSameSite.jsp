<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>FriendsInSameSite</title>
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
.style44 {font-family: Georgia, "Times New Roman", Times, serif;
	color: #FF00FF;
	font-weight: bold;
	font-size: 14px;
}
.style49 {color: #006600;
	font-weight: bold;
	font-size: 14px;
}
.style53 {color: #9900CC; font-size: 24px; }
.style66 {color: #006600}
.style67 {color: #009900}
.style69 {color: #FF3300}
.style72 {font-size: 13px; color: #000000; font-weight: bold; }
.style81 {color: #009900; font-weight: bold; font-size: 14px; }
.style83 {font-size: 13px;
	color: #FF00FF;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.style87 {font-size: 15px}
.style88 {color: #666666; font-size: 24px; }
.style89 {color: #666666}
.style43 {	color: #006600;
	font-size: 25px;
}
.style90 {color: #FF00FF}
.style46 {	font-size: 14px;
	font-weight: bold;
}
.style91 {color: #66FF00}
.style92 {font-weight: bold;
	font-size: 12px;
}
.style3 {font-size: 23px}
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
        <h1><a href="index.html"><span class="style4">Profit Maximization for Viral Marketing in Online Social Networks Algorithms and Analysis</span></a></h1>
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
        <div class="col_allw280 fp_service_box">
          <div class="col_allw280 fp_service_box">
            <table width="423" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="415"><p class="style43">User<span class="style90"> <%=(String)application.getAttribute("user")%></span>'s Friends in Similar </p>
                <p class="style43">Site!!</p></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <table width="496" border="2" align="center"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td align="center"  valign="middle"><div align="center" class="style46">User Name </div></td>
                <td height="39" align="center"  valign="middle"><div align="center" class="style46">User Site </div></td>
                <td height="39" align="center"  valign="middle"><label></label></td>
              </tr>
              <%@ include file="connect.jsp" %>
              <%@ page import="java.io.*"%>
              <%@ page import="java.util.*" %>
              <%@ page import="java.util.Date" %>
              <%@ page import="com.oreilly.servlet.*"%>
              <%@ page import ="java.text.SimpleDateFormat" %>
              <%@ page import ="javax.crypto.Cipher" %>
              <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
              <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
              <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
              <%
					  
						String s1,s2,s3,s4,s5,s6,s7,user1="",user1_site="";
						int i=0,j=1;
						try 
						{
							String usite=(String)application.getAttribute("usite");
							String user=(String)application.getAttribute("user");
						   	String query="select * from user where site='"+usite+"' and username!='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								user1=rs.getString(2);
								user1_site=rs.getString(10);
							
								String strQuery9="select * from frequest where (((requestfrom='"+user+"' and fromsite='"+usite+"')and (requestto='"+user1+"' and tosite='"+user1_site+"'))||((requestfrom='"+user1+"' and fromsite='"+user1_site+"')and (requestto='"+user+"' and tosite='"+usite+"'))) and  status='Accepted'";
								Statement stmt9=connection.createStatement();
								/*String strQuery9 = "select requestfrom,requestto from frequest where ((requestfrom ='"+user+"' and requestto='"+user1+"') ||(requestfrom ='"+user1+"' and requestto='"+user+"'))and status ='Accepted' ";*/
								ResultSet rs9 = stmt9.executeQuery(strQuery9);
								if(rs9.next()==true)
								{
								%>
              <tr>
                <td width="151" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style53">
                    <p>
                      <%out.println(user1);%>
                    </p>
                </div></td>
                <td width="184" height="39" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style53">
                    <p>
                      <%out.println(user1_site);%>
                    </p>
                </div></td>
                <td width="151" height="39" align="center"  valign="middle"><label></label>
                    <form id="form1" name="form1" method="post" action="ufsamedetails.jsp">
                      <label>
                      <input type="hidden" name="user1" value="<%=user1%>" />
                      <input type="hidden" name="user1_site" value="<%=user1_site%>"/>
                      <input type="submit" name="Submit" value="View Profile" />
                      </label>
                  </form></td>
                <%
							j+=1;	
						
							}%></tr><%}
							
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
            <p>&nbsp;</p>
            <table width="497" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="489"><div align="right"><a href="umyfriends.jsp"><strong>Back</strong></a></div></td>
              </tr>
            </table>
          </div>
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


