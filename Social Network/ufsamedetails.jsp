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
.style5 {	color: #666666;
	font-size: 24px;
}
.style11 {color: #666666;
	font-weight: bold;
}
.style8 {color: #006600; font-size: 12px; font-weight: bold; }
.style9 {color: #666666}
.style10 {color: #666666; font-size: 12px; font-weight: bold; }
.style3 {font-size: 23px}
.style15 {font-size: 19.6px}
.style26 {color: #990000;
	font-size: 15px;
}
.style41 {color: #FF00FF;
	font-weight: bold;
}
.style41 {font-family: "Courier New", Courier, monospace}
.style42 {font-size: 20.8px;
	color: #FF0000;
}
.style42 {font-size: 15px}
.style44 {color: #FF00FF}
.style47 {color: #00CC00}
.style47 {font-size: 16px}
.style48 {color: #FF0000;
	font-size: 15px;
}
.style51 {color: #6633FF}
.style52 {	color: #006600;
	font-size: 25px;
}
.style7 {font-size: 30px;
	color: #6699CC;
	font-weight: bold;
	font-family: "Courier New", Courier, monospace;
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
          <table width="423" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="415"><span class="style52">User<span class="style44"> <%=request.getParameter("user1")%></span>'s Profile !!</span></td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <table width="559" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%
						
						String user1=request.getParameter("user1");
						String user1_site=request.getParameter("user1_site");

						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user1+"' and site='"+user1_site+"'";  
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(7);
								s5=rs.getString(9);
								s6=rs.getString(10);
								
								
								
								
								
								
					%>
            <tr>
              <td width="230" rowspan="7" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:180px; height:180px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style42" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
              <td  width="176" valign="middle" height="40" style="color:#000000;"><div align="left" class="style41 style42 style51" style="margin-left:20px;"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style42" style="margin-left:20px;"><strong>Mobile</strong></div></td>
              <td  width="176" valign="middle" height="40"><div align="left" class="style41 style42 style51" style="margin-left:20px;"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style42" style="margin-left:20px;"><strong>Address</strong></div></td>
              <td  width="176" align="left" valign="middle" height="40"><div align="left" class="style41 style42 style51" style="margin-left:20px;"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style42" style="margin-left:20px;"><strong>DOB</strong></div></td>
              <td  width="176" align="left" valign="middle" height="40"><div align="left" class="style41 style42 style51" style="margin-left:20px;"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
            </tr>
            <tr>
              <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style47 style48 style3 style4 style15" style="margin-left:20px;"><strong>Status</strong></div                        ></td>
              <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style41 style42 style51" style="margin-left:20px;"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
            </tr>
            <tr>
              <td   width="145" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style47 style48 style3 style4 style15" style="margin-left:20px;"><strong>Site</strong></div                        ></td>
              <td  width="176" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                  <div align="left" class="style41 style51 style42" style="margin-left:20px;"><strong>
                    <%out.println(s6);%>
                </strong></div></td>
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
          <table width="539" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="531"><div align="right">
                  <p>&nbsp;</p>
                <p><a href="FriendsInSameSite.jsp"><strong>Back</strong></a></p>
              </div></td>
            </tr>
          </table>
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


