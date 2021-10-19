<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>purchaselist</title>
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
.style38 {color: #FF6600}
.style81 {font-weight: bold;
	font-size: 12px;
	color: #FF9900;
}
.style83 {color: #000000}
.style84 {color: #0000FF}
.style23 {color: #42ac1f}
.style30 {color: #FF00FF}
.style35 {font-size: 25px}
.style22 {font-weight: bold}
.style85 {	color: #006600;
	font-weight: bold;
	font-size: 25px;
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
      <div class="post">
        <h2 class="title"><a href="#"><span class="style84"><span class="style35"><span class="style30">Purchased Products..</span></span></span></a></h2>
        <div class="entry">
          <table width="637" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="51"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style22"><strong>Si No. </strong></div></td>
              <td  width="151" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style22"><strong>Product Image</strong></div></td>
			  <td  width="121" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>User</strong></div></td>
              <td  width="107" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Product Name</strong></div></td>
			  <td  width="107" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Social</strong></div></td>
			  <td  width="106" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Purchase Date</strong></div></td>
              <td  width="87" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Price</strong></div></td>
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
					  
						String s1,s2,s3,s4,s5,s6,s7,user1="";
						int i=0,j=1,total=0;
						try 
						{
					
							String user=(String)application.getAttribute("user");
						   	String query="select *  from purchase "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
						
									s2=rs.getString(3);
									s3=rs.getString(4);
									s4=rs.getString(5);
									s5=rs.getString(6);

							String query1="select *  from user where username='"+s2+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
						
									s7=rs1.getString(10);
										
												%>
            <tr>
              <td height="122" align="center"  valign="middle"><div align="center" class="style54 style5 style22 style83"><strong>
                  <%out.println(j);%>
              </strong></div></td>
              <td width="151" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style83" style="margin:10px 13px 10px 13px;" ><strong>
                  <input  name="image" type="image" src="images.jsp?Name=<%=s3%>" style="width:100px; height:100px;" />
              </strong></div></td>
			  <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                  <%out.println(s2);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                  <%out.println(s3);%>
              </div></td>
			  <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                  <%out.println(s7);%>
              </div></td>
			  <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                  <%out.println(s5);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                  <%out.println(s4);%>
                  <span class="style30">Rs/-</span> </div></td>
            </tr>
            <%
												j+=1;	
						
						
							}
				
						
						}
						
					
		  					String query1="select * from purchase where user='"+user+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
								 total=total+Integer.parseInt(rs1.getString(5));
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
          <div align="right" class="style4"></div>
          <div align="center"><strong><a href="adminmain1.jsp">Back</a></strong></div>
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


