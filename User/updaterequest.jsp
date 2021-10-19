<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.text.SimpleDateFormat,java.util.Date,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<html><title>updaterequest</title>
<body>
	<center>&nbsp;</center>
	<%
		
  		String rto =request.getParameter("rname");
		String rfrom=(String)application.getAttribute("user");
		String fromsite=(String)application.getAttribute("usite");
   		try {
	   						String query="select * from frequest where( tosite='"+fromsite+"' && fromsite='"+fromsite+"' )&& ((requestfrom='"+rfrom+"' and requestto='"+rto+"')|| (requestfrom='"+rto+"' and requestto='"+rfrom+"'))";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if( rs.next()==true)
					   		{
								String status=rs.getString(5);
								if(status.equals("Accepted"))
								{
									out.print("He is Already Friend....");%>
									<br/><br/><a href="usersmain.jsp">Back</a><%
								}
								else
								{
								
										out.print("Friend Request Already Sent....");%>
										<br/><br/><a href="usersmain.jsp">Back</a><%
								}
							}
							else
							{
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
								Date now = new Date();
													
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
								
								
								/*String query21="select site from user where username='"+rto+"'";
								Statement st21=connection.createStatement();
								ResultSet rs21=st21.executeQuery(query21);
								if( rs21.next()==true)
								{	
								
										 tosite=rs21.getString(1);
								}	*/	
								Statement st1 = connection.createStatement();
								String query1 ="insert into frequest (requestfrom,requestto,dt,status,fromsite,tosite) values ('"+rfrom+"','"+rto+"','"+dt+"','waiting','"+fromsite+"','"+fromsite+"')";
								st1.executeUpdate (query1);
								
								out.print("Friend Request Sent....");%>
								<br/><br/><a href="usersmain.jsp">Back</a><%
								
								}
										
								
	   		
	   		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
		
   		
	
	%>
</body>
</html>