<!DOCTYPE html>
<html lang="en">
    <head>
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
    
        
        <style>
    
body {
    height: 1350px;
    background:url(feed-bg.jfif) no-repeat;
    background-size: 2000px 1350px;
    opacity:20;
    filter:alpha(opacity=10);
     }
     
table {
    top: 150px;
    left:50px;
    position:absolute;
    width:50px; 
    border:2px solid black;
      }
      
td,tr,th {
    border: 2px solid black;    
      }
      
      .img {
          border: 2px solid black;
      }
            

</style>

            <script>
            
            var openFile=function openFile(file)
            {
                var input=file.target;
                var reader=new FileReader();
                reader.onload=function(){
                    var dataURL=reader.result;
                    var output=document.getElementById('si1');
                    output.src=dataURL;
                    document.getElementById("bd1").value=dataURL;
                };
                reader.readAsDataURL(input.files[0]);
            };
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
                
                        <a href="view_menu.jsp" class="nav-item nav-link">View Menu</a>
                        <a href="view_orders" class="nav-item nav-link">View Orders</a>
                        <a href="#" class="nav-item nav-link">View Statistics</a>
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
                        <h2>Update Menu Items</h2>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->
        
      
   <div class="container">
                <div class="row">
                    <div class="col-lg-5">           
                        <div class="comment-form">
        <form action="update_server.jsp" method="POST">
            <table style="color: black;left:80%;margin-right: 50%; margin-top: -20%"  border=2  cellspacing=20 cellpadding=20><tr>
                    <td><b>Item Name</b></td><td><input type="text" name="item" required></td></tr><br> 
                
                <tr><td><b>Category</b></td><td><select name="category" id="category" onchange="populateSubCategories()" required>
                            <option value="">Category</option>    
                            <option value="Snacks">Snacks</option>
                                <option value="Main Course">Main Course</option>
                                <option value="Beverages">Beverages</option>                               
                                </select>
                        </td></tr><br>
                
                <tr><td><b>Sub Category</b></td><td><select name="sub_category" id="sub_category" required>
                               

                               
                        </select></td></tr><br>
                <script>
    function populateSubCategories() {
        var categoryDropdown = document.getElementById("category");
        var subCategoryDropdown = document.getElementById("sub_category");

        // Get the selected category
        var selectedCategory = category.value;

        // Clear existing options in the sub-category dropdown
        sub_category.innerHTML = "";

        // Populate sub-category dropdown based on the selected category
        switch (selectedCategory) {
            case "Snacks":
                // Populate with snack-related sub-categories
                sub_category.innerHTML = `
                    <option value="Quick Bites">Quick Bites</option>
                    <option value="South Indian">South Indian</option>
                    <option value="Sandwiches">Sandwiches</option>
                    <option value="Frankie/Shawarma">Frankie/Shawarma</option>
                    <option value="Pastas">Pastas</option>
                    <option value="Salads">Salads</option>

                    <!-- Add more snack-related sub-categories as needed -->
                `;
                break;
            case "Main Course":
                // Populate with main course-related sub-categories
                sub_category.innerHTML = `
                    <option value="Indian (Veg)">Indian (Veg)</option>
                    <option value="Indian (Non-Veg)">Indian (Non-Veg)</option>
                    <option value="Combo">Combo</option>
                    <option value="Eggs">Eggs</option>
                    <option value="Thali">Thali</option>
                    <option value="Indian Bread">Indian Bread</option>
                    <option value="Chinese Soups">Chinese Soups</option>
                    <option value="Chinese Starters">Chinese Starters</option>
                    <option value="Chinese Rice/Noodle (Veg)">Chinese Rice/Noodle (Veg)</option>
                    <option value="Chinese Rice/Noodle (Non-Veg)">Chinese Rice/Noodle (Non-Veg)</option>
                    <option value="Biryani">Biryani</option>
                    <option value="Kerala Special Food">Kerala Special Food</option>
                    <option value="Kerala Food">Kerala Food</option>
                    <!-- Add more main course-related sub-categories as needed -->
                `;
                break;
            case "Beverages":
                // Populate with beverage-related sub-categories
                sub_category.innerHTML = `
                    <option value="Beverage">Beverage</option>
                    <option value="Fresh Juices">Fresh Juices</option>
                    <option value="Milkshakes">Milkshakes</option>
                    <option value="Mocktails">Mocktails</option>
                    <option value="Falooda">Falooda</option>
                    <option value="Fun with Cream">Fun with Cream</option>
                    <!-- Add more beverage-related sub-categories as needed -->
                `;
                break;
            // Add cases for other categories if required
        }
    }
</script>
                <tr><td><b>Price</b></td><td><input type="number" name="price" required></td></tr><br>         
            <br>
            <tr><td colspan='2' align='center'><input type="submit" value="Update Item" name="add" class="btn custom-btn"></td></tr>
            </table>
            <%  String item_id=request.getParameter("item_id");
                 session.setAttribute("item_id",item_id); %>
        </form></div></div>
        
         <script src="js/plugins.js"></script>
         <script src="js/main.js"></script>
         
    </body>
</html>