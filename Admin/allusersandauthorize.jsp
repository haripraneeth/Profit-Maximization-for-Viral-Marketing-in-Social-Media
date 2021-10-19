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
.style5 {	color: #666666;
	font-size: 24px;
}
.style31 {color: #0000FF}
.style37 {color: #333333}
.style12 {	color: #666666;
	font-size: 26px;
}
.style15 {color: #FF00FF}
.style22 {font-size: 16px; color: #FFFFFF; }
.style30 {color: #FFFFFF}
.style54 {font-size: 15px}
.style65 {color: #666666}
.style39 {color: #9900FF;
	font-weight: bold;
	font-size: 14px;
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
        <form id="form1" name="form1" method="post" action="adminauthentication.jsp">
          <h3>
            <h3><span class="style12 style37"> Authorize  Users..</span></h3>
            <table width="896" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td  width="63"  valign="middle" height="34" style="color: #ffffff;"><div align="center" class="style5 style54 style65">Si No. </div></td>
                <td  width="146" valign="middle" height="34" style="color: #ffffff;"><div align="center" class="style5 style54 style65">User Image</div></td>
                <td  width="127" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style54 style65">Username</div></td>
                <td  width="116" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style54 style65">Password</div></td>
                <td  width="145" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style54 style65">Email</div></td>
                <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style54 style65">Site</div></td>
                <td  width="118"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style54 style65">Status</div></td>
              </tr>
              <%@ include file="connect.jsp" %>
              <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						String site=(String)application.getAttribute("site");
						   	String query="select * from user where site='"+site+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s8=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(7);
								s4=rs.getString(5);
								s5=rs.getString(10);
								s6=rs.getString(9);
								s7=rs.getString(11);		
						
					%>
              <tr>
                <td height="0" align="center"  valign="middle"><p class="style22 style5 style37 style58">&nbsp;</p>
                    <div align="center" class="style22 style5 style37 style58"> <span class="style15">
                      <%out.println(i);%>
                      </span>
                        <p class="style4">&nbsp; </p>
                  </div></td>
                <td width="146" rowspan="1" align="center" valign="middle" ><div class="style22 style5 style37 style58" style="margin:10px 13px 10px 13px;" >
                    <div align="left"><a class="#" id="img1" href="#" >
                      <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:120px; height:120px;" />
                    </a> </div>
                </div></td>
                <td height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style58"> <span class="style15">
                    <%out.println(s1);%>
                </span></div></td>
                <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style58"> <span class="style15">
                    <%out.println(s8);%>
                </span></div></td>
                <td height="0" align="center"  valign="middle"><p class="style22 style5 style20 style37 style58">&nbsp;</p>
                    <div align="center" class="style15"> <span class="style4">
                      <%out.println(s2);%>
                      </span>
                        <p class="style4">&nbsp;</p>
                  </div></td>
                <td height="0" align="center"  valign="middle"><p class="style22 style5 style20 style37 style58">&nbsp;</p>
                    <div align="center" class="style22 style5 style20 style37 style58"> <span class="style15">
                      <%out.println(s5);%>
                      </span>
                        <p class="style4">&nbsp; </p>
                  </div></td>
                <%
						if(s6.equalsIgnoreCase("waiting"))
						{
						
						%>
                <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style5 style20 style30 style37">
                    <div align="center" class="style20 style37 style46">
                      <p><strong><a href="userstatus.jsp?id=<%=i%>" class="style31"></a></strong></p>
                      <p><a href="userstatus.jsp?id=<%=i%>" class="style15 style37"><strong>waiting</strong></a></p>
                    </div>
                </div></td>
                <%
						}
						else
						{
						%>
                <td width="17" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style15"> <span class="style15">
                    <%out.println(s6);%>
                </span> </div></td>
                <%
						}
						
						%>
              </tr>
              <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
          </h3>
          <div align="left"><a href="socialmain.jsp" class="style39"><strong>Back</strong></a></div>
          <h3>&nbsp;</h3>
        </form>
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



