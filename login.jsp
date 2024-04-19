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
    String password = request.getParameter("password");

    if (username.equals("ADMIN123") && password.equals("ADMIN123")) {
        response.sendRedirect("add_menu.html"); 
    }

    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/usersdb?characterEncoding=UTF-8", "root", "");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select username,password from userinfo");

    try {

        if (rs.next()) {
            session.setAttribute("user_name", username);
            response.sendRedirect("index.html");

        } else {

            response.sendRedirect("login.html");
        }

        while (rs.next()) {

            if (rs.getString("password").equals(password) && rs.getString("username").equals(username)) {

            } else {

                out.println("<script>alert('incorrect username or password'); window.location.assign('login.html');</script>");
            }
        }

    } catch (Exception e) {
        out.println(e);
    }
%>
    </body>
</html>
