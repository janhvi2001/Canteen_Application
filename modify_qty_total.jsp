

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int qty=Integer.parseInt(request.getParameter("q"));
            int total=Integer.parseInt(request.getParameter("t"));
            String cart=request.getParameter("cart");
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8","root","");
                PreparedStatement ps=c.prepareStatement("Update cart set qty=?, total=? where cart_id=?");
                ps.setString(1,""+qty);
                ps.setString(2, ""+total);
                ps.setString(3,cart);
                ps.executeUpdate();
            }catch(Exception e){out.println(e);}
        %>
    </body>
</html>
