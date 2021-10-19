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
.style14 {color: #FF00FF}
.style23 {color: #42ac1f}
.style25 {font-size: 16px;
	color: #f69722;
}
.style20 {color: #006600}
.style28 {font-size: 25px}
.style6 {color: #ECECEC}
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
          <div class="sidebar">
            <div class="gadget">
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
              <h2 class="star">&nbsp;</h2>
            </div>
          </div>
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="mainbar">
        <div class="box">
          <div id="div">
            <h2 class="style28">Product <span class="style23"><%=request.getParameter("p_Name")%></span></h2>
            <p class="style6">
              <%
			 
		 try{ 
		 
		 String type = request.getParameter("type");
		 String user = (String)application.getAttribute("user");
		 
		 if(type.equals("recommend"))
		 {
		 String p_rec=null;
		 String p_Name = request.getParameter("p_Name");
		 
		 p_rec = request.getParameter("p_rec");
		 if(p_rec.equals(""))
		 {
		
		  %>
            </p>
            <p><span class="style14">Recommendation TextArea Should not be Empty..</span>.</p>
            <p>&nbsp;</p>
            <div><a href="usersaddreview.jsp?p_Name=<%=p_Name%>">Back</a></div>
            <%
		    
		 }
		 else
		 {
		String strDate="",strTime="",dt="";
		 
		    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		    SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		    Date now = new Date();

		    strDate = sdfDate.format(now);
		    strTime = sdfTime.format(now);
		    dt = strDate + "   " + strTime;
		 
		 String str = "insert into userreviews(rec_by,rec_details,p_name,dt) values('"+user+"','"+p_rec+"','"+p_Name+"','"+dt+"')";
		 connection.createStatement().executeUpdate(str);
		 %>
            <p class="style11 style14">Sucessfully Reviewed on post <span class="style23"><%=p_Name%></span> By User <span class="style20"><%=user%></span> </p>
            <p class="style11 style14"><a href="usersaddreview.jsp?p_Name=<%=p_Name%>">Back</a></p>
            <div><a href="searchproductsdetails.jsp?name=<%=p_Name%>Back</a></div>
            <%
		 }
		 
		 }
		  if(type.equals("rank"))
		 {
		 
		  String rank="";
		   String p_Name = request.getParameter("p_Name");
		  
		  rank = request.getParameter("rank");
		  int rank1=0,rank2=0,rank3=0;
		 
		   if(rank.equals("--Select--"))
		   {
		   
		   %>
            <p class="style4">Please select the<span class="style7"> Rank</span></p>
            <p class="style4">&nbsp;</p>
            <div><a href="searchproducts1.jsp?name=<%=p_Name%>">Back</div>
            <%
		   
		   }
		   else
		   {
		   if(rank.equalsIgnoreCase("Good"))
		   {
		   rank1 = 1;
		   }
		    if(rank.equalsIgnoreCase("Very Good"))
		   {
		   rank1 = 2;
		   }
		    if(rank.equalsIgnoreCase("Awesome"))
		   {
		   rank1 = 3;
		   }
		  
		   
		  
		   
		   String str1 = "select * from posts where p_name = '"+p_Name+"' ";
		   Statement st1 = connection.createStatement();
		   ResultSet rs1 = st1.executeQuery(str1);
		   if(rs1.next())
		   {
		   rank2 = rs1.getInt(10);
		   rank3 = rank2+rank1;
		   String str2 = "update posts set rank ="+rank3+" where p_name='"+p_Name+"' ";
		   connection.createStatement().executeUpdate(str2);
		   
		    %>
            <p class="style25"><span class="style7"><span class="style14"> Product </span> <span class="style23"><%=p_Name%>'s </span><span class="style14">Rank</span></span><span class="style14"> Updated Sucessfully</span></p>
            <p class="style25">&nbsp;</p>
           <div><a href="searchproducts1.jsp?name=<%=p_Name%>">Back</div>
            <%
		   
		   }}
		   
		   }
		   }
		   catch(Exception e)
		   {
		   out.print(e);
		   }
		   
		%>
            </p>
            <div class="style4"> </div>
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


