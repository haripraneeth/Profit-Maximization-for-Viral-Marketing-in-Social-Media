<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style43 {color: #FF00FF}
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Password Re-use Notifications..</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2038 Carpet
http://www.tooplate.com/view/2038-carpet
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<script type="text/javascript" src="js/contentslider.js">

/***********************************************
* Featured Content Slider- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

</script>

<style type="text/css">
<!--
.style1 {font-size: 4px}
.style2 {
	font-size: 27px;
	color: #00CC00;
}
.style3 {font-size: 23px}
.style35 {font-size: 22.5px}
.style36 {
	font-size: 24px;
	color: #003300;
}
.style39 {
	color: #6600FF;
	font-size: 14px;
}
.style41 {font-size: 14px}
.style42 {
	color: #CC0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>

<div id="tooplate_wrapper">
	<div id="tooplate_main_wrapper"><br/><h1 class="style2">Shadow Attacks based on Password Reuses: A Quantitative Empirical Analysis</h1>
		<div id="tooplate_header">
			<div class="h10" id="site_title"><h1 class="style1">&nbsp;</h1>
			</div>
			<div id="tooplate_menu">
				<ul>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="index.html">Home</a></li>
					<li><a href="UserLogin.jsp" class="current">User</a></li>
					<li><a href="ServerLogin.jsp">Admin</a></li>
					<li><a href="#"></a></li>
				</ul>    	
			</div> <!-- end of tooplate_menu -->
		</div> <!-- end of forever header -->
		
		<div id="tooplate_middle">
			<div id="mid_slider">
				<div id="slider1" class="sliderwrapper">
	
					<div class="contentdiv">
						<img src="images/slider/image_00.jpg" alt="Image 01" />
					</div>
		
					<div class="contentdiv">
						<img src="images/slider/image_01.jpg" alt="Image 02" />
					</div>            
					
					<div class="contentdiv">
						<img src="images/slider/image_02.jpg" alt="Image 03" />
					</div>
					
					<div class="contentdiv">
						<img src="images/slider/image_03.jpg" alt="Image 04" />
					</div>
				
				</div>
				
				<div id="paginate-slider1" class="pagination">
				
				</div>
				
				<script type="text/javascript">
				
				featuredcontentslider.init({
					id: "slider1",  //id of main slider DIV
					contentsource: ["inline", ""],  //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
					toc: "#increment",  //Valid values: "#increment", "markup", ["label1", "label2", etc]
					nextprev: ["", ""],  //labels for "prev" and "next" links. Set to "" to hide.
					revealtype: "click", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
					enablefade: [true, 0.2],  //[true/false, fadedegree]
					autorotate: [true, 3000],  //[true/false, pausetime]
					onChange: function(previndex, curindex){  //event handler fired whenever script changes slide
						//previndex holds index of last slide viewed b4 current (1=1st slide, 2nd=2nd etc)
						//curindex holds index of currently shown slide (1=1st slide, 2nd=2nd etc)
					}
				})
				
				</script>
			</div>
			
			<div id="mid_left">
				<div id="mid_title">Password-Based Authentication</div>
				<p>Password-based authentication  is one of the most
					widely used methods to authenticate a user before granting
					accesses to secured websites. 
				The wide adoption of
				  password-based authentication is the result of its low
				  cost and simplicity.</p>
		  </div>
			<div class="cleaner"></div>
		</div> <!-- end of middle -->
		
		<div id="tooplate_main_top"></div>
		<div id="tooplate_main">
			
			<div class="col_w900 col">
			  <div class="col_allw280 fp_service_box">
			    <table width="348" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="340"><span class="style36">Password Re-use Notifications.. </span></td>
                </tr>
              </table>
			  <p>&nbsp;</p>
			  <p>
                <p class="style39">
                  <%
			  try
			  {
			  
			  
 					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String dt = strDate + "   " + strTime;
					   
					   
						  String pass="",address="",email="",pass1="",address1="",email1="",s4="",s5="",s6="";
						  int a=0;
						  
						  String username=(String)application.getAttribute("uname");
						  String usersite=(String)application.getAttribute("usite");
						  String upass=(String)application.getAttribute("upass");
						  
						  String q1="select * from user where username='"+username+"' and site='"+usersite+"'";
						  Statement st1=connection.createStatement();
						  ResultSet rs1=st1.executeQuery(q1);
						  
						  if(rs1.next())
						  {
								pass=rs1.getString(3);
								email=rs1.getString(4);
								address=rs1.getString(6);
								//s1=rs.getString(3);					 
								
									  String q2="select * from user where (password='"+upass+"' and site='"+usersite+"') and username!='"+username+"'";
									  Statement st2=connection.createStatement();
									  ResultSet rs2=st2.executeQuery(q2);
									  
									  if(rs2.next()==true)
									  {
						  
												a=1;
												
									  }
						  
						  }
						  int b=0;
						  String q3="select * from user where username='"+username+"' and site!='"+usersite+"'";
						  Statement st3=connection.createStatement();
						  ResultSet rs3=st3.executeQuery(q3);
						  
						  if(rs3.next())
						  {
								pass1=rs3.getString(3);
								email1=rs3.getString(4);
								address1=rs3.getString(6);
								//s1=rs.getString(3);					 
								
									  String q4="select * from user where ((username='"+username+"' and password='"+upass+"') and site!='"+usersite+"')";
									  Statement st4=connection.createStatement();
									  ResultSet rs4=st4.executeQuery(q4);
									  
									  if(rs4.next()==true)
									  {
						  						b=1;
											
									  }
						  
						  }
						  
						  if(a==1 && b==1)
						  {
						  
						  			/*Statement st201 = connection.createStatement();
									String query201 ="select * from attacks where user='"+username+"'and type='intra_sites'";
									ResultSet rs201=st201.executeQuery (query201);
									if(rs201.next()==true)
									{
											/*Statement st22 = connection.createStatement();
											String query22 ="select * from results where sites='intra_sites'";
											ResultSet rs22=st22.executeQuery (query22);
											if(rs22.next()==true)
											{
											
													int s_initial=rs22.getInt(3);
													int s_total=s_initial+1;
											
													Statement st23 = connection.createStatement();
													String query23="update results set counts='"+s_total+"' where sites='intra_sites'";
													st23.executeUpdate (query23);
											}
									}
									else
									{*/
									
												String intra_sites="intra_sites";
												
												PreparedStatement ps=connection.prepareStatement("insert into attacks(user,site,pass,type,date) values(?,?,?,?,?)");
									
												ps.setString(1,username);
												ps.setString(2,usersite);
												ps.setString(3,pass);	
												ps.setString(4,intra_sites);
												ps.setString(5,dt);
												ps.executeUpdate();
												
												Statement st212 = connection.createStatement();
												String query212 ="select * from results where sites='intra_sites'";
												ResultSet rs212=st212.executeQuery (query212);
												if(rs212.next()==true)
												{
												
														int s_initial212=rs212.getInt(3);
														int s_total212=s_initial212+1;
												
														Statement st213 = connection.createStatement();
														String query213="update results set counts='"+s_total212+"' where sites='intra_sites'";
														st213.executeUpdate (query213);
												}
										
									
									
									/*
									Statement st202 = connection.createStatement();
									String query202 ="select * from attacks where user='"+username+"'and type='cross_sites'";
									ResultSet rs202=st202.executeQuery (query202);
									if(rs202.next()==true)
									{*/
									
											/*
											Statement st24 = connection.createStatement();
											String query24 ="select * from results where sites='cross_sites'";
											ResultSet rs24=st24.executeQuery (query24);
											if(rs24.next()==true)
											{
											
													int s_initial24=rs24.getInt(3);
													int s_total24=s_initial24+1;
											
													Statement st25 = connection.createStatement();
													String query25="update results set counts='"+s_total24+"' where sites='cross_sites'";
													st25.executeUpdate (query25);
											}
									
									
									}
									else
									{*/
												
												String cross_sites="cross_sites";
												
												PreparedStatement ps1=connection.prepareStatement("insert into attacks(user,site,pass,type,date) values(?,?,?,?,?)");
									
												ps1.setString(1,username);
												ps1.setString(2,usersite);
												ps1.setString(3,pass);	
												ps1.setString(4,cross_sites);
												ps1.setString(5,dt);
												ps1.executeUpdate();
												
												Statement st224 = connection.createStatement();
												String query224 ="select * from results where sites='cross_sites'";
												ResultSet rs224=st224.executeQuery (query224);
												if(rs224.next()==true)
												{
												
														int s_initial224=rs224.getInt(3);
														int s_total224=s_initial224+1;
												
														Statement st225 = connection.createStatement();
														String query225="update results set counts='"+s_total224+"' where sites='cross_sites'";
														st225.executeUpdate (query225);
												}
									// }
									
									
						  					out.print("<br>Please change your password!!..<br>");
											%>
											</span></p>
											<table width="388" border="0" cellspacing="2" cellpadding="2">
											<tr>
											<td width="380"><span class="style41">
											<p class="style42">Other users are using this password in this site and you are using this for your other sites accounts too!!..</p>
											<p class="style42">&nbsp;</p>
											</span>											  <p align="right" class="style42 style43"><span class="style41"><a href="UserMain.jsp"><strong>Go To User Main </strong></a></span></p></td>
											</tr>
											</table>
											<p>&nbsp;</p>
											<span class="style41"></span><span class="style39">
											<%
						  
						  
						  }
						  else if(a==1)
						  {
						  
						  
						  			/*Statement st20 = connection.createStatement();
									String query20 ="select * from attacks where user='"+username+"'and type='intra_sites'";
									ResultSet rs20=st20.executeQuery (query20);
									if(rs20.next()==true)
									{
						  
						  					out.print("<br>Please change your password!!..<br>");
											%>
											</span></p>
											<table width="388" border="0" cellspacing="2" cellpadding="2">
											<tr>
											<td width="380"><span class="style41">
											<p class="style42">Other users are using this password in this site!!..</p>
											<p class="style42">&nbsp;</p>
											</span><p align="right" class="style42"><a href="UserMain.jsp"><strong>Go To User Main </strong></a></p>
											</td>
											</tr>
											</table>
											<p>&nbsp;</p>
											<span class="style41"></span><span class="style39">
											<%
										}
										else
										{*/
													Statement st26 = connection.createStatement();
													String query26 ="select * from results where sites='intra_sites'";
													ResultSet rs26=st26.executeQuery (query26);
													if(rs26.next()==true)
													{
													
															int s_initial26=rs26.getInt(3);
															int s_total26=s_initial26+1;
													
															Statement st23 = connection.createStatement();
															String query23="update results set counts='"+s_total26+"' where sites='intra_sites'";
															st23.executeUpdate (query23);
													}
													String intra_site2="intra_sites";
													
													PreparedStatement ps2=connection.prepareStatement("insert into attacks(user,site,pass,type,date) values(?,?,?,?,?)");
										
													ps2.setString(1,username);
													ps2.setString(2,usersite);
													ps2.setString(3,pass);	
													ps2.setString(4,intra_site2);
													ps2.setString(5,dt);
													ps2.executeUpdate();
													
						  					out.print("<br>Please change your password!!..<br>");
											%>
											</span></p>
											<table width="388" border="0" cellspacing="2" cellpadding="2">
											<tr>
											<td width="380"><span class="style41">
											<p class="style42">Other users are using this password in this site!!..</p>
											<p class="style42">&nbsp;</p>
											<p align="right" class="style42"><a href="UserMain.jsp"><strong>Go To User Main </strong></a></p>
											</span></td>
											</tr>
											</table>
											<p>&nbsp;</p>
											<span class="style41"></span><span class="style39">
											<%
									//	}
										
						  
						  
						  }
						   else if(b==1)
						  {
						  /*
						  			Statement st29 = connection.createStatement();
									String query29 ="select * from attacks where user='"+username+"' and type='cross_sites'";
									ResultSet rs29=st29.executeQuery (query29);
									if(rs29.next()==true)
									{
													
													
													out.print("<br>Please change your password!!..<br>");
															%>
															</span></p>
															<table width="388" border="0" cellspacing="2" cellpadding="2">
															<tr>
															<td width="380"><span class="style41">
															<p class="style42">You are using this password  for your other sites accounts too!!..</p>
															</span></td>
															</tr>
															</table>
															<p align="right"><span class="style42"><a href="UserMain.jsp"><strong>Go To User Main </strong></a></span></p>
															<span class="style41"></span><span class="style39">
															<%
									}	
									else
									{*/
													Statement st27 = connection.createStatement();
													String query27 ="select * from results where sites='cross_sites'";
													ResultSet rs27=st27.executeQuery (query27);
													if(rs27.next()==true)
													{
													
															int s_initial27=rs27.getInt(3);
															int s_total27=s_initial27+1;
													
															Statement st28 = connection.createStatement();
															String query28="update results set counts='"+s_total27+"' where sites='cross_sites'";
															st28.executeUpdate (query28);
													}
													String cross_site2="cross_sites";
													
													PreparedStatement ps3=connection.prepareStatement("insert into attacks(user,site,pass,type,date) values(?,?,?,?,?)");
										
													ps3.setString(1,username);
													ps3.setString(2,usersite);
													ps3.setString(3,pass1);	
													ps3.setString(4,cross_site2);
													ps3.setString(5,dt);
													ps3.executeUpdate();
													
													out.print("<br>Please change your password!!..<br>");
															%>
															</span></p>
															<table width="388" border="0" cellspacing="2" cellpadding="2">
															<tr>
															<td width="380"><span class="style41">
															<p class="style42">You are using this password  for your other sites accounts too!!..</p>
															</span></td>
															</tr>
															</table>
															<p align="right"><span class="style42"><a href="UserMain.jsp"><strong>Go To User Main </strong></a></span></p>
															<span class="style41"></span><span class="style39">
															<%
										//}	
													
										  
										  
						  }
						  else
						  {
						  		response.sendRedirect("usersmain.jsp");
						  }
						  
						  
						  
			  }
			  catch(Exception e)
			  {
			  	out.print(e);
			  }
			   %>
                </span></p>
			  </div>
			  <div class="col_allw280 fp_service_box">
			    <p>&nbsp;</p>
			  </div>
					<div class="col_allw280 fp_service_box col_last">
						<div class="con_tit_02 style3">
						  <p>Sidebar Menu </p>
						  <p>&nbsp;</p>
						</div>
						<img src="images/onebit_16.png" alt="Image" />
						<ul><li>
                          <p><a href="notifications.jsp"><strong>Home</strong></a></p>
						</li>
						  <li>
						    <p><a href="index.html"><strong>Log Out</strong></a></p>
					      </li>
					  </ul>
					</div>
					<div class="cleaner h60"></div>
			  <div class="col_allw280 fp_service_box">
						<div class="con_tit_02 style3">Intra-Site Password Reuses </div>
						<img src="images/onebit_18.png" alt="Image" />
						<p align="justify">A user creates accounts with the same password on 
                          the same websites  is referred as (ISPR).</p>
                        <p align="justify">&nbsp;</p>
			  </div>
			  <div class="col_allw280 fp_service_box">
			    <div class="con_tit_02 style35">Cross-Site Password Reuses</div>
                <img src="images/onebit_15.png" alt="Image" />
                <p> A user creates accounts with the 
                  same password across different websites is referred as (CSPR).</p>
                <p align="justify">&nbsp;</p>
		      </div>
			  <div class="col_allw280 fp_service_box col_last">
						<div class="con_tit_02 style3">Concepts</div>
						<p>Password, Quantitative.</p>
						<p>Shadow Attack, Empirical Analysis.</p>
					    <p>Intra-Site &amp; Cross-Site Password Reuses.</p>
		      </div>
					
					<div class="cleaner"></div>
		  </div>
			
				<div class="col_w900 col_w900_last">
					<div class="con_tit_01"><strong>Password-Based Authentication</strong></div>
					<img src="images/tooplate_image_01.png" alt="Image 01" class="image_wrapper image_fl" />
					<p align="justify"><strong>Password-Based Authentication </strong>is one of the most 
					  widely used methods to authenticate a user before granting 
					  accesses to secured websites. The wide adoption of 
					  password-based authentication is the result of its low 
					  cost and simplicity: a user can enter his or her passwords 
					  anywhere by a keyboard or a touch screen without any 
					  other extra devices. The popularity of passwords and 
					  the proliferation of websites, however, lead to a concern 
					  on password reuses between accounts on different websites or even on the same websites.</p>
					<div class="cleaner"></div>
				</div>
			
			<div class="cleaner"></div>
		</div> <!-- end of main -->
		<div id="tooplate_main_bot"></div>
		
		<div id="tooplate_footer"></div>
	</div> <!-- main wrapper -->
</div> <!-- wrapper  -->

</body>
</html>