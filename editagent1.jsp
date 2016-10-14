<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
	 String username=(String)session.getAttribute("username");
    int userid=(Integer)session.getAttribute("userid");
	 String email=request.getParameter("emailid");
	String pass=request.getParameter("pass");
	out.print(username);
	out.print(userid);
	out.print(email);
	out.print(pass);		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="update register set password='"+pass+"',emailid='"+email+"' where username='"+username +"' && userid='"+userid+"' ";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	   
		
	    int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("index.html");
		}
		
	  out.println("Login Error-please check ur ID and password");
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