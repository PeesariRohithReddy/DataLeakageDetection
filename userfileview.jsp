<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>
<body background="Images/clouds_background.jpg">
<%
	
	String filename = (String)session.getAttribute("fname");
	String mod = (String)session.getAttribute("mode");
	Blob file= null;
	
	Connection con1 = null;
	PreparedStatement ps1 = null;
	ResultSet rs1 = null;
		String sql1=null;
	if(mod.equals("lock"))
	{
	 %> 
	 <jsp:forward page="lockerror.jsp"/>
	 <%
	 }
	
	 else
	 {
	 sql1 = "select datafile from file where filename ='"+filename+"'";
	 }
	try
	{
		con1 = databasecon.getconnection();
		ps1 = con1.prepareStatement(sql1);
		//ps1.setString(1,filename);
		rs1 = ps1.executeQuery();
		rs1.next();
		file = rs1.getBlob(1);
	}
	
	catch(Exception e)
	{
		out.println("Exception :"+e);
	}
	finally
	{
		if(con1 != null)
			con1.close();
		if(ps1 != null)
			ps1.close();
		if(rs1 != null)
			rs1.close();
	}
	session.setAttribute("resumeBlob",file);
	//out.print(file);
	//out.print(filename);
   response.sendRedirect("userview.jsp");

%>


</body>
</html>