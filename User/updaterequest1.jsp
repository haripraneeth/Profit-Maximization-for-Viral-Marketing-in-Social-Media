<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
<html><title>updaterequest1</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
  		int mid = Integer.parseInt(request.getParameter("rid"));
		int s_initial=0,s_total=0,c_initial=0,c_total=0;
		String tosite=request.getParameter("si");
		String fromsite=(String)application.getAttribute("usite");
		
   		try {
	   		
			
			
	   		String str = "Accepted";
				
       		Statement st1 = connection.createStatement();
       		String query1 ="update frequest set status='"+str+"' where id="+mid+" ";
	   		st1.executeUpdate (query1);
			
			
						
						if(tosite.equals(fromsite))
						{
								
								Statement st2 = connection.createStatement();
								String query2 ="select * from results where sites='similar_site'";
								ResultSet rs2=st2.executeQuery (query2);
								if(rs2.next()==true)
								{
								
										s_initial=rs2.getInt(3);
										s_total=s_initial+1;
								
										Statement st = connection.createStatement();
										String query ="update results set counts='"+s_total+"' where sites='similar_site'";
										st.executeUpdate (query);
								}
						}
						else
						{
								
								Statement st3 = connection.createStatement();
								String query3 ="select * from results where sites='other_site'";
								ResultSet rs3=st3.executeQuery (query3);
								if(rs3.next()==true)
								{
								
										c_initial=rs3.getInt(3);
										c_total=c_initial+1;
								
										Statement st4 = connection.createStatement();
										String query4 ="update results set counts='"+c_total+"' where sites='other_site'";
										st4.executeUpdate (query4);
								}
						
						
						}
			
			
			
	   		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
		
   		response.sendRedirect("viewrequest.jsp");  
	
	%>
</body>
</html>