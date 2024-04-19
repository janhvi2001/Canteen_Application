
<%--<%@page import="java.sql.*"%>--%>
<%--<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Products</title>
    </head>
    <body>
        <%
            String id=(String)session.getAttribute("item_id");
           
           int it_id=Integer.parseInt(id);
            
            String it=request.getParameter("item");
            String ct=request.getParameter("category");
            String p=request.getParameter("price");
            String sc=request.getParameter("sub_category");
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8","root","");
            PreparedStatement ps=c.prepareStatement("update items set item_name=?,Category=?,Sub_Category=?,Price=? where item_id=?");

            ps.setString(1, it);
            ps.setString(2, ct); 
            ps.setString(3, sc);
            ps.setString(4, p);
          
            ps.setInt(5, it_id);
            
            int i=ps.executeUpdate();
            if(i > 0)
{
out.print("<script>alert('Data Updated.');window.location.assign('update_items.jsp');</script>");
}
else
{
out.print("<script>alert('There is something wrong.');window.location.assign('UpdateProduct.jsp');</script>");
}
            
            }catch(Exception e){out.println(e);}

        %>
    </body>
</html>
