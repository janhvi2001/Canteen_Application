<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                String id = request.getParameter("item_id");
                String item = request.getParameter("item");
                Class.forName("com.mysql.jdbc.Driver");
                Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8", "root", "");
                PreparedStatement ps = c.prepareStatement("DELETE FROM items WHERE item_id="+id);
                
                int rowsDeleted = ps.executeUpdate();
                
                if (rowsDeleted > 0) {
                    out.println("<script>alert('Item removed');window.location.assign('view_menu.jsp');</script>");
                } else {
                    out.println("<script>alert('Item not found or could not be removed');window.location.assign('view_menu.jsp');</script>");
                }
                
                c.close();
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
