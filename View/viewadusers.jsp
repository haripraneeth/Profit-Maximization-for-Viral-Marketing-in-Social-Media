<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>viewadusers</title>
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
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style92 {color: #000000}
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
        <p><a href="file:///C|/Tomcat 6.0/webapps/Profit Maximization for Viral Marketing in Online Social Networks Algorithms and Analysis/viewadusers1.jsp" class="style12"> All Ad Users</a></p>
        <table width="449" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                      <tr>
                        <td  width="77"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style92"><strong>Si No. </strong></div></td>
                        <td  width="179" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style92">User Name </div></td>
						<td  width="179" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style92">Fromdate </div></td>
						<td  width="179" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style92">Todate </div></td>
						<td  width="179" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style92">Months</div></td>
						<td  width="179" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style92">Price</div></td>
						<td  width="179" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style92">Social</div></td>
                        <td  width="185" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
                      </tr>
                      <%@ include file="connect.jsp" %>
                      <%@ page import="java.io.*"%>
                      <%@ page import="java.util.*" %>
                      <%
					  
						String s1,s2,s3,s4,s5,s6,s7,user1="";
						int i=0,j=1;
						try 
						{
					
							String user=(String)application.getAttribute("user");
						   	String site=(String)application.getAttribute("site");					
						   	String strQuery91 = "select * from purchase1 where site='"+site+"'";
						   	Statement st91=connection.createStatement();
						   	ResultSet rs91=st91.executeQuery(strQuery91);
					   		while ( rs91.next() )
					   		{		
									s2=rs91.getString(1);
									s3=rs91.getString(3);
									s4=rs91.getString(4);
									s5=rs91.getString(5);
									s6=rs91.getString(6);
									s7=rs91.getString(2);
									
									%>
                      <tr>
                        <td height="102" align="center"  valign="middle"><div align="center" class="style54 style5 style22 style82 style40"><strong>
                            <%out.println(j);%>
                        </strong></div></td>
                        <td width="179" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style82 style40" style="margin:10px 13px 10px 13px;" ><strong>
                            <%out.println(s2);%>
                        </strong></div></td>
						 <td width="179" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style82 style40" style="margin:10px 13px 10px 13px;" ><strong>
                            <%out.println(s3);%>
                        </strong></div></td>
						 <td width="179" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style82 style40" style="margin:10px 13px 10px 13px;" ><strong>
                            <%out.println(s4);%>
                        </strong></div></td>
						
						<td width="179" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style82 style40" style="margin:10px 13px 10px 13px;" ><strong>
                            <%out.println(s5);%>
                        </strong></div></td>
						
						
						
						 <td width="179" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style82 style40" style="margin:10px 13px 10px 13px;" ><strong>
                            <%out.println(s6);%>
							<td width="179" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style82 style40" style="margin:10px 13px 10px 13px;" ><strong>
                            <%out.println(s7);%>
                        </strong></div></td>
                        <td height="102" align="center"  valign="middle"><label>
						 <form id="form1" name="form1" method="post" action="viewadusers2.jsp">
                          <input type="hidden" value="<%=s2%>" name="user"/>
						  
                          <input type="submit" name="Submit" value="View User Details" />
                          </label>  
					    </form>					    </td>
                      </tr>
                      <%
												j+=1;	
						
							
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
        <p><a href="socialmain.jsp">Back</a></p>
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


