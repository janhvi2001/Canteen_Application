<%-- 
    Document   : extract_subcategory
    Created on : Mar 5, 2024, 3:05:56 PM
    Author     : student
--%>

<html>
    <head>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
               

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
      
            out.println("<iframe name='hiddenFrame' style='display: none'></iframe><form action='cart.jsp' method='post'target='hiddenFrame'><div class='col-lg-9 col-md-12'><div class='menu-item'><div class='menu-text'><h3><span>"+mi+"</span><input type='hidden' name='item' value='"+mi+"'><strong>₹ "+pr+"</strong></h3><input type='hidden' name='price' value='"+pr+"'></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "
            +"<input type='number' name='qt1' value='1' style='width: 50px; text-align: center' min='1'> &nbsp;&nbsp;&nbsp;<h3><button style='color: #fbaf32; border: 2px solid #fbaf32;'><i class='fa fa-shopping-cart'></i></button></h3></div></div></form>");

    
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
                        //out.println(x);
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8","root","");
                        Statement st=c.createStatement();
                   
            ResultSet rs=st.executeQuery("select * from items where Sub_Category like '"+y+"'");
            int i=1;
            while(rs.next())
            {
                String mi=rs.getString(2);
                              int pr=Integer.parseInt(rs.getString(5));       
      
                //out.println(mi);
                
            out.println("<iframe name='hiddenFrame' style='display: none'></iframe><form action='cart.jsp' method='post' target='hiddenFrame'><div class='col-lg-9 col-md-12'><div class='menu-item'><div class='menu-text'><h3><span>"+mi+"</span><input type='hidden' name='item' value='"+mi+"'><strong>₹ "+pr+"</strong></h3><input type='hidden' name='price' value='"+pr+"'></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "
            +"<input type='number' name='qt1' value='1' style='width: 50px; text-align: center' min='1'> &nbsp;&nbsp;&nbsp;<h3><button style='color: #fbaf32; border: 2px solid #fbaf32;')'><i class='fa fa-shopping-cart'></i></button></h3></div></div></form>");

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
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8","root","");
                        Statement st=c.createStatement();
                   
            ResultSet rs=st.executeQuery("select * from items where Sub_Category like '"+z+"'");
            int i=1;
            while(rs.next())
            {
                String mi=rs.getString(2);
                              int pr=Integer.parseInt(rs.getString(5));       
      
                
                
            out.println("<iframe name='hiddenFrame' style='display: none'></iframe><form action='cart.jsp' method='post' target='hiddenFrame'><div class='col-lg-9 col-md-12'><div class='menu-item'><div class='menu-text'><h3><span>"+mi+"</span><input type='hidden' name='item' value='"+mi+"'><strong>₹ "+pr+"</strong></h3><input type='hidden' name='price' value='"+pr+"'></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "
            +"<input type='number' name='qt1' value='1' style='width: 50px; text-align: center' min='1'> &nbsp;&nbsp;&nbsp;<h3><button style='color: #fbaf32; border: 2px solid #fbaf32;'><i class='fa fa-shopping-cart'></i></button></h3></div></div></form>");

        %>                   

            <%
                            i++;
                        }
                    }catch(Exception e){out.println(e);}
            %> 
                </body></html>