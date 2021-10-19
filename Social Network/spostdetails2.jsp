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
.style3 {font-size: 23px}
.style12 {font-size: 24px}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style70 {color: #FF6600;
	font-weight: bold;
}
.style73 {color: #FF6600}
.style84 {	color: #3399FF;
	font-weight: bold;
}
.style85 {color: #3399FF; }
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
  <div id="page">
	<div id="page-bgtop">
		<div id="content">
			<div class="post">
			
				<h2 class="title"><a href="#"><span class="style83 style35">Post  <span class="style86"><%=request.getParameter("p_Name")%></span> Details.. </span></a></h2>
		      <div class="entry">
        <%@ include file="connect.jsp" %>
        <%@ page import="java.util.*"%>
        <%@ page import="java.text.*"%>
        <%@ page import="java.util.Date"%>
        <%@ page import="java.sql.*"%>
        <%
					
					try
					{
					String p_Name=request.getParameter("p_Name");
					String p_Categorie=request.getParameter("p_Categorie");
					
				
			
					String str1="select * from posts where p_name='"+p_Name+"' and categorie='"+p_Categorie+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String uses = rs1.getString(5);
						String description = rs1.getString(6);
						String price = rs1.getString(4);
						String date = rs1.getString(8);
							
							/*SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
									   
							String str2 = "insert into postsearch (user,p_name,categorie,keyword,dt) values('"+uname+"','"+p_Name+"','"+p_Categorie+"','"+keyword+"','"+dt+"')";
							connection.createStatement().executeUpdate(str2);
					*/
						
			%>
        </span>
      </div>
      <div class="mainbar">
        <table width="586" border="1" align="left" cellpadding="0" cellspacing="0" >
          <tr >
            <td width="186" rowspan="5" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                <div align="center"><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" style="width:160px; height:310px;" />
                </a> </div>
            </div></td>
            <td width="97" height="38" ><div align="center" class="style70 style73"><span class="style70">Category </span></div></td>
            <td width="295"><div align="center" class="style84"><%= p_Categorie%></div></td>
          </tr>
          <tr >
            <td height="35" ><div align="center" class="style70"> Price </div></td>
            <td><div align="center" class="style84"><%= price%> Rs/-</div></td>
          </tr>
          <tr >
            <td height="47" ><div align="center" class="style70"> Uses </div></td>
            <td><div align="center" class="style85"></div>
                <div align="center"><span class="style85">
                  <textarea name="textarea" cols="40" rows="5"><%= uses%></textarea>
              </span></div></td>
          </tr>
          <tr >
            <td height="47" ><div align="center" class="style70"> Description </div></td>
            <td><div align="center" class="style85"></div>
                <div align="center"><span class="style85">
                  <textarea name="textarea" cols="40" rows="8"><%= description%></textarea>
              </span></div></td>
          </tr>
          <tr >
            <td height="40" ><div align="center" class="style70">Date</div></td>
            <td><div align="center" class="style85"><strong><%= date%></strong></div></td>
          </tr>
          <%}%>
        </table>
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


