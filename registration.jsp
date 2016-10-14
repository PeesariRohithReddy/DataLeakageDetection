<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<title>Registration Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
<script language="JavaScript">
function fu()
{

//var a = document.LoginForm.id.value;
var b = document.LoginForm.username.value;
var c = document.LoginForm.userid.value;
var d = document.LoginForm.password.value;
var e = document.LoginForm.emailid.value;



/*if(a=="")
{
alert("Enter ID");
document.LoginForm.id.focus();
return false;
}*/

if(b=="")
{
alert("Enter User Name");
document.LoginForm.username.focus();
return false;
}

if(c=="")
{
alert("Enter User Id");
document.LoginForm.userid.focus();
return false;
}
if(isNaN(c))
{
alert("Please Enter only Number");
document.LoginForm.userid.select();
return false;
}
if(d=="")
{
alert("Enter Password");
document.LoginForm.password.focus();
return false;
}
if(d.length<5) {
alert("Password should have Five Characters");
            document.LoginForm.password.focus();
            document.LoginForm.password.value="";
return false;
}

if(e=="")
{
alert("Enter E-MailId");
document.LoginForm.emailid.focus();
return false;
}
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
    var k=emailfilter.test(e);
    if(k==false)
    {
        alert("Please enter a valid mail Id");
	document.LoginForm.emailid.focus();
        return false;
    }

}

</script>
</head>

<body>

<form name="LoginForm" action="registrationinsert.jsp" method="post" onSubmit="return fu();">
 
 <%
 int n=0,s=0;
 Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select max(id) from register ";
	try
	{
		con=databasecon.getconnection();
		st=con.createStatement();
		rs=st.executeQuery(sql);
		if(rs.next())
		{
		if(rs.getInt(1)==0)
		n=1;
		else
		n=rs.getInt(1)+1;
		session.setAttribute( "id", n );
		
		}
	//out.print(n);
	
	%>
	
  <div id="wrapper"> 
    <div id="header"> 
      <h1><font color="#FFFFFF"><marquee direction="right"> DATA LEAKAGE DETECTION</marquee></font></h1>
      <div id="header-arrow"></div>
    </div>
    <div align="center" id="content-box1"> 
      <h4 >REGISTRATION</h4>
      <div  class="content-box-center"> 
        <table>
          <tr> 
            <td>&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
          </tr>
          <tr> 
            <td><font color="#660000" size="2">ID</font></td>
            <td>:</td>
            <td><input name="id" value="<%=n%>" type="textbox" disabled="true" ></td>
          </tr>
          <tr> 
            <td>&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
          </tr>
          <tr> 
            <td><font color="#660000" size="2">UserName</font></td>
            <td>:</td>
            <td><input name="username" type="textbox" ></td>
          </tr>
          <tr> 
            <td>&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
          </tr>
          <tr> 
            <td><font color="#660000" size="2">UserID</font></td>
            <td>:</td>
            <td><input name="userid" type="textbox" ></td>
          </tr>
          <tr> 
            <td>&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
          </tr>
          <tr> 
            <td><font color="#660000" size="2">Password</font></td>
            <td>:</td>
            <td><input name="password" type="password" ></td>
          </tr>
          <tr> 
            <td>&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
          </tr>
          <tr> 
            <td><font color="#660000" size="2">EmailID</font></td>
            <td>:</td>
            <td><input name="emailid" type="textbox" ></td>
          </tr>
          <tr> 
            <td>&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
          </tr>
          <tr> 
            <td></td>
            <td><input style="background: url('../img/submit.jpeg')" type="submit" name="submit" value="Register" ></td>
            <td> <input style="background: url('../img/submit.jpeg')" type="reset" name="clr" value="Clear"></td>
          </tr>
        </table>
      </div>
    </div>
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
