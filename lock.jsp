<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
	String filename =(String)session.getAttribute("fname");
	String uname=(String)session.getAttribute("username");
         String pass=request.getParameter("pass");
	String key=request.getParameter("key");		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String k=null,p=null;
	String sql2=null;
	String sql="select register.password  from  register  where username='"+uname+"'";
	String sql1="select file.key from  file  where username='"+uname+"'";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		
		
	    if(rs.next())
		{
		p=rs.getString(1);
		out.print(p);
		out.print(pass);		
		}
		rs=st.executeQuery(sql1);
		
		
	    if(rs.next())
		{
		k=rs.getString(1);
		out.print(k);
		out.print(key);		
		}
		
		if(k.equals(key) && p.equals(pass))
		{
		 sql2 ="update file set mode='lock' where filename='"+filename+"'";
		  int x=st.executeUpdate(sql2);
		if(x!=0){
		response.sendRedirect("locksuccess.jsp");
		}
				else{
		response.sendRedirect("lock.jsp?message=fail");
		}
		
		}
		
		else
	  out.print("Enter Correct password and key");
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
             </form>
       </body> 	
</html>