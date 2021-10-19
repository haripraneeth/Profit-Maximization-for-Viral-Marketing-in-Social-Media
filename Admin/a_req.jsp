<title>a_req</title>	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   
			String user=request.getParameter("user");
			String price=request.getParameter("price");
			String months=request.getParameter("months");
			String social=request.getParameter("social");
			
			
			
							 
							 
						
			
			
			String str = "Permitted";
       		Statement st1 = connection.createStatement();
       		String query1 ="update trequest set status='"+str+"' where user='"+user+"' ";
	   		st1.executeUpdate (query1);
			
			connection.close();
			response.sendRedirect("socialrentreq.jsp");  
			
			                
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
