
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
        <script>
            
            function snacks(a)
            {
               
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    
                    document.getElementById("sub_cat1").innerHTML = this.responseText;
                }
                };
                xhttp.open("GET", "admin_editsubcategory.jsp?parameter1="+a, true);
                xhttp.send();}
                
                
            function main_course(b)
            {
               
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    
                    document.getElementById("sub_cat2").innerHTML = this.responseText;
                }
                };
                xhttp.open("GET", "admin_editsubcategory.jsp?parameter2="+b, true);
                xhttp.send();
                
            }
            
            function beverages(c)
            {
               
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    
                    document.getElementById("sub_cat3").innerHTML = this.responseText;
                }
                };
                xhttp.open("GET", "admin_editsubcategory.jsp?parameter3="+c, true);
                xhttp.send();
                
            }
            
            function place()//mi,pr)
            {
                window.location.href = "booking.html";//mi +"  " +pr);
            }
            
            
          
        </script>
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
                       <a href="add_menu.html" class="nav-item nav-link">Add Menu</a>
                        <a href="admin_view_orders.jsp" class="nav-item nav-link">View Orders</a>
                        <a href="http://127.0.0.1:5000/" class="nav-item nav-link">View Statistics</a>
                        <a href="index.html" class="nav-item nav-link">Logout</a>
                        </a>
                        
                        
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
                        <h2>Food Menu</h2>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- Page Header End -->

        <!-- Menu Start -->
        <div class="menu">
            <div class="container">
                <div class="section-header text-center">
                    <p>Food Menu</p>
                    <h2>Delicious Food Menu</h2>
                </div>
                
                <div class="menu-tab">
                    <ul class="nav nav-pills justify-content-center">
                <li><a class="nav-link" data-toggle="tab" href="#home">Snacks</a></li>
                <li><a class="nav-link" data-toggle="tab" href="#menu1">Main Course</a></li>
                <li><a class="nav-link" data-toggle="tab" href="#menu2">Beverages</a></li>
                    </ul><br>

        <!--    Snacks Module-->
        <div class="tab-content">
        <div id="home" class="tab-pane fade active">
            <ul class="nav nav-pills justify-content-center" href="#category1">
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="snacks('Quick Bites')" value='Quick Bites'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="snacks('South Indian')" value='South Indian'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="snacks('Sandwiches')" value='Sandwiches'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="snacks('Frankie/Shawarma')" value='Frankie/Shawarma'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="snacks('Pastas')" value='Pastas'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="snacks('Salads')" value='Salads'></li>
                       
                        </ul><br>
                        
        <!--For Snacks' Sub Categories-->
        <p id="sub_cat1"></p></div> 
            
<!--  Main Course  -->

<!--    Main Course Module-->

        <div id="menu1" class="tab-pane fade active">
            <ul class="nav nav-pills justify-content-center" href="#category2">
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Indian (Veg)')" value='Indian(Veg)'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Indian (Non-Veg)')" value='Indian(Non-Veg)'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Combo')" value='Combo'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Eggs')" value='Eggs'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Thali')" value='Thali'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Indian Bread')" value='Indian Bread'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Chinese Soups')" value='Chinese Soups'><br></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Chinese Starters')" value='Chinese Starters'><br></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Chinese Rice/Noodle (Veg)')" value='Chinese Rice/Noodle (Veg)'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Chinese Rice/Noodle (Non-Veg)')" value='Chinese Rice/Noodle (Non-Veg)'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Biryani')" value='Biryani'><br></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Kerala Special Food')" value='Kerala Special Food'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="main_course('Kerala Food')" value='Kerala Food'></li>
                </ul><br>
                        
        <!--For Main_Course' Sub Categories-->
        <p id="sub_cat2"></p></div>
    

        <!--    Beverages Module-->

        <div id="menu2" class="tab-pane fade active">
            <ul class="nav nav-pills justify-content-center" href="#category3">
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="beverages('Beverage')" value='Beverage'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="beverages('Fresh Juices')" value='Fresh Juices'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="beverages('Milkshakes')" value='Milkshakes'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="beverages('Mocktails')" value='Mocktails'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="beverages('Falooda')" value='Falooda'></li>
                <li><input type='Button' class="nav-link" data-toggle="tab" onclick="beverages('Fun with Cream')" value='Fun with Cream'></li>
                       
                        </ul><br>
                        
        <!--For Beverages' Sub Categories-->
        <p id="sub_cat3"></p></div>
        
        </div></div></div></div>
        <!-- Menu End -->

        
        
        
        <!-- Footer Start -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="footer-contact">
                                    <h2>Our Address</h2>
                                    <p><i class="fa fa-map-marker-alt"></i>Dr. K.M. Vasudevan's</p>
                                    <p>Pillai Campus, Sector-16</p>
                                    <p>New Panvel - 410206</p>

                                </div>
                            </div>
                            <div class="col-md-6">
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="footer-newsletter">
                            <h2>Our Timings</h2>
                            <p>9:00 am to 5:00 pm</p>
                            
                        </div>
                    </div>
                </div>
            </div>
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
        
    </body>
</html>