<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>viewaddrates</title>
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
.style37 {color: #333333}
.style12 {	color: #666666;
	font-size: 26px;
}
.style15 {color: #FF00FF}
.style22 {font-size: 16px; color: #FFFFFF; }
.style54 {font-size: 15px}
.style65 {color: #666666}
.style66 {
	font-size: 16px;
	color: #FF00FF;
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
      <div class="sidebar">
        <div class="gadget">
          <div class="col_allw280 fp_service_box col_last">
            <div class="con_tit_02 style3">
              <p>&nbsp;</p>
              <p>Social Menu </p>
            </div>
            <ul>
              <li> <a href="socialmain.jsp"><strong>Home</strong></a></li>
              <li> <a href="allusersandauthorize.jsp"><strong>List Users And Authorize </strong></a></li>
              <li> <a href="allfriendrequest.jsp"><strong>List Friend Request / Response </strong></a></li>
              <li><a href="fixadamount.jsp"><strong>Fix Ad Amount By Period</strong></a></li>
              <li><a href="socialrentreq.jsp"><strong>Authorize Ads Request</strong></a></li>
              <li><a href="U_MyPosts.jsp"><strong>View All Products</strong></a></li>
              <li><a href="viewadusers.jsp"><strong>View All Ad Users</strong></a></li>
              <li><a href="viewadusers.jsp"><strong>View All Ad Products </strong></a></li>
              <li> <a href="userslogin.jsp"><strong>Log Out</strong></a></li>
            </ul>
          </div>
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="mainbar">
        <form id="form1" name="form1" method="get" action="">
          <h3>
            <h3><span class="style12 style37"> Price List...</span></h3>
            <table width="397" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td  width="118" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style54 style65">Price</div></td>
                <td  width="122" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style54 style65">No. Of Months </div></td>
                <td  width="149" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style54 style65">Social Site </div></td>
              </tr>
              <%@ include file="connect.jsp" %>
              <%
					  
						String s1,s2,s3;
						int i=0;
						try 
						{
						   	String query="select * from adprice"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
									
						
					%>
              <tr>
                <td height="104" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style58"> <span class="style15">
                    <%out.println(s1);%>
                </span></div></td>
                <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style58"> <span class="style15">
                    <%out.println(s2);%>
                </span></div></td>
                <td height="104" align="center"  valign="middle"><p class="style22 style5 style20 style37 style58">&nbsp;</p>
                    <div align="center" class="style15"> <span class="style4">
                      <%out.println(s3);%>
                      </span>
                        <p class="style4">&nbsp;</p>
                </div></td>
               
                
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
          </h3>
          <h3>&nbsp;</h3>
        </form>
      </div>
      <div class="clr">
         <p align="right"><a href="socialmain.jsp" class="style9">Back </a></p>
	    </span></div>
    </div>
  </div>
</div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  
    
	
</html>



