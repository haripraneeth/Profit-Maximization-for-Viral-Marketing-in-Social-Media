<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
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
.style14 {color: #FF00FF}
.style20 {font-size: 14px; color: #FF00FF; }
.style26 {color: #42ac1f}
.style6 {color: #f69722}
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
                <p align="left" class="style16"><a href="similarnetworkusers.jsp" class="style24">Similar Network Users </a></p>
                <p align="left" class="style16"><a href="allfriendrequest1.jsp" class="style24">View Friend Request / Response</a></p>
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
          <h2><span class="style26"><%=request.getParameter("p_Name")%></span>Reviews.</h2>
          <p>&nbsp;</p>
          <div id="templatemo_right_section">
           <p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor=""><td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Reviewed By </strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Review Details </strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong>Product Name </strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong>Product Rank </strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong>Reviewed Date Time </strong></div></td>
			</tr>
			

					<%
						
						int count=0;
						String p_Name=request.getParameter("p_Name");
						try 
						{   
							   
						   	String query="select * from userreviews where p_name='"+p_Name+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								
								String rec=rs1.getString(2);
								String red=rs1.getString(3);
								String pname=rs1.getString(4);
							    String dt=rs1.getString(5);
								
								
								count++;
								
								String query2="select * from posts where p_name='"+pname+"' "; 
						   	Statement st12=connection.createStatement();
						   	ResultSet rs12=st12.executeQuery(query2);
					   		if ( rs12.next() )
					   		{
						String rank=rs12.getString(10 );
						
					%>
		<tr>
			
			   <td  width="182" height="44" valign="middle" bgcolor="" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em> <%out.println(rec);%> 
 		    </em></strong></div></td>
			
			
			   <td  width="182" height="44" valign="middle" bgcolor="" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em> <%out.println(red);%> 
 		    </em></strong></div></td>
			
			
			
			 <td  width="182" height="44" valign="middle" bgcolor="" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em> <%out.println(pname);%> 
		    </a></em></strong></div></td>
			
			 <td  width="182" height="44" valign="middle" bgcolor="" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em> <%out.println(rank);%> 
		    </a></em></strong></div></td>
			
			
			
			    <td  width="182" height="44" valign="middle" bgcolor="" style="color:#000000;">
				<div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
		        <%out.println(dt);%>
			</em></strong></div></td>
				
</tr>
<%					
					}
					}
						if(count==0){
										out.print("No User Had Reviewed On This Product");
								}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
			
            <div align="center" class="style4">
              <p>&nbsp;</p>
              <p><a href="adminmain1.jsp" class="style20">Back</a></p>
            </div>
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

