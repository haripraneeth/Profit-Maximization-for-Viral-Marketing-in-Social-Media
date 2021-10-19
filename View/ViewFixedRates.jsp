<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>uploadedproducts</title>
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
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style6 {color: #f69722}
.style89 {font-size: 13px}
.style91 {color: #FFFFFF}
.style92 {color: #333333}
.style93 {color: #333333; font-size: 24px; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html"><span>Home Page</span></a></li>
		  <li><a href="userslogin.jsp" class="active">User</a></li>
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
        <p align="center" class="style93">Uploaded Ad Products.. </p>
		
		
        <table width="564" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="132" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Site Name </strong></div></td>
            <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>No.Of.Months</strong></div></td>
            <td  width="130" valign="middle" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Price</strong></div></td>
			<td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Status</strong></div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%@ page import="java.sql.*,java.io.*,java.util.*" %>
          <%
					  String site=(String)application.getAttribute("usite");
						String s1,s2,s3,s4,s5,s6;
						int i=1,j=0;
						try 
						{
						   	String query="select * from addrates where sname='"+site+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								
								
							
								
								
								
								
							
						
					%>
          <tr>
             <td  valign="baseline" height="99"><p class="style5 style89 style91">&nbsp;</p>
               <div align="center" class="style5 style89 style92">
                  <%out.println(s1);%>
            </div></td>
            <td  valign="baseline" height="99"><p class="style5 style89 style91">&nbsp;</p>
                <div align="center" class="style5 style89 style92">
                  <%out.println(s2);%>
              </div></td>
             <td  valign="baseline" height="99"><p class="style5 style89 style91">&nbsp;</p>
                <div align="center" class="style5 style89 style92">
                  <%out.println(s3);%>
              </div></td>
			   <td  valign="baseline" height="99"><p class="style5 style89 style91">&nbsp;</p>
                <div align="center" class="style5 style89 style92">
                 <a href="Purchase.jsp?SName=<%=s1%>&nmo=<%=s2%>&pr=<%=s3%>">Purchase</a>
              </div></td>
          </tr>
          <%
					i=i+1;
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        </table>
        <p><a href="socialmain.jsp"></a></p>
        <div align="right"><a href="usersmain.jsp">Back</a></div>
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


