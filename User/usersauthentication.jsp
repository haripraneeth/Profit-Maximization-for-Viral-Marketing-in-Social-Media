<title>usersauthentication</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%
	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");
	String site = request.getParameter("site");

	try {
					application.setAttribute("user", name);
			
					String sql = "SELECT * FROM user where (username='"+name+"' and password='"+pass+"') and site='"+site+"' ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								String sql1="SELECT * FROM user where (username='"+name+"' and site='"+site+"')  and status='Authorized' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									int i = rs1.getInt(1);
									//String sitename=rs1.getString(10);
									application.setAttribute("usite", site);
									application.setAttribute("upass", pass);
							
									application.setAttribute("uid", i);
									response.sendRedirect("notifications.jsp");
									//response.sendRedirect("usersmain.jsp");
								}
								else
								{
										%>
									<br/>
									<p>You are not Authorized by the Social Admin, Please wait!! </p>
									<br/><br/><a href="userslogin.jsp">Back</a>
									<%
								 }
					
					}
					else
					{
						response.sendRedirect("usersrelogin.jsp");
					}
				
				

	}
	 catch (Exception e)
	  {
		out.print(e);
		e.printStackTrace();
	}
%>


