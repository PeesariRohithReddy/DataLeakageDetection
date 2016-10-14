<%@ page contentType="text/html" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="databaseconnection.*"%>
<html>
<head>
<title>Distributor Home Page</title>

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


<script type="text/javascript">


function valid()
{
var a = document.form.filename.value;
var b = document.form.subject.value;
var c = document.form.datafile.value;

if(document.form.user.selectedIndex==0)
{
alert("Select User");

document.form.user.focus();

return false;
}
if(b=="")
{
alert("Enter Subject");
document.form.subject.focus();
return false;
}
if(a=="")
{
alert("Enter FileName");
document.form.filename.focus();
return false;
}

if(c=="")
{
alert("Select File to Uploads");
document.form.datafile.focus();
return false;
}

}
function open1(){
    window.location = "http://localhost:8080/dataleakage/agenthome.jsp"
}

</script>

</head>

<body>
<form name="form" enctype="multipart/form-data" action="uploadedfile.jsp" onSubmit="return valid();" method="post"  >


<%

 Connection con=null;
	Statement st=null;
	
	ResultSet rs=null;
	
	
	String sql="select username  from register ";
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
            <h4>DISTRIBUTOR SEND FILES </h4>
            <div align="center" style="background-color: #FFF2EF"> 
              <table>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td><font color="#660000" size="2"><strong>User</strong></font></td>
                  <td>:</td>
                  <td> <select name="user" >
                      <option value="Select">--Select--</option>
                      <% while(rs.next())
				     {
					 %>
                      <option value="<%=rs.getString(1)%>"> 
                      <%=rs.getString(1)%>
                      </option>
                      <%
					  }
					  %>
                    </select> </td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td><font color="#660000" size="2"><strong>Subject</strong></font></td>
                  <td>:</td>
                  <td><input name="subject" type="textbox" ></td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td><font color="#660000" size="2"><strong>FileName</strong></font></td>
                  <td>:</td>
                  <td><input name="filename" type="textbox" ></td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td><font color="#660000" size="2"><strong>File</strong></font></td>
                  <td>:</td>
                  <td><input type="file" name="datafile" size="40"> </td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td></td>
                  <td><input style="background: url('../img/submit.jpeg')" type="submit"s name="send" value="Send" ></td>
                  <td><input style="background: url('../img/submit.jpeg')" type="button" name="cancel" value="Cancel" onClick="open1()"></td>
                </tr>
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
                <a href="#"><img src="img/user1.jpg" width="120" height="90" " /></a> 
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
