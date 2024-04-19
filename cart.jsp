<%-- 
    Document   : cart.jsp
    Created on : Mar 5, 2024, 3:42:11 PM
    Author     : student
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String item=request.getParameter("item");
           int price=Integer.parseInt(request.getParameter("price"));
           int qty=Integer.parseInt(request.getParameter("qt1"));
           int total=qty*price;

           try{
          
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8","root","");
            PreparedStatement ps=c.prepareStatement("insert into cart(username, item_name, price, qty, total, status) values(?,?,?,?,?,?)");
            ps.setString(1, session.getAttribute("user_name").toString());
            ps.setString(2, item);
            ps.setString(3, ""+price);
            ps.setString(4, ""+qty);
            ps.setString(5, ""+total);

            ps.setString(6,"NO");
            ps.executeUpdate();
           out.println("<script>alert('Data Saved.');window.location.assign('view_cart.jsp');</script>");
           }
           
           catch(Exception e){out.println(e);}
       %>
       
      
    </body>
</html>
