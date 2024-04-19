<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Cafe</title>
    </head>
    <body>
        <%
            String i=request.getParameter("item");
            String ct=request.getParameter("category");
            String p=request.getParameter("price");
            String sc=request.getParameter("sub_category");
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8","root","");
            PreparedStatement ps=c.prepareStatement("insert into items(item_name,Category,Sub_Category,Price) values(?,?,?,?)");
            ps.setString(1, i);
            ps.setString(2, ct);
            ps.setString(4, p);
            ps.setString(3, sc);
            
            ps.executeUpdate();
            out.println("<script>alert('Data Saved.');window.location.assign('add_menu.html');</script>");
            }catch(Exception e){out.println(e);}

        %>
    </body>
</html>