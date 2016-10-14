<%@ page contentType="text/html; charset=" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="databaseconnection.*"%>
<html>
<head>
<title>Distributor Leak Files</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Your website name | Homepage</title>

<!-- This template was created by Mantis-a [http://www.mantisa.cz/]. For more templates visit Free website templates [http://www.mantisatemplates.com/]. -->

<meta name="Description" content="..." />
<meta name="Keywords" content="..." />
<meta name="robots" content="all,follow" />
<meta name="author" content="..." />

<!-- Javascript -->
<meta http-equiv="Content-Script-Type" content="text/javascript" />

<!-- CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="css/style-print.css" type="text/css" media="print" />

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
</head>

<body>
<form name="form" action="" method="post" >


<%

 Connection con=null;
	Statement st=null;
	Connection con1=null;
	
	Statement st1=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	//Blob file1=null,file2=null ;
	//byte[] bdata1=null,bdata2=null;
	 String text1=null,text2=null; 
	String sql="select * from file ";
	String sql1="select * from agentfile ";
	try
	{
		con=databasecon.getconnection();
		con1=databasecon.getconnection();
		st=con.createStatement();
		st1=con1.createStatement();
		rs=st.executeQuery(sql);
		rs1=st1.executeQuery(sql1);
		//session.setAttribute( "id", n );
		

	
	%>

  <div id="wrapper"> 
    <!-- Header -->
    <div id="header"> 
      <!-- Your website name  -->
      <h1><font color="#FFFFFF"> 
        <marquee direction="right">
        DATA LEAKAGE DETECTION 
        </marquee>
        </font></h1>
      <!-- Your website name end -->
      <!-- Your slogan -->
      <h2></h2>
      <!-- Your slogan end -->
      <div id="header-arrow"></div>
    </div>
    <!-- Header end -->
    <!-- Menu -->
    <a href="#skip-menu" class="hidden">Skip menu</a> 
    <ul id="menu" class="cleaning-box">
      <li class="first"><a href="distributorhome.jsp" class="active">HOME</a></li>
      <li><a href="distributorsend.jsp">Send Files</a></li>
      <li><a href="distributorviewfiles .jsp">View Files</a></li>
      <li><a href="distributorleakfiles.jsp">Leak Files</a></li>
      <li><a href="index.html">LogOut</a></li>
    </ul>
    <!-- Menu end -->
    <hr class="noscreen" />
    <div id="content-box"> 
      <div id="content-box-in"> 
        <!-- Content left -->
        <div class="content-box-left"> 
          <div align="center" class="content-box-left-in"> 
            <h4>VIEW FILES </h4>
            <div align="center" style="background-color: #FFF2EF"> 
              <table border="1" width="500" height="" cellpadding="5" cellspacing="5">
                <tr>&nbsp;</tr>
                <tr>                   
                  <td  height="" class="paragraping"><font color="#FF0000"><strong>UserName</strong></font></td>
                  <td  class="paragraping"> <font color="#FF0000"><strong>File</strong></font></td>
                  <td  class="paragraping"><font color="#FF0000"> <strong>Subject</strong></font></td>
                  <td  class="paragraping"><font color="#FF0000"> <strong>Date</strong></font></td>
				  </tr>
				  <%
				  while(rs.next())
				  {
				   //file1=rs.getBlob(1);
					
                   // bdata1 = file1.getBytes(1,(int) file1.length());
                    // text1 = new String(bdata1);
					text1 =rs.getString(4);
				    while(rs1.next())
					{
					//file2=rs1.getBlob(3);
					// bdata2 = file2.getBytes(1, (int) file2.length());
                   // text2 = new String(bdata2);
				    text2 =rs.getString(4);
					  if(text1.equalsIgnoreCase(text2))
					  {
				  %>
				  <tr>                   
                  <td  height="" class="paragraping"><font size="2" ><%=rs1.getString(7)%></font></td>
                  <td  class="paragraping"> <font size="2" ><%=rs1.getString(4)%></font></td>
                  <td  class="paragraping"><font size="2"><%= rs1.getString(2)%></font></td>
                  <td  class="paragraping"><font size="2"><%= rs1.getString(6)%></font></td>
				  </tr>
				  
				  
				 <% 
				 }
				 }
				 }				  
				  
				  %>
				  
				  
				  
				  
              </table>
            </div>
          </div>
        </div>
        <!-- Content left end -->
        <hr class="noscreen" />
        <!-- Content right -->
        <div class="content-box-right"> 
          <h4>Welcome Distributor!</h4>
          <div class="content-box-right-in"> 
            <dl>
              <dt><br />
                <a href="#"><img src="img/fileview.jpg" width="120" height="90" " /></a> 
              </dt>
            </dl>
          </div>
          <div class="content-box-right-in"></div>
          <div id="column-right-bottom">&nbsp;</div>
        </div>
        <!-- Content right end -->
        <div class="cleaner">&nbsp;</div>
      </div>
    </div>
    <hr class="noscreen" />
    <!-- Footer -->
    <!-- Footer end -->
  </div>
<%
}
catch(Exception e)
	{
		System.out.println(e);
	}
	  finally
	{
		con.close();
		st.close();
		con1.close();
		st1.close();
	}
 
  %>
  </form>
</body>
</html>
