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
              <p>Social Menu </p>
            </div>
            <ul>
              <li> <a href="socialmain.jsp"><strong>Home</strong></a></li>
              <li> <a href="allusersandauthorize.jsp"><strong>List All Users And Authorize </strong></a></li>
              <li> <a href="allfriendrequest.jsp"><strong>List All Friend Request / Response </strong></a></li>
              <li><a href="fixadamount.jsp"><strong>Fix Ad Amount By Period</strong></a></li>
              <li><a href="uploadedproducts.jsp"><strong>View All Ad Products</strong></a></li>
              <li><a href="viewadusers.jsp"><strong>View All Ad Users Details </strong></a> </li>
              <li><a href="Viewprofit1.jsp"><strong>View Profit based on Advertisement </strong></a> </li>
              <li><a href="UserProfitChart.jsp"><strong>View profit in Chart based on User </strong></a> </li>
              <li> <a href="userslogin1.jsp"><strong>Log Out</strong></a></li>
            </ul>
          </div>
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="mainbar">
        <p align="center" class="style93">View All  Advertised Products.. </p>
		
		
        <table width="659" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="27" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Si No.</strong></div></td>
            <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Product Image</strong></div></td>
			<td  width="68" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>User</strong></div></td>
            <td  width="75" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Product Name</strong></div></td>
			<td  width="73" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Price</strong></div></td>
            <td  width="76" valign="middle" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Date</strong></div></td>
			<td  width="60" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Site</strong></div></td>
            <td  width="116" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%@ page import="java.sql.*,java.io.*,java.util.*" %>
          <%
					  String site=(String)application.getAttribute("site");
						String s1,s2,s3,s4,s5,s6,s7;
						int i=1,j=0;
						try 
						{
						   
						   	String query="select * from posts where site='"+site+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(8);
								s6=rs.getString(9);
								s5=rs.getString(3);
								s7=rs.getString(4);
								
								
								
								
							
						
					%>
          <tr>
            <td  valign="baseline" height="161"><p class="style5 style89 style91">&nbsp;</p>
                <div align="center" class="style5 style89 style92">
                  <%out.println(i);%>
              </div></td>
            <td width="146" rowspan="1" ><div class="style5 style89 style91" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="images1.jsp?imgid=<%=j%>" style="width:120px; height:120px;" />
            </a> </div></td>
            <td  valign="baseline" height="161"><p class="style5 style89 style91">&nbsp;</p>
                <div align="center" class="style5 style89 style92">
                  <%out.println(s1);%>
              </div></td>
             <td  valign="baseline" height="161"><p class="style5 style89 style91">&nbsp;</p>
                <div align="center" class="style5 style89 style92">
                  <%out.println(s2);%>
              </div></td>
			   <td  valign="baseline" height="161"><p class="style5 style89 style91">&nbsp;</p>
                <div align="center" class="style5 style89 style92">
                  <%out.println(s7);%>
              Rs/-</div></td>
			  <td  valign="baseline" height="161"><p class="style5 style89 style91">&nbsp;</p>
                <div align="center" class="style5 style89 style92">
                  <%out.println(s4);%>
              </div></td>
			  <td  valign="baseline" height="161"><p class="style5 style89 style91">&nbsp;</p>
                <div align="center" class="style5 style89 style92">
                  <%out.println(s6);%>
              </div></td>
            <td  valign="baseline" height="161"><p class="style91 style5 style89">&nbsp;</p>
                <form id="form1" method="post" action="uploadedproducts2.jsp">
                  <div align="center">
                    <input type="hidden" value="<%=s2%>" name="p_Name"/>
                  
                    <input type="submit" name="Submit" value="View Details" />
                  </div>
                </form></td>
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
        <div align="left"><a href="socialmain.jsp">Back</a></div>
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


