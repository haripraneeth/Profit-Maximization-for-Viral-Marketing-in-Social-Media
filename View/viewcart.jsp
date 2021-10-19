<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>viewcart</title>
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
.style40 {color: #FF9900}
.style81 {	font-weight: bold;
	font-size: 12px;
	color: #FF9900;
}
.style82 {font-size: 12px}
.style84 {color: #009900}
.style86 {color: #666666}
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
          <h2 class="title style30 style35"><a href="#" class="style36"><span class="style36 style35 style86">Purchasing Cart Products..</span></a></h2>
          <p class="title style30 style35">&nbsp;</p>
          <div class="entry">
            <table width="606" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                      <tr>
                        <td  width="45"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style84"><strong>Si No. </strong></div></td>
                        <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style84"><strong>Product  Image</strong></div></td>
                        <td  width="116" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style37 style84"><strong>Product Name</strong></div></td>
                        <td  width="104" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>Price</strong></div></td>
                        <td  width="68" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
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
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0,m=1;
	String us=(String)application.getAttribute("user");
	String site=(String)application.getAttribute("usite");
			
	
	                    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");			
						Date now = new Date();
			            String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;

 try 
	{		
      	                    String query="select * from purchase1 where uname='"+us+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                
								
								s4=rs.getString(4);// exp date
								
								
								
								Date exp_date = sdfDate.parse(s4);
								Date todays_date = sdfDate.parse(strDate);
								
								if( exp_date.compareTo(todays_date) < 0 )
							    {
							%>	
							
							
           
             
			
			
			 <%
		
	  j=j+1;}}
	  
	  
	      if(j==1)
		  {
		  %>
					  <%
					  
						
							String user=(String)application.getAttribute("user");
						   	String strQuery9 = "select p_name,price from cart where user='"+user+"'";
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(strQuery9);
					   		while ( rs1.next() )
					   		{
										s1=rs1.getString(1);
										
										i=rs1.getInt(2);
										
									%>
                      <tr>
                        <td height="172" align="center"  valign="middle"><div align="center" class="style54 style5 style22 style82 style40"><strong>
                            <%out.println(j);%>
                        </strong></div></td>
                        <td width="146" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style82 style40" style="margin:10px 13px 10px 13px;" ><strong>
                            <input  name="image" type="image" src="images.jsp?Name=<%=s1%>" style="width:120px; height:120px;" />
                        </strong></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                          
                          <%out.println(s1);%>
                          </a></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                           
                              <%out.println(i);%>Rs/-

                        </div></td>
                        <td height="172" align="center"  valign="middle">
							<form id="form1" name="form1" method="post" action="purchaseverification.jsp">
							<input type="hidden" value="<%=s1%>" name="p_Name"/>
														
                          <input type="submit" name="Submit" value="Purchase" />
                          </label>  
						  </form><br/>
						  <form id="form1" name="form1" method="post" action="removefromcart.jsp">
							<input type="hidden" value="<%=s1%>" name="p_Name"/>
														
                          <input type="submit" name="Submit" value="Remove" />
                          </label>  
						  </form>				    </td>
                      </tr>
                       <%
		  }}
		  else{
out.println("Post Date Expired");
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
            <div align="right"><a href="usersmain.jsp" class="style11"><strong>Back</strong></a></div>
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


