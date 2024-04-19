<%-- 
    Document   : extract_subcategory
    Created on : Mar 5, 2024, 3:05:56 PM
    Author     : student
--%>

<html>
    <head>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">              
<!----------------------------------------------------------------------------------------------------->
               
              
<!-------------------------------------------------------------------------------------------------------------------------------------->
</head><body>              

 <%      
            
                 try{
                        String x=request.getParameter("parameter1");
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8","root","");
                        Statement st=c.createStatement();
                   
            ResultSet rs=st.executeQuery("select * from items where Sub_Category like '"+x+"'");
            int i=1;
            while(rs.next())
            {
                String mi=rs.getString(2);
                int pr=Integer.parseInt(rs.getString(5));  
               int item_id=Integer.parseInt(rs.getString(1)); 
             
                
            out.println("<div class='col-lg-9 col-md-12'><div class='menu-item'><div class='menu-text'><h3><span>"+mi+"</span><strong>₹ "+pr+"</strong></h3></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "
            +" &nbsp;&nbsp;&nbsp;<h3><form action='Delete_item.jsp' method='post'><input type='hidden' value='"+item_id+"' name='item_id' id='item_id"+i+"'><button style='color: #fbaf32; border: 2px solid #fbaf32;'><i class='fa fa-trash-o'></i></button></form></h3>&nbsp;&nbsp;&nbsp;<form action='update_items.jsp' method='post'><input type='hidden' value='"+item_id+"' name='item_id' id='item_id"+i+"'><h6><button class='nav-link' style='color: #fbaf32; border: 2px solid #fbaf32;'>Update </button></h6></form></div></div>");

 
        %>                   

            <%
                            i++;
                        }
                    }catch(Exception e){out.println(e);}
            %> 

            
<!--            MAIN COURSE-->

 <%      
            
                 try{
                        String y=request.getParameter("parameter2");
                       
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8","root","");
                        Statement st=c.createStatement();
                   
            ResultSet rs=st.executeQuery("select * from items where Sub_Category like '"+y+"'");
            int i=1;
            while(rs.next())
            {
                String mi=rs.getString(2);
                int pr=Integer.parseInt(rs.getString(5));       
                int item_id=Integer.parseInt(rs.getString(1)); 
      
               
          out.println("<div class='col-lg-9 col-md-12'><div class='menu-item'><div class='menu-text'><h3><span>"+mi+"</span><strong>₹ "+pr+"</strong></h3></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "
            +" &nbsp;&nbsp;&nbsp;<h3><form action='Delete_item.jsp' method='post'><input type='hidden' value='"+item_id+"' name='item_id' id='item_id"+i+"'><button style='color: #fbaf32; border: 2px solid #fbaf32;'><i class='fa fa-trash-o'></i></button></form></h3>&nbsp;&nbsp;&nbsp;<form action='update_items.jsp' method='post'><input type='hidden' value='"+item_id+"' name='item_id' id='item_id"+i+"'><h6><button class='nav-link' style='color: #fbaf32; border: 2px solid #fbaf32;'>Update </button></h6></form></div></div>");


        %>                   

            <%
                            i++;
                        }
                    }catch(Exception e){out.println(e);}
            %> 
            
            
<!--            BEVERAGES-->

 <%      
            
                 try{
                        String z=request.getParameter("parameter3");
                        //out.println(x);
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8","root","");
                        Statement st=c.createStatement();
                   
            ResultSet rs=st.executeQuery("select * from items where Sub_Category like '"+z+"'");
            int i=1;
            while(rs.next())
            {
                String mi=rs.getString(2);
                int pr=Integer.parseInt(rs.getString(5));     
                int item_id=Integer.parseInt(rs.getString(1)); 
                
                
          out.println("<div class='col-lg-9 col-md-12'><div class='menu-item'><div class='menu-text'><h3><span>"+mi+"</span><strong>₹ "+pr+"</strong></h3></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "
            +" &nbsp;&nbsp;&nbsp;<h3><form action='Delete_item.jsp' method='post'><input type='hidden' value='"+item_id+"' name='item_id' id='item_id"+i+"'><button style='color: #fbaf32; border: 2px solid #fbaf32;'><i class='fa fa-trash-o'></i></button></form></h3>&nbsp;&nbsp;&nbsp;<form action='update_items.jsp' method='post'><input type='hidden' value='"+item_id+"' name='item_id' id='item_id"+i+"'><h6><button class='nav-link' style='color: #fbaf32; border: 2px solid #fbaf32;'>Update </button></h6></form></div></div>");


        %>                   

            <%
                            i++;
                        }
                    }catch(Exception e){out.println(e);}
            %> 
                </body></html>