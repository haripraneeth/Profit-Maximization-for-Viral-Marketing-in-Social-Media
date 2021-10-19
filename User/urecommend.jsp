<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>urecommend</title>
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
.style8 {	color: #999999;
	font-weight: bold;
}
.style90 {color: #33FF00}
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
      <div class="mainbar">
        <div class="entry"><span class="content_panel_3col_section margin_right_60">
		</div>
<div id="page">
	<div id="page-bgtop">
		<div id="content">
			<div class="post">
			
				<h2 class="title"><a href="#"><span class="style57 style86">Recommend on Post <span class="style88"><%=request.getParameter("p_Name")%></span></span></a></h2>
		        <div class="entry"><span class="content_panel_3col_section margin_right_60">
                    <%
		 try{
					 String p_Name = request.getParameter("p_Name");
					 String p_Categorie = request.getParameter("p_Categorie");%>
          </span>
            <form action="U_Recommend1.jsp" method="post" id="form1">
              <table width="428" border="0">
              <tr>
                <td width="188" height="35"><div align="center" class="style14 style90"><strong>Post Name </strong></div></td>
                <td width="230"><label>
                  <input type="text" name="p_Name" value="<%=p_Name%>" readonly="readonly" />
                </label></td>
              </tr>
              <tr> </tr>
              <tr>
                <td width="188" height="35"><div align="center" class="style14 style90"><strong>Post Name </strong></div></td>
                <td width="230"><label>
                  <input type="text" name="p_Categorie" value="<%=p_Categorie%>" readonly="readonly" />
                </label></td>
              </tr>
              <tr>
                <td height="44"><div align="center" class="style8 style14 style90">Recommend To </div></td>
                <td><select name="recommendto" >
                    <option>Select Friend</option>
                    <%


	int uid=0;
	String uuu=null,site=null,us=null;
	String uname1 = (String)application.getAttribute("uname");
	Statement stmt1=connection.createStatement();
	String strQuery1 = "select username from user where username!='"+uname1+"'";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
		//uid = rs1.getInt(1);
		String username = rs1.getString(1);
		
		Statement stmt2=connection.createStatement();
		String strQuery2 = "select requestfrom,requestto from frequest where ((requestfrom ='"+uname1+"' and  requestto='"+username+"') ||(requestto='"+uname1+"' and requestfrom ='"+username+"'))and status ='Accepted' ";
		ResultSet rs2 = stmt2.executeQuery(strQuery2);
		if(rs2.next())
		{
		
			if(rs2.getString(1).equals(uname1))
			{
				uuu = rs2.getString(2);
			
			}
			else
			{
				uuu = rs2.getString(1);
				
			}
%>
                    <option> <%=uuu%></option>
                    <%
		}
	}
%>
                </select></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><label>
                    <input type="hidden" value="<%=us%>" name="rectosite"/>
                    <input type="submit" name="Submit" value="Recommend" />
            </form>
          <%



}

catch(Exception e)
{
out.println(e.getMessage());
}
%>
            </label>
          </td>
            </tr>
            </table>
            <p>&nbsp;</p>
          <div align="right"><a href="SearchPosts.jsp" class="style11"></a><a href="usersmain.jsp" class="style11"><strong>Back</strong></a></div>
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


