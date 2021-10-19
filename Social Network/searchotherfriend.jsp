<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>searchotherfriend</title>
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
.style51 {color: #9900CC}
.style58 {color: #FF00FF}
.style3 {font-size: 23px}
.style44 {font-family: Georgia, "Times New Roman", Times, serif;
	color: #FF00FF;
	font-weight: bold;
	font-size: 14px;
}
.style49 {color: #006600;
	font-weight: bold;
	font-size: 14px;
}
.style53 {color: #9900CC; font-size: 24px; }
.style71 {font-family: Arial, Helvetica, sans-serif; color: #FF00FF; font-weight: bold; font-size: 14px; }
.style75 {color: #00CC00;
	font-weight: bold;
}
.style76 {	color: #000000;
	font-weight: bold;
	font-size: 12px;
}
.style88 {font-family: Arial, Helvetica, sans-serif}
.style89 {color: #FF0000}
.style90 {color: #000000}
.style91 {font-size: 12px}
.style92 {color: #666666}
.style93 {
	font-size: 14px;
	color: #666666;
	font-weight: bold;
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
      <div class="mainbar">
        <div class="col_w900 col">
          <div class="col_allw280 fp_service_box">
            <table width="492" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="484"><span class="style53 style92">Search Friends In Cross Sites..</span></td>
              </tr>
            </table>
            <p class="style51">&nbsp;</p>
            <form id="form1" name="form1" method="post" action="searchotherfriend.jsp">
              <table width="459" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="204"><div align="center"><span class="style49">Enter Friend Name :</span></div></td>
                  <td width="174"><input type="text" name="keyword" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input class="art-button" name="submit" type="submit" value="Search" /></td>
                </tr>
                <tr>
                  <td height="80">&nbsp;</td>
                  <td><div align="right"><a href="usersmain.jsp" class="style44"><strong>Back</strong></a></div></td>
                </tr>
              </table>
            </form>
          </div>
          <div class="col_allw280 fp_service_box">
            <p>&nbsp;</p>
          </div>
          <div class="col_allw280 fp_service_box col_last">
            <div class="con_tit_02 style3"></div>
          </div>
          <div class="content_panel_3col_section margin_right_60">
            <div class="header_01">
              <table width="751" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="743"><p align="left" class="style53"><span class="style92">Results Found.</span></p></td>
                </tr>
              </table>
              <p>
                <%
			
	  			
						String s1=null,ss1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String user = (String)application.getAttribute("user");
						String usite = (String)application.getAttribute("usite");
						String username = request.getParameter("keyword");
						int i=0;
						try 
						{
							
						
						
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
							
							
								
									if(username!=null)
										{
											
												
											String querys="select * from user where username='"+user+"' and site='"+usite+"'"; 
											Statement stt=connection.createStatement();
											ResultSet rss=stt.executeQuery(querys);
											if ( rss.next()==true )
											{
										
												ss1=rss.getString(11);
											}
												if(ss1.equals("Assigned"))
												{
											
											Statement st3 = connection.createStatement();
											String query3 ="insert into fsearch(user,keyword,date) values('"+user+"','"+username+"','"+dt+"')";
											st3.executeUpdate (query3); 	   
								
							
									
									
									String query="select * from user where ((username!='"+user+"') and ( site!='"+usite+"'  and username  LIKE '%"+username+"%'))"; 
									Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(query);
									while ( rs.next() )
									{
										i=rs.getInt(1);
										s1=rs.getString(2);
										s2=rs.getString(4);
										s3=rs.getString(5);
										s4=rs.getString(6);
										s5=rs.getString(7);
										s6=rs.getString(8);
										s7=rs.getString(9);
										s8=rs.getString(10);
										
										
										
			  %>
              </p>
              <table border="3" width="518" style="margin:5px 10px 10px 5px;">
                <tr>
                  <td rowspan="8" width="148" ><input  name="image2" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:150px; height:150px;" class="image_wrapper" />
                  </td>
                  <td width="118" height="27" align="left"><div align="left" class="style58"><span class="style93" style="margin-left:20px;">User Name :</span></div></td>
                  <td width="249" style="margin-left:20px; color:#000000;"><div align="left" class="style75 style90 style91"><%=s1%></div></td>
                </tr>
                <tr>
                  <td height="25" align="left"><div align="left" class="style58"><span class="style93" style="margin-left:20px;">E-Mail :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75 style90 style91"><%=s2%></div></td>
                </tr>
                <tr>
                  <td height="30" align="left"><div align="left" class="style58"><span class="style93" style="margin-left:20px;">Mobile :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75 style90 style91"><%=s3%></div></td>
                </tr>
                <tr>
                  <td height="22" align="left"><div align="left" class="style58"><span class="style93" style="margin-left:20px;">Address :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75 style90 style91"><%=s4%></div></td>
                </tr>
                <tr>
                  <td height="26" align="left"><div align="left" class="style58"><span class="style93" style="margin-left:20px;">DOB :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75 style90 style91"><%=s5%></div></td>
                </tr>
                <tr>
                  <td height="24" align="left"><div align="left" class="style58"><span class="style93" style="margin-left:20px;">Gender :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75 style90 style91"><%=s6%></div></td>
                </tr>
                <tr>
                  <td height="29" align="left"><div align="center" class="style58"><span class="style93">Social Site :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75 style90 style91"><%=s8%></div></td>
                </tr>
                <tr>
                  <td height="46" align="left"><div align="left" class="style58"><span class="style93" style="margin-left:20px;">Status :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><p align="left" class="style76"><%=s7%><span style="float:right"><a href="updaterequest2.jsp?rname=<%=s1%>&amp;site=<%=s8%>">
                      <input class="art-button" name="button2" type="button" value="Request" />
                  </a></span></p></td>
                </tr>
              </table>
              <%
						}
						}
						 else
						{
							%>
              <br/>
              <p align="left" class="style71 style89">You Dont Have Permission to Search in Other Sites, Please wait !! </p>
              <p class="style88">
                <%
						
							
						}
						
	  					}
					}catch(Exception e){
								e.getMessage();
							}
	  
				  
				  %>
              </p>
              <p class="style88">&nbsp; </p>
            </div>
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


