<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>userregisterauthentication</title>
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
.style37 {color: #333333}
.style10 {color: #FF00FF;
	font-weight: bold;
	font-size: 14px;
}
.style18 {font-size: 16px;
	color: #00CC00;
}
.style19 {font-size: 16px; color: #33CC00; }
.style22 {color: #0066FF}
.style29 {color: #9900FF;
	font-size: 24px;
}
.style40 {color: #666666}
.style41 {color: #666666; font-weight: bold; font-size: 14px; }
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
        <form id="form1" name="form1" method="post" action="">
          <div class="col_allw280 fp_service_box">
            <table width="431" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="423"><span class="style29 style37"><span class="style40">User Registration Status.. </span></span></td>
              </tr>
            </table>
            <table width="503" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="495" height="209"><p class="style18 style22"><span class="header_01">
                    <label for="name">
                    <%@ include file="connect.jsp" %>
                    <%@ page import="java.io.*" %>
                    <%@ page import="java.util.*" %>
                    <%@ page import="com.oreilly.servlet.*" %>
                    <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("images/");
					
					String paramname=null,site=null,uname=null,pass=null,email=null,mobile=null,addr=null,dob=null,gender=null,pincode=null,location=null,image=null,cloud=null,bin = ""; int count=0;
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("uname"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mobile=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("addr"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("site"))
							{
								site=multi.getParameter(paramname);
								
							}
							
						  }
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("images\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from user  where username='"+uname+"' and site='"+site+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                    </label>
                  </span></p>
                    <p class="style18 style40">User Name Already Exist !!.. </p>
                  <p align="left"><a href="usersregister.jsp" class="style41">Back</a></p>
                  <%
				
					   }
					   else
					   {
					   
					   
					   					/*Statement st2 = connection.createStatement();
										String query2 ="select scores from counts where sites='"+site+"'";
										ResultSet rs2=st2.executeQuery (query2);
										if(rs2.next()==true)
										{
											
												int c=rs2.getInt(1);
												int t=c+1;
												Statement st11 = connection.createStatement();
												String query11 ="update counts set scores='"+t+"' where sites='"+site+"'";
												st11.executeUpdate (query11);
												
										}
										else
										{
																						
												int tt=1;
												PreparedStatement ps1=connection.prepareStatement("insert into counts(sites,scores) values(?,?)");
												ps1.setString(1,site);
												ps1.setInt(2,tt);
												
												ps1.executeUpdate();
										
										}*/
										String sql2="select tid from chart where social ='"+site+"' ";
										Statement stmt2 = connection.createStatement();
										ResultSet rs2 = stmt2.executeQuery(sql2);
										if(rs2.next()==true);
	{
	   count = rs2.getInt(1);
	  }
										int total=count+1;
										
										String sql1="update  chart set tid='"+total+"' where social ='"+site+"' ";
				Statement stmt1 = connection.createStatement();
				stmt1.executeUpdate(sql1);
										
										
						               
						
						
														
					   
					   
					  String status = "Waiting";
					  String per="Assign";
PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,mobile,address,dob,gender,site,status,image,permission) values(?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mobile);
						ps.setString(5,addr);
						ps.setString(6,dob);
						ps.setString(7,gender);
						ps.setString(8,site);
						ps.setString(9,status);
				
						ps.setBinaryStream(10, (InputStream)fs, (int)(file1.length()));	
				       
						
						if(f == 0)
							ps.setObject(10,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(10,fs1,fs1.available());
						}	
						ps.setString(11,per);
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Registration Successfull....</p>
                  <p class="style19"><a href="userslogin.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
					}}}
					catch (Exception e) 
					{
						e.printStackTrace();
						out.println(e.getMessage());
					}
			%>
                  </p></td>
              </tr>
            </table>
          </div>
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



