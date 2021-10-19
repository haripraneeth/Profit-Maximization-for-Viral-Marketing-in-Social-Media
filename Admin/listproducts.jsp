<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>listproducts</title>
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
.style12 {font-size: 24px}
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style6 {color: #f69722}
.style89 {font-size: 13px}
.style91 {color: #FFFFFF}
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
      <div align="center" class="style12">
        <p>List Of Products </p>
        <p>&nbsp;</p>
      </div>
      <div class="mainbar">
        <div class="entry">
          <table width="574" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="46" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Si No.</strong></div></td>
              <td  width="132" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Post Image</strong></div></td>
              <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Post Name</strong></div></td>
              <td  width="108" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style89"><strong>Categorie</strong></div></td>
              <td  width="130" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%@ page import="java.sql.*,java.io.*,java.util.*" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=1,j=0;
						try 
						{
						   	String query="select * from posts"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
							
								
								
								
								
							
						
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style5 style89 style91">&nbsp;</p>
                  <div align="center" class="style5 style89 style91">
                    <%out.println(i);%>
                </div></td>
              <td width="132" rowspan="1" ><div class="style5 style89 style91" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images1.jsp?imgid=<%=j%>" style="width:120px; height:120px;" />
              </a> </div></td>
              <td  valign="baseline" height="0"><p class="style5 style89 style91">&nbsp;</p>
                  <div align="center" class="style5 style89 style91">
                    <%out.println(s1);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style5 style89 style91">&nbsp;</p>
                  <div align="center" class="style5 style89 style91">
                    <%out.println(s2);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style91 style5 style89">&nbsp;</p>
                  <form id="form1" method="post" action="spostdetails2.jsp">
                    <div align="center">
                      <input type="hidden" value="<%=s1%>" name="p_Name"/>
                      <input type="hidden" value="<%=s2%>" name="p_Categorie"/>
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
          <p>&nbsp;</p>
          <div align="right"><a href="searchproducts.jsp" class="style11"></a><a href="usersmain.jsp" class="style11"><strong>Back</strong></a></div>
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


