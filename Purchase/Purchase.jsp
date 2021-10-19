<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
 <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
			 <%@ page import ="java.text.SimpleDateFormat" %>
<html><title>updaterequest1</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
  		String sname=request.getParameter("SName");
		int noof=Integer.parseInt(request.getParameter("nmo"));
		int pr=Integer.parseInt(request.getParameter("pr"));
		String us=(String)application.getAttribute("user");
		
   		try {
	   		
			int amount1 =0,amount2 =10,price=0,uamount=0,sub=0;
  			String s1,s2,s3,s4;
			
			String p_Name=request.getParameter("p_Name");
			String user=(String)application.getAttribute("user");
		
            String credit="";
			
			String sql="SELECT account_no,amount FROM account where user='"+user+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
								credit=rs.getString(1);
								uamount=Integer.parseInt(rs.getString(2));				
																
								String sql1="SELECT * FROM addrates where sname='"+sname+"' and noofmonths="+noof+" ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt.executeQuery(sql1);
								if(rs1.next()==true)
								{
										price=rs1.getInt(3);
										if(price>uamount)
										{
											 %><br/><%
											out.println("Insufficiant Amount");
											 %><br/><br/><a href="viewcart.jsp">Back</a><%
										}
										else
										{
												sub=uamount-price;
												String leftamount=String.valueOf(sub);
												String sql2="Update account set amount='"+leftamount+"'  where user='"+user+"' and account_no='"+credit+"'";
												Statement stmt2 = connection.createStatement();
												stmt2.executeUpdate(sql2);
					   			
					   
					    if(noof==1)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("1"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			
			
			 
					    if(noof==2)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("2"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			 if(noof==3)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("3"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			 if(noof==4)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("4"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			 if(noof==5)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("5"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			 if(noof==6)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("6"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			 if(noof==6)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("6"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			 if(noof==7)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("7"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			 if(noof==8)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("8"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			 if(noof==8)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("8"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			 if(noof==9)
						{
						
					   
					   Calendar cal1 = Calendar.getInstance();
							
							
							Calendar cal = Calendar.getInstance();
							
							cal.add(Calendar.MONTH, Integer.parseInt("9"));
							
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							String edate = sdfDate.format(cal.getTime()); // End date
						      
						    String sdate = sdfDate.format(cal1.getTime()); // Start Date

		
			
			PreparedStatement ps=connection.prepareStatement("insert into purchase1(uname,site,fromdate,todate,noofmonths,price) values(?,?,?,?,?,?)");
						
						ps.setString(1,us);
						
						ps.setString(2,sname);
						ps.setString(3,sdate);
						ps.setString(4,edate);
						ps.setInt(5,noof);
						ps.setInt(6,pr);
						
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <br/>
                    <p class="style41">Server Purchased Successfully....</p>
                  <p class="style19"><a href="usersmain.jsp" class="style41"><strong>Back</strong></a>
                        <%
			
		
						}
			
			}
			}}
									else
									{
									
											%><br/><%
											out.print("Ad Rate Details Not Found..");
											 %><br/><br/><a href="viewcart.jsp">Back</a><%
									
									}
					}
					
					else
					{	 
						%><br/><%
						out.print("Account Not Found..");
						 %><br/><br/><a href="viewcart.jsp">Back</a><%
						
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