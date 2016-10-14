<%@ page contentType="text/html" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="databaseconnection.*"%>
<html>
<head>
<title>Agent Distributor File </title>

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
<script type="text/javascript">
function valid()
{
var a = document.form.pass.value;
var b = document.form.key.value;

if(a=="")
{
alert("Enter Password");
document.form.pass.focus();
return false;
}
if(b=="")
{
alert("Enter SecretKey");
document.form.key.focus();
return false;
}
}
</script>
<body>
<form name="form" action="unlock.jsp" method="post" onSubmit="return valid();" >


<%

 Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select max(id) from register ";
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
      <li class="first"><a href="agenthome.jsp" class="active">HOME</a></li>
      <li><a href="Agentdistributorfiles.jsp">Distributor Files</a></li>
      	  <li><a href="viewkey.jsp">View Key</a></li>
      <li><a href="agentfile.jsp">Agent Files</a></li>
      <li><a href="agentsend.jsp">Compose</a></li>
      <li><a href="agetdetails.jsp">My Account</a></li>
      <li><a href="index.html">LogOut</a></li>
    </ul>
    <!-- Menu end -->
    <hr class="noscreen" />
    <div id="content-box"> 
      <div id="content-box-in"> 
        <!-- Content left -->
        <div class="content-box-left"> 
          <div class="content-box-left-in"> 
            <h4>LOCK FILE</h4>
            <div align="center" style="background-color: #FFF2EF"> 
              <table>
                <tr> 
                  <td> Enter Password</td>
                  <td><input name="pass" type="password" ></td>
                </tr>
                <tr> 
                  <td> Enter Key</td>
                  <td><input name="key" type="password" ></td>
                </tr>
                <tr> 
                  <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="img/lock.jpeg" width="67" height="38" border="0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <input style="background: url('../img/submit.jpeg')" type="submit" name="lock" value="Unlock"  ></td>
                  <td valign="bottom" > <input style="background: url('../img/submit.jpeg')" type="reset" name="clr" value="Clear" ></td>
                </tr>
                <tr></tr>
              </table>
            </div>
          </div>
        </div>
        <!-- Content left end -->
        <hr class="noscreen" />
        <!-- Content right -->
        <div class="content-box-right"> 
          <h4>Welcome 
            <%=session.getAttribute("username")%>
            !</h4>
          <div class="content-box-right-in"> 
            <dl>
              <dt><br />
                <a href="#"><img src="img/user2.jpeg" width="120" height="90" " /></a> 
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
