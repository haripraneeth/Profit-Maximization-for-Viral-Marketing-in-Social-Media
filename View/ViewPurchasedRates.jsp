<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>usersmain</title>
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
.style22 {font-size: 16px; color: #000000; }
.style24 {color: #FFFF00}
.style26 {font-size: 18}
.style5 {color: #666666;
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
	    <table width="683" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="146" height="34" valign="bottom" bordercolor="#FF0000" bgcolor="" style="color: #2c83b0;"><div align="center" class="style5 style24 style26">User Name</div></td>
            <td  width="141" height="34" valign="bottom" bordercolor="#FF0000" bgcolor="" style="color: #2c83b0;"><div align="center" class="style5 style24 style26">From Date </div></td>
            <td  width="125" height="34" valign="bottom" bordercolor="#FF0000" bgcolor="" style="color: #2c83b0;"><div align="center" class="style5 style24 style26">To Date </div></td>
            <td  width="123" height="34" valign="bottom" bordercolor="#FF0000" bgcolor="" style="color: #2c83b0;"><div align="center" class="style5 style24 style26">Months </div></td>
            <td  width="136" height="34" valign="bottom" bordercolor="#FF0000" bgcolor="" style="color: #2c83b0;"><div align="center" class="style5 style24 style26">Amount</div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=0,total=0;
						try 
						{
						String user=(String)application.getAttribute("user");
						
						   	String query="select * from purchase1 where uname='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(6);
							    s4=rs.getString(3);
								s5=rs.getString(4);
								s6=rs.getString(5);	
							
								
								
							
						
					%>
          <tr>
            <td height="106" align="center"  valign="middle"><p class="style21 style4"><strong></strong></p>
                <div align="center" class="style22 style4 style21">
                  <%out.println(s1);%>
                  <p>&nbsp; </p>
                </div></td>
            <td height="106" align="center"  valign="middle"><p class="style21 style4"><strong></strong></p>
                <div align="center" class="style22 style4 style21">
                  <%out.println(s4);%>
                  <p>&nbsp; </p>
                </div></td>
            <td height="106" align="center"  valign="middle"><p class="style21 style4"><strong></strong></p>
                <div align="center" class="style22 style4 style21">
                  <%out.println(s5);%>
                  <p>&nbsp; </p>
                </div></td>
            <td height="106" align="center"  valign="middle"><p class="style21 style4"><strong></strong></p>
                <div align="center" class="style22 style4 style21">
                  <%out.println(s6);%>
                  <p>&nbsp; </p>
                </div></td>
            <td height="106" align="center"  valign="middle"><p class="style21 style4"><strong></strong></p>
                <div align="center" class="style22 style4 style21">
                  <%out.println(s3);%>
                  <p>&nbsp; </p>
                </div></td>
          </tr>
          <%
						}
						
						
					
		  					String query1="select * from purchase1"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
								total=total+Integer.parseInt(rs1.getString(6));
							}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          <tr>
            <td  valign="baseline" height="20">&nbsp;</td>
            <td  valign="baseline" height="20">&nbsp;</td>
          </tr>
        </table>
		<p>&nbsp;</p>
		<p><a href="usersmain.jsp" class="style44">Back</a>  </p>
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


