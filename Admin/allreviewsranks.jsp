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
.style25 {color: #666666; font-weight: bold; font-size: 16px; }
.style26 {
	font-size: 18px;
	color: #FF00FF;
}
.style27 {font-size: 18px}
.style28 {font-size: 24px; color: #FF00FF; }
.style17 {color: #FF00FF}
.style19 {color: #FF0000}
.style6 {color: #f69722}
.style24 {font-size: 16px}
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
      <div class="mainbar">
        <div class="box">
          <h2>All Products with Reviews And Ranks</h2>
          <p>&nbsp;</p>
          <div id="templatemo_right_section">
            <table width="601" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td  width="47" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>SI NO</strong></div></td>
                <td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Product_Image</strong></div></td>
				<td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>User</strong></div></td>
                <td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Product_Name</strong></div></td>
                <td  width="112" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Price</strong></div></td>
				<td  width="112" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Site</strong></div></td>
                <td  width="114" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Reviews</strong></div></td>
                <td  width="82" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Rank</strong></div></td>
              </tr>
              <%@ include file="connect.jsp" %>
              <%@ page import="java.sql.*,java.io.*,java.util.*" %>
              <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=1,j=0;
						try 
						{
						   	String query="select * from posts order by rank desc"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(6);
								s4=rs.getString(10);
								s5=rs.getString(8);
								s6=rs.getString(2);
								s7=rs.getString(9);
								
								
								
							
						
					%>
              <tr>
                <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                    <div align="center" class="style22 style4 style5">
                      <%out.println(i);%>
                      <p>&nbsp; </p>
                    </div></td>
                <td width="116" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                    <input  name="image" type="image" src="images2.jsp?id=<%=j%>" style="width:90px; height:90px;" />
                </a> </div></td>
                <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                    <div align="center" class="style22 style4 style5"> 
                      <%out.println(s6);%>
                      </a></span>
                        <p>&nbsp; </p>
                    </div></td>
					<td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                    <div align="center" class="style22 style4 style5"> 
                      <%out.println(s1);%>
                      </a></span>
                        <p>&nbsp; </p>
                    </div></td>
                <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                    <div align="center" class="style22 style4 style5">
                      <%out.println(s2+"/- Rs");%>
                      <p>&nbsp; </p>
                    </div></td>
					<td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                    <div align="center" class="style22 style4 style5"> 
                      <%out.println(s7);%>
                      </a></span>
                        <p>&nbsp; </p>
                    </div></td>
              
            <td  valign="baseline" height="0"> <p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5"> <span class="style19"> <a href="allproductreviews.jsp?p_Name=<%=s1%>">
                  <%out.println("Reviews");%>
                  </a></span>
                    <p>&nbsp; </p>
                </div></td>
				
                <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                    <div align="center" class="style22 style4 style5"> <span class="style19">
                      <%out.println(s4);%>
                      </span>
                        <p>&nbsp; </p>
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
              <tr>
                <td  valign="baseline" height="0">&nbsp;</td>
                <td  valign="baseline" height="0">&nbsp;</td>
                <td  valign="baseline" height="0">&nbsp;</td>
                <td  valign="baseline" height="0">&nbsp;</td>
                <td  valign="baseline" height="0">&nbsp;</td>
                <td  valign="baseline" height="0">&nbsp;</td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p align="right"><a href="adminmain1.jsp" class="style17">Back</a></p>
            <p></p>
          </div>
          <p>&nbsp;</p>
        </div>
        <p class="style28">&nbsp;</p>
        <p class="style26">&nbsp;</p>
        <p>&nbsp; </p>
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

