<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>searchproductsdetails</title>
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
.style11 {color: #FF00FF;
	font-weight: bold;
}
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
.style87 {	color: #00FF00;
	font-weight: bold;
}
.style88 {color: #FFFFFF}
.style89 {font-family: "Courier New", Courier, monospace}
.style33 {color: #FF00FF}
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
  <div id="page">
	<div id="page-bgtop">
		<div id="content">
			<div class="post">
			
				<h2 align="center" class="title"><a href="#"><span class="style83 style35">	Searched Product  <span class="style86"><%=request.getParameter("p_Name")%></span> Details.. </span></a></h2>
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
					
					
					String uname = (String)application.getAttribute("user");
			
					String str1="select * from posts where p_name='"+p_Name+"'"; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String uses = rs1.getString(5);
						String description = rs1.getString(6);
						String price = rs1.getString(4);
						
							
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
        <table width="598" border="1" align="center" cellpadding="0" cellspacing="0" >
          <tr >
            <td width="186" rowspan="6" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                <div align="center"><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" style="width:160px; height:160px;" />
                </a> </div>
            </div></td>
            
          </tr>
          <tr >
            <td height="37" ><div align="center" class="style70"> Price </div></td>
            <td><div align="center" class="style84"><%= price%> Rs/-</div></td>
          </tr>
          
		  <tr>
        <td width="187" height="27"><div align="center"><strong><span class="style17" style="color:#f69722">uses </span> </strong></div></td>
        <td><div align="center" class="style17"><%= uses%></div></td>
      </tr>
         
		  <tr>
        <td width="187" height="43"><div align="center"><strong><span class="style17" style="color:#f69722">Description</span> </strong></div></td>
        <td><div align="center" class="style17"><%= description%></div></td>
      </tr>
          
            <td width="97" height="194" ></td>
            <td></label>
              <div align="center"><a href="usersaddreview.jsp?p_Name=<%=p_Name%>" class="style34 style33">Review</a> <span class="style33 style33"><a href="usersaddreview.jsp?name=<%=p_Name%>"></a></span> on Post </div>
              <br/>
                <form method="post" action="purchaseverification11.jsp">
                  <label>
                  <div align="center">
                    <input type="hidden" value="<%=p_Name%>" name="p_Name"/>
                    
                    <input type="submit" name="Submit3" value="Add To Cart" />
                  </div>
                  </label>
              </form>
              <br/>
              <div align="center"><a href="usersinterest.jsp?p_Name=<%=p_Name%>" class="style11">Rank</a> on Post </div></td>
          </tr>
       
        </table>
		 <p>&nbsp;</p>
			      <p align="center">
			       <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
	               <a href="usersmain.jsp" class="style11"><strong>Back</strong></a></p>
				   <div align="right"><a href="searchproducts.jsp" class="style11"></a><a href="searchproducts.jsp" class="style11"></a></div>
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


