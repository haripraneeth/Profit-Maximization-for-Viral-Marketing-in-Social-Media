 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>fixadamount1</title>
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
.style8 {color: #00a3e0}
.style9 {font-size: 15px}
.style16 {color: #00a3e0; font-size: 18px; }
.style3 {font-size: 23px}
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
          <li><a href="userslogin.jsp"><span>Social Networks</span></a></li>
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
              <p>Social Menu </p>
            </div>
            <ul>
              <li> <a href="socialmain.jsp"><strong>Home</strong></a></li>
              <li> <a href="allusersandauthorize.jsp"><strong>List All Users And Authorize </strong></a></li>
              <li> <a href="allfriendrequest.jsp"><strong>List All Friend Request / Response </strong></a></li>
              <li><a href="fixadamount.jsp"><strong>Fix Ad Amount By Period</strong></a></li>
              <li><a href="uploadedproducts.jsp"><strong>View All Ad Products</strong></a></li>
              <li><a href="viewadusers.jsp"><strong>View All Ad Users Details </strong></a> </li>
              <li><a href="Viewprofit1.jsp"><strong>View Profit based on Advertisement </strong></a> </li>
              <li><a href="UserProfitChart.jsp"><strong>View profit in Chart based on User </strong></a> </li>
              <li> <a href="userslogin1.jsp"><strong>Log Out</strong></a></li>
            </ul>
          </div>
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="mainbar">
        <div class="mainbar">
		
          <div class="article">
		  <%@ include file="connect.jsp" %>
                    <%@ page import="java.io.*" %>
                    <%@ page import="java.util.*" %>
                    <%@ page import="com.oreilly.servlet.*" %>
					<%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("images/");
					
					String paramname=null,site=null,uname=null,fdate=null,tdate=null,months=null,price=null; int count=0;
				
						
					
					try {
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							
							if(paramname.equalsIgnoreCase("site"))
							{
								site=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("months"))
							{
								months=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("price"))
							{
								price=multi.getParameter(paramname);
							}
						  }
							
						
						
		
						
					   
					   	
										
					
					 
PreparedStatement ps=connection.prepareStatement("insert into addrates(sname,noofmonths,price) values(?,?,?)");
						
						ps.setString(1,site);
						
						ps.setString(2,months);
						ps.setString(3,price);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Price Fixed Successfully....</p>
                  <p class="style19"><a href="fixadamount.jsp" class="style41"><strong>Back</strong></a>
                        <%
			}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                  </p></td>
              </tr>
            </table>
			 <p align="left" class="style8">&nbsp; </p>
            <p>&nbsp;</p>
            <p align="right"><a href="socialmain.jsp" class="style9"> </a></p>
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


