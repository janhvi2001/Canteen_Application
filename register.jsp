<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Cafe</title>
    </head>
    <body>

<%
String username = request.getParameter("username");
String email = request.getParameter("e1");
String password = request.getParameter("password");
String confpass=request.getParameter("p2");
try {
     Class.forName("com.mysql.jdbc.Driver");
 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/usersdb?characterEncoding=UTF-8","root","");
 Statement st = c.createStatement();
 int i = st.executeUpdate("insert into userinfo(username,email,password)values('"+ username + "','" +  email + "','" + password + "')");  
 if(i>0)
 {
out.println("<script>alert(Thank you for registering !);window.location.assign('login.html');</script>");
}
    if(password!=null && confpass!=null )
    {
        if(!password.equals(confpass))
        {
          out.println("<script>alert('Please confirm your password again.');window.location.assign('login.html');</script>");  
        }
        else
        {
            out.println("<script>alert('Thank you for registering.'); window.location.assign('login.html');</script>");
        }
    }    
} catch (Exception e) {out.print(e);}
%>

    </body>
</html>