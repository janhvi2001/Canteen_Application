<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%> 
<!DOCTYPE html> 
<html lang="en">
    <head>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <meta charset="utf-8">
        <title>Epic Cafe</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Nunito:600,700" rel="stylesheet"> 
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        </head>

    <body>
        <!-- Nav Bar Start -->
        <div class="navbar navbar-expand-lg bg-light navbar-light">
            <div class="container-fluid">
                <a href="add_menu.html" class="navbar-brand">Epic <span>Cafe</span></a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto">
                        <a href="add_menu.html" class="nav-item nav-link active">Add Menu</a>
                        <a href="view_menu.jsp" class="nav-item nav-link">View Menu</a>
                        <a href="view_statistics" class="nav-item nav-link">View Statistics</a>
                        <a href="index.html" class="nav-item nav-link">Logout</a>
                        
         
                        </div>
                    </div>
                </div>
            </div>

        <!-- Nav Bar End -->
       
        <!-- Page Header Start -->
        <div class="page-header mb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2> Welcome Admin </h2>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- Page Header End -->
        
            
        <% 
        Class.forName("com.mysql.jdbc.Driver"); 
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8", "root", ""); 
Statement st=conn.createStatement(); 
ResultSet rs=st.executeQuery("select * from cart where status like 'YES' "); 

out.println("<br><table border=1 bodercoler=black align='center' cellspacing=20 cellpadding=20><tr><th colspan='8'><p align='center'>Order History</p></th></tr><tr><td><b>Sr. No</b></td><td><b>Username</b></td><td><b>Menu Item</b></td><td><b>Price</b></td><td><b>Quantity</b></td><td><b>Total Amount</b></td></tr>"); 
   
int i=1;        
while(rs.next()) 
{ 
String total=rs.getString(6); 
String quantity=rs.getString(5); 
String item_name=rs.getString(3); 
String stat=rs.getString(7);  
String price=rs.getString(4); 
String username=rs.getString(2);




			out.println("<tr><td>"+i+"</td><td><b>"+username+"</b></td><td><b>"+item_name+"</b></td><td><b>"+price+"<b></td><td><b>"+quantity+"<b></td><td><b>"+total+"<b> </td></tr>"); //
			i++; 			
			} 
			
		
			out.println("</table>");
			
			        %> 
        
        
            <div class="copyright">
                <div class="container">
                    <p>Copyright &copy; <a href="#">Pillai's Epic Cafe</a>, All Right Reserved.</p>
                    <p>Designed By <a href="https://htmlcodex.com">HTML Codex</a></p>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/tempusdominus/js/moment.min.js"></script>
        <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
        
        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
     <script src="js/plugins.js"></script>         
    </body>
</html>