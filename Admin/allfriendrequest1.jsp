<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>allfriendrequest</title>
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
.style48 {color: #FF0000;
	font-size: 15px;
}
.style52 {font-size: 24px}
.style33 {font-size: 14px;
	color: #6666FF;
	font-weight: bold;
}
.style34 {font-size: 18px; color: #00FF00; }
.style36 {font-size: 18px; color: #FF3300; }
.style39 {color: #9900FF;
	font-weight: bold;
	font-size: 14px;
}
.style49 {color: #990000}
.style50 {color: #00CC00;
	font-size: 14px;
	font-weight: bold;
}
.style74 {color: #80C90A;
	font-size: 25px;
}
.style83 {color: #6666FF}
.style84 {font-size: 12px}
.style85 {color: #003399}
.style86 {font-size: 16px}
.style87 {color: #990000; font-size: 16px; }
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
      <div class="mainbar">
        <div class="col_allw280 fp_service_box">
          <table width="698" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="690"><span class="style74">All Friend Requests and Response For Different Sites..</span></td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <table width="901" border="1" align="center">
            <tr>
              <td width="22" height="47" align="center" valign="middle"><div align="center" class="style33 style49 style72"><span class="style87">Id </span></div></td>
              <td width="100" align="center" valign="middle"><div align="center" class="style36 style72 style85 style86"><strong>Request From </strong></div></td>
              <td width="117" align="center" valign="middle"><div align="center" class="style36 style72 style85 style86"><strong>Requested User </strong></div></td>
              <td width="115" align="center" valign="middle"><div align="center" class="style36 style85 style72 style86"><strong>Social Site </strong></div></td>
              <td width="100" align="center" valign="middle"><div align="center" class="style34 style50 style72 style83 style86"><strong>Request To </strong></div></td>
              <td width="128" align="center" valign="middle"><div align="center" class="style34 style50 style72 style83 style86"> Request To Name </div></td>
              <td width="104" align="center" valign="middle"><div align="center" class="style36 style83 style72 style86"><strong>Social Site </strong></div></td>
              <td width="86" align="center" valign="middle"><div align="center" class="style33 style49 style72 style86"><strong>Status</strong></div></td>
              <td width="71" align="center" valign="middle"><div align="center" class="style33 style49 style72 style72 style86"><strong>Date</strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
 
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0,k=0;

     try 
	{
           
					   String query="select * from  frequest"; 
					   Statement st=connection.createStatement();
					   ResultSet rs=st.executeQuery(query);
					   while( rs.next() )
					   {
						
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);
				
								String query1="select * from user where username='"+s2+"' and site='"+s6+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							 	while( rs1.next() )
							 	{
									j=rs1.getInt(1);  
							
									String query2="select * from user where username='"+s3+"'  and site='"+s7+"'";  
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									while( rs2.next() )
								 	{
										k=rs2.getInt(1);  
								
		
%>
            <tr>
              <td height="111"><div align="center" class="style93 style54 style52 style48 style84"><strong><%=i%></strong></div></td>
              <td><div align="center" class="style93 style54 style52 style48 style84"><strong>
                  <input  name="image" type="image" src="user_Pic.jsp?id=<%=j%>" width="100" height="100" alt="Submit" />
              </strong></div></td>
              <td><div align="center" class="style93 style52 style48 style84"><strong><%=s2 %></strong></div></td>
              <td><div align="center" class="style93 style52 style48 style84"><strong><%=s6 %></strong></div></td>
              <td><div align="center" class="style93 style54 style52 style84"><strong>
                  <input  name="image2" type="image" src="user_Pic.jsp?id=<%=k%>" width="100" height="100" alt="Submit" />
              </strong></div></td>
              <td><div align="center" class="style93 style52 style48 style84"><strong><%=s3 %></strong></div></td>
              <td><div align="center" class="style93 style52 style48 style84"><strong><%=s7%></strong></div></td>
              <td><div align="center" class="style93 style54 style52 style48 style84"><strong><%= s5%></strong></div></td>
              <td><div align="center" class="style93 style54 style52 style48 style84"><strong><%= s4%></strong></div></td>
            </tr>
            <%
		  }
	  }
		
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
          <table width="444" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="462"><div align="right"><a href="adminmain1.jsp" class="style39"><strong>Back</strong></a></div></td>
            </tr>
          </table>
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



