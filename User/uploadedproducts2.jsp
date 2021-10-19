<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>uploadedproducts2</title>
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
.style35 {font-size: 25px}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style70 {color: #FF6600;
	font-weight: bold;
}
.style83 {color: #009900}
.style84 {	color: #3399FF;
	font-weight: bold;
}
.style85 {color: #3399FF; }
.style86 {color: #FF00FF}
.style87 {font-size: 16px}
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
        <div id="content">
          <div class="post">
            <h2 class="title"><a href="#"><span class="style83 style35"><span class="style86"><%=request.getParameter("p_Name")%></span> Details.. </span></a></h2>
            <div class="entry">
              <%@ include file="connect.jsp" %>
              <%@ page import="java.sql.*,java.io.*,java.util.*,java.util.*" %>
              <%
					
					try
					{
					String site=(String)application.getAttribute("usite");
					String s1="",s2="",s3="",s4="",s5="";
					String p_Name=request.getParameter("p_Name");
					String str="select * from posts where p_name='"+p_Name+"' "; 
					Statement st=connection.createStatement();
					ResultSet rs=st.executeQuery(str);
					while ( rs.next() )
					{
						
				
						 s1= rs.getString(1);
						 s2= rs.getString(4);
						 s3= rs.getString(5);
						 s4= rs.getString(6);
						 s5= rs.getString(8);
						
						
						
			%>
              <table width="615" height="230" border="1" align="left" cellpadding="0" cellspacing="0" >
                
                  <tr >
                    <td width="186" rowspan="5" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                      <div align="center"><a class="#" id="img1" href="#" >
                        <input  name="image" type="image" src="images1.jsp?imgid=<%=s1%>" style="width:160px; height:160px;" />
                      </a> </div>
                    </div></td>
                    <td height="35" ><div align="center" class="style70">Date</div></td>
                     <td width="326"><div align="center" class="style84"><%= s5%> </div></td>
                  </tr>
				  <tr >
                  <td width="97" height="35" ><div align="center" class="style70"> Site</div></td>
                  <td width="326"><div align="center" class="style84"><%= site%> </div></td>
                </tr>
                <tr >
                  <td width="97" height="35" ><div align="center" class="style70"> Price </div></td>
                  <td width="326"><div align="center" class="style84"><%= s2%> Rs/-</div></td>
                </tr>
                <tr >
                  <td height="47" ><div align="center" class="style70"> Uses </div></td>
                  <td width="326"><div align="center" class="style84"><%= s3%> </div></td>
                </tr>
                <tr >
                  <td height="76" ><div align="center" class="style70"> Description </div>
                  <p>&nbsp;</p></td>
                 <td width="326"><div align="center" class="style84"><%= s4%> </div></td>
                </tr>
              </table>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
			  <p align="right">&nbsp;</p>
			  <p align="right">&nbsp;</p>
			  <p align="right">&nbsp;</p>
			  <p align="right">&nbsp;</p>
			  <p align="right">&nbsp;</p>
			  <p align="right">&nbsp;</p>
			  <p align="left"><a href="uploadedproducts.jsp" class="style17">Back</a></p>
			  <p>
                <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
              </p>
            </div>
          </div>
          
           
        </div>
      </div>
      <p>&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  
    
	
</html>


