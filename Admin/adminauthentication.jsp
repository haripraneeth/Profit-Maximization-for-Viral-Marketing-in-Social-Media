<title>adminauthentication</title>
<%@ include file="connect.jsp" %>

<%
   
    try
	{
	
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("admin",username);
			
			String sql="SELECT * FROM admin where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("adminmain1.jsp");
			}
			else
			{
					response.sendRedirect("adminre-login.jsp");
				
			}
	
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>