<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>           
<%@ include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>addproducts2</title>
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
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style30 {color: #FF00FF}
.style35 {font-size: 25px}
.style36 {font-size: 25px; color: #FF00FF; }
.style38 {font-size: 15px; color: #00CC00;}
.style8 {font-size: 16px}
.style39 {color: #333333}
.style40 {font-size: 15px}
.style41 {color: #666666}
.style42 {font-size: 15px; color: #FF00FF; }
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
        <div class="post">
          <h2 class="title style30 style35"><a href="#" class="style36"><span class="style36 style35 style39">Search Products by content keyword..</span></a></h2>
          <div class="entry">
		   <form action="searchproducts1.jsp" method="post" id="leavereply">
                    <table align="center" style="margin:0 0 0 30px;">
                      <tr>
                        <td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="center" class="style82"><strong>Enter  Keyword</strong></div>
                            </div>
                        </div></td>
                        <td width="152"><div align="left">
                            <input type="text" name="keyword" />
                        </div></td>
                        <td width="155"><input name="submit" type="submit" style="width:50px; height:25px;" value="GO"/></td>
                      </tr>
                      <tr>
                        <td colspan="3"><div class="style2">
                            <div align="center" class="style13 style78"> ( search content by keyword)</div>
                        </div></td>
                      </tr>
                    </table>
			        <p class="style44">&nbsp;</p>
            </form>
		        <a href="usersmain.jsp" class="style44">Back</a></div>
	    </div>
			<div class="post">
				
				<h2 class="title"><a href="#"></a><span class="style12"><span class="style35"><span class="style30">Products Found..</span></span></span></a></h2>
				<div class="entry">
				  <div class="post_content">
		  <p>
                      
<%	  
	
	try 
	{
	String site=(String)application.getAttribute("usite");
			String user=(String)application.getAttribute("user");
			String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0,m=1;
	
			String input="",l_Input="",p_Name="",p_Desc="",p_Desc1="",username="",site1="";
					
								String p_Price="";
										
								
								
								
								input= request.getParameter("keyword");
								if(!input.equals(""))	
								{
								
								l_Input = input.toLowerCase();
								
								
								 
								
								
							
		   String str2 = "select * from posts where user!='"+user+"'";
								Statement st2=connection.createStatement();
								ResultSet rs2 = st2.executeQuery(str2);
								
								while(rs2.next())
								{
								    p_Name = rs2.getString(3);
									p_Price = rs2.getString(4);
									p_Desc = rs2.getString(6);  

									 
								
									p_Desc1 = p_Desc.toLowerCase(); 
									 
									if (p_Desc1.contains(l_Input))
									{
		 
		  %>
		  
		 
                    </p>
				    <div align="center" class="style15">
                      <div align="left"><span class="style81"><span class="style30">Product Name :</span> </span><span class="style30"> <%=p_Name%></span></div>
				    </div>
				    <div align="center">
                      </p>
                    </div>
				    <p align="center"></p>
				    <div align="center" class="style15">
                      <div align="left"><span class="style81"><span class="style30">Price :</span> </span> <span class="style30"> <%=p_Price%></span></div>
				    </div>
				    <div align="center">
                      </p>
                    </div>
				    <p align="center"></p>
				    <div align="center" class="style5 style14">
                      <div align="left"><span class="style15"><a href="searchproductsdetails.jsp?p_Name=<%=p_Name%>&amp;keyword=<%=l_Input%>" class="style56 style30"><strong>View Details</strong></a></span></div>
				    </div>
				    <div align="center">
                      </p>
                    </div>
				    <p></p>
				    <div>
                      <div align="left">--------------------------------------------------------</div>
				    </div>
				    <%
						}
						  	}
		  }
		  
		  
           connection.close();
          }
         
          catch(Exception e)
          {
            e.printStackTrace();
          }
%>
              
      </p>
                
              </div>
            </div>
            <div></div>
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
