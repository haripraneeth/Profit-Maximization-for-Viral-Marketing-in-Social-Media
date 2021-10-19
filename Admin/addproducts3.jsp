<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>addproducts3</title>
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
.style30 {color: #FF00FF}
.style35 {font-size: 25px}
.style36 {font-size: 25px; color: #FF00FF; }
.style41 {font-size: 16px}
.style46 {font-size: 12px}
.style51 {font-size: 13px}
.style52 {color: #333333}
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
              <p>User Menu </p>
            </div>
            <ul>
              <li> <a href="usersmain.jsp"><strong>Home</strong></a> </li>
              <li> <a href="usersprofile.jsp"><strong> My Profile</strong></a></li>
              <li> <a href="searchfriend.jsp"><strong>Search Friends</strong> </a> </li>
              <li> <a href="viewrequest.jsp"><strong>Friend Requests</strong> </a> </li>
              <li> <a href="umyfriends.jsp"><strong>My Friends</strong></a></li>
              <li><a href="ViewFixedRates.jsp"><strong>View Ad Rates</strong></a></li>
              <li><a href="ViewPurchasedRates.jsp"><strong>View Purchased Ad Rates</strong></a></li>
              <li> <a href="searchproducts1.jsp"><strong>Search Products</strong></a></li>
              <li> <a href="addproducts2.jsp"><strong>Add Products</strong></a></li>
              <li><a href="uploadedproducts3.jsp"><strong>My Uploaded Products</strong></a></li>
              <li><a href="viewcart.jsp"><strong>Cart Products</strong></a></li>
              <li><a href="manageaccount.jsp"><strong>Manage Account </strong></a></li>
              <li><a href="purchaselist.jsp"><strong>Purchased Products </strong></a></li>
              <li> <a href="userslogin.jsp"><strong>Log Out</strong></a> </li>
            </ul>
          </div>
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="mainbar">
        <div class="post">
          <h2 class="title style30 style35"><a href="#" class="style36"><span class="style36 style35 style52">Adding Posts Status..</span></a></h2>
          <div class="entry">
            <div class="templatemo_h_line"> </div>
            <h1>
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
            <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("images/");
					
					String user=(String)application.getAttribute("user");
					String site=(String)application.getAttribute("usite");
					
					String name=null,price=null,desc=null,image=null,bin = "",uses=null,reviews=null, paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							
							if(paramname.equalsIgnoreCase("name"))
							{
								name=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("price"))
							{
								price=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("uses"))
							{
								uses=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc"))
							{
								desc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("reviews"))
							{
								reviews=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("user"))
							{
								user=multi.getParameter(paramname);
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
							
								
							}		
						}
						
					if(price.equals("price"))
					{
					%>
            </p>
            
              <%
					}	
		
		            else
					{
						FileInputStream fs1 = null;
			 			String query1="select * from posts  where p_name='"+name+"' and p_price='"+price+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
						
							
					if ( rs1.next() )
					   {
					   		%>
            </p>
            <p class="style37 style51 style30"><strong>Product Name Already Exist..</strong></p>
            <p class="style41"><a href="addproducts.jsp" class="style7 style46"><strong>Back</strong></a></p>
            <span class="style41">
            <%
				
					   }
					   else
					   {
					   
					    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String dt = strDate + "   " + strTime;
			
					    int rank =0;
						
				
						
						
						String encryptedTitle = new String(Base64.encode(name.getBytes()));
						String encryptedDesc = new String(Base64.encode(desc.getBytes()));
					   
					  
						 
					PreparedStatement ps=connection.prepareStatement("insert into posts(user,p_name,p_price,p_uses,p_des,p_image,date,site) values(?,?,?,?,?,?,?,?)");
						
						ps.setString(1,user);
						ps.setString(2,name);
						ps.setString(3,price);	
						ps.setString(4,uses);	
						ps.setString(5,desc);
				        ps.setBinaryStream(6, (InputStream)fs, (int)(file1.length()));	
						ps.setString(7,dt);
						ps.setString(8,site);
						
						ps.executeUpdate();
					   
						%>
            </span>
            <p class="style51 style37 style30"><strong>Product Uploaded Successfully..</strong></p>
            <span class="style41">
            </p>
            </span>
            <p class="style41">&nbsp; </p>
            <p class="style41"><a href="addproducts2.jsp" class="style7 style46"><strong>Back</strong></a><a href="addproducts.jsp" class="style7 style42"></a></p>
            <span class="style41">
            <%
			
					
					
					
					
						}}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
            </p>
            </span>
            <p class="style41"></p>
            <p class="style41"> </p>
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


