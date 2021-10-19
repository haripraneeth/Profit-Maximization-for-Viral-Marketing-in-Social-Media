<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>addproducts2</title>
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
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style30 {color: #FF00FF}
.style35 {font-size: 25px}
.style36 {font-size: 25px; color: #FF00FF; }
.style38 {font-size: 15px; color: #00CC00;}
.style8 {font-size: 16px}
.style39 {color: #333333}
.style40 {font-size: 15px}
.style41 {color: #666666}
.style42 {font-size: 15px; color: #FF00FF; }
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
          <h2 class="title style30 style35"><a href="#" class="style36"><span class="style36 style35 style39">Adding Products..</span></a></h2>
          <div class="entry">
		  
<%@page import ="java.util.*"%>           
<%@ include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0,m=1;
	String us=(String)application.getAttribute("user");
	String site=(String)application.getAttribute("usite");
	String months=request.getParameter("months");
			
	
	                    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");			
						Date now = new Date();
			            String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;

 try 
	{		
      	                    String query="select * from purchase1 where uname='"+us+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
			                {
				                
								
								s4=rs.getString(4);// exp date
								
								
								
								Date exp_date = sdfDate.parse(s4);
								Date todays_date = sdfDate.parse(strDate);
								
								out.print("Current Data="+todays_date);
								out.print("Expiry Data="+exp_date);
								
								
								if( exp_date.compareTo(todays_date) >0 )
							    {
							%>	
							
							
           

		  
		    <form action="addproducts3.jsp" method="post" enctype="multipart/form-data" id="s" ">
               		
			    <table width="433" border="0" align="center">
                
                <tr>
                  <td width="122" height="36"><div align="justify"><span class="style8 style38 style41"><span class="style42 style30"> Product Name </span></span> </div></td>
                  <td width="301"><label>
                    <input type="text" id="t1" name="name" />
                  </label></td>
                </tr>
                
                <tr>
                  <td height="35"><div align="justify"><span class="style8 style38 style39"><span class="style42">Price </span></span></div></td>
                  <td><label>
                    <input type="text" id="t3" name="price" />
                  </label></td>
                </tr>
                <tr>
                  <td height="53"><div align="justify"><span class="style8 style38 style39"><span class="style42">Uses</span></span></div></td>
                  <td><label>
                    <textarea name="uses" cols="40" rows="2" id="textarea"></textarea>
                  </label></td>
                </tr>
                <tr>
                  <td height="51"><div align="justify"><span class="style8 style38 style39"><span class="style42"> Description </span></span></div></td>
                  <td><label>
                    <textarea name="desc" cols="40" rows="5" id="t2"></textarea>
                  </label></td>
                </tr>
                <tr>
                  <td height="38"><div align="justify"><span class="style8 style38 style39"><span class="style42"> Select Image </span></span></div></td>
                  <td><input type="file" id="userImage" name="image" style="width:100%" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="47">&nbsp;</td>
                  <td><div align="left">
                      <input type="submit" name="Submit" value="Add Post" />
                  </div></td>
                </tr>
		  
		  <%
		  }
		  else{


out.print("Post Date Expired");

}
			 
		 	
	  }
	  
	  else{
	  out.print("Please Purchase Server Space");
	  }
	     		 
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
              </table> 
            </form>
            <div align="left"><a href="usersmain.jsp" class="style11"><strong>Back</strong></a></div>
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


