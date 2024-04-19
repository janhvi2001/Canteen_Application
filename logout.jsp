

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Cafe</title>
    </head>
    <body>
        <script>
            if(!!window.performance && window.performance.navigation.type == 2)
            {
                window.location.reload(true);
            }
         </script>

      <%
             if(session.getAttribute("user_name")==null)
            {
                response.sendRedirect("login.html");
            
            }
            else
            {
      session.invalidate();
      response.sendRedirect("index.html");
            }
      %>  
    </body>
</html>
