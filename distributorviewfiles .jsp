<%@ page contentType="text/html" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="databaseconnection.*"%>
<html>
<head>
<title>Distributor View Files</title>

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
	ResultSet rs=null;
	String sql="select * from file";
	try
	{
		con=databasecon.getconnection();
		st=con.createStatement();
		rs=st.executeQuery(sql);
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
              <table border="1" width="500" height="" cellpadding="1" cellspacing="1">
                <tr>&nbsp;</tr>
                <tr> 
                  <td  height="10" class="paragraping"><font color="#FF0000"><strong>ID</strong></font></td>
                  <td  height="" class="paragraping"><font color="#FF0000"><strong>UserName</strong></font></td>
                  <td  class="paragraping"> <font color="#FF0000"><strong>File</strong></font></td>
                  <td  class="paragraping"><font color="#FF0000"> <strong>Subject</strong></font></td>
                  <td  class="paragraping"><font color="#FF0000"> <strong>Date</strong></font></td>
                </tr>
                <% 
                 while(rs.next())
				   {%>
                <tr> 
                  <td  height="10" class="paragraping"><font size="2" > 
                    <%=rs.getInt(5)%>
                    </font></td>
                  <td  height="" class="paragraping"><font size="2"  > 
                    <%=rs.getString(1)%>
                    </font></td>
                  <td  class="paragraping"> <font size="2" > 
                    <%=rs.getString(4)%>
                    </font></td>
                  <td  class="paragraping"><font size="2" > 
                    <%=rs.getString(2)%>
                    </font></td>
                  <td  class="paragraping"><font size="2" > 
                    <%=rs.getString(6)%>
                    </font></td>
                </tr>
                <%}%>
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
	}
 
  %>
  </form>
</body>
</html>
