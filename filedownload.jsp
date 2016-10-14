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

function open2(){
    window.location = "http://localhost:8080/Dataleak/filelock.jsp"
}
function open3(){
    window.location = "http://localhost:8080/Dataleak/fileunlock.jsp"
}


</script>
<body>
<form name="form1" action=" userfileview.jsp" method="post"  >
 <% 
String fname=request.getQueryString(); 
//String subject=request.getParameter("subject"); 
//String date=request.getParameter("date"); 
String filename=null,subject=null,date=null,mod=null;
        

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

String sql="select * from file where filename='"+fname+"'";


ResultSet rs=st.executeQuery(sql);




while(rs.next())

  {
  filename=rs.getString(4);
  subject=rs.getString(2);
  date=rs.getString(6);
  mod=rs.getString(8);
  session.setAttribute("mode",mod);
  
}

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
            <h4>VIEW FILES SENT BY DISTRIBUTOR</h4>
            <div align="center" style="background-color: #FFF2EF"> 
              <table border="1" width="500" height="" cellpadding="5" cellspacing="5">
                <tr>&nbsp;</tr>
                <tr> 
                  <td  height="10" class="paragraping"><font color="#FF0000">File 
                    Name</font></td>
                  <td>:</td>
                  <td><font size="2"> 
                    <%=filename%>
                    </font></td>
                </tr>
                <tr> 
                  <td  height="" class="paragraping"><font color="#FF0000">Subject</font></td>
                  <td>:</td>
                  <td ><font size="2"> 
                    <%=subject%>
                    </font></td>
                </tr>
                <tr> 
                  <td  class="paragraping"> <font color="#FF0000">Date</font></td>
                  <td>:</td>
                  <td><font size="2"> 
                    <%=date%>
                    </font></td>
                </tr>
                <tr>&nbsp;</tr>
                <tr> 
                  <td ><font color="#FF0000" size="+2"><img src="img/download.jpg" width="63" height="47" /></font><a href="keyenter.jsp">Download</a></td>
                  <td ><font color="#FF0000" size="+2"><img src="img/lock.jpeg" width="58" height="46" /></font> 
                    <input style="background: url('../img/submit.jpeg')" type="button" name="lock" value="Lock" onClick="open2()" ></td>
                  <td ><font color="#FF0000" size="+2"><img src="img/unlock.jpeg" width="49" height="46" /></font> 
                    <input style="background: url('../img/submit.jpeg')" type="button" name="unlock" value="Unlock" onClick="open3()" ></td>
                </tr>
                <%

      {

          HttpSession ses=request.getSession();
		  

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
          <h4>Welcome 
            <%=session.getAttribute("username")%>
            !</h4>
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


  
        

  </form>
</body>
</html>
