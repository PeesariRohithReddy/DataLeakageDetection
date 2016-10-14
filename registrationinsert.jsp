<%@ page import="java.sql.*,java.lang.*,databaseconnection.*"%>
<html>
<head>

<title>Registration Insert Page</title>




  
       <% 
        try
                {
				
        //String a=(String)session.getAttribute( "id" );
		int a1=(Integer)(session.getAttribute( "id" ));
        String b=request.getParameter("username");		
        String  c=request.getParameter("userid"); 
		  int c1=Integer.parseInt(c);
	   String d=request.getParameter("password");
	   String e=request.getParameter("emailid");
	   
	  	  
       Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
		
        String sql="insert into register(id,username,userid,password,emailid) values ('"+a1+"','"+b+"','"+c+"','"+d+"','"+e+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("success.jsp");
		}
				else{
		response.sendRedirect("registration.jsp?message=fail");
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>
       
  
        
  
</center>
  
       
  
        
  
        </td>
      
     
      
    </tr>
    
  </table>
  <!-- End ImageReady Slices -->




