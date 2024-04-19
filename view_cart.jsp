

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

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
        <script>
            function incr(i,price)
            {
                
                var qty=document.getElementById("qt"+i).innerHTML; 
                var cid=document.getElementById("cid"+i).value;
                var cid1=document.getElementById("cid"+i).value;
               
                //if(Number(qty)>1)
                {    
                    qty=Number(qty)+1;
                    var p=Number(qty)*Number(price);
                    document.getElementById("total"+i).innerHTML=p;
                    document.getElementById("qt"+i).innerHTML=qty;
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function() 
                    {
//                        if (this.readyState == 4 && this.status == 200) 
//                        {
//                            document.getElementById("output").innerHTML = this.responseText;
//                        }
                    };
                    xhttp.open("GET", "modify_qty_total.jsp?q="+qty+"&t="+p+"&cart="+cid1, true);
                    xhttp.send();
                }
                
                var tot=document.getElementById("tt").value;
                var gt=0;
                for(var x=1; x<=tot;x++ )
                {
                    gt+=Number(document.getElementById("total"+x).innerHTML);
                }
                document.getElementById("grand_total").innerHTML=gt;
                
            }
            function decr(i,price)
            {
                var qty=document.getElementById("qt"+i).innerHTML;
                var cid=document.getElementById("cid"+i).value;
                
                //window.alert(cid);
                   //  window.alert(qty);
                if(Number(qty)>1)
                {
                    qty=Number(qty)-1;
                    var p=Number(qty)*Number(price);
                    document.getElementById("total"+i).innerHTML=p;
                    document.getElementById("qt"+i).innerHTML=qty;     
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function() 
                    {
//                        if (this.readyState == 4 && this.status == 200) 
//                        {
//                            document.getElementById("output").innerHTML = this.responseText;
//                         }
                    };
                    xhttp.open("GET", "modify_qty_total.jsp?q="+qty+"&t="+p+"&cart="+cid, true);
                    xhttp.send();
                    
                    
                    var tot=document.getElementById("tt").value;
                var gt=0;
                for(var x=1; x<=tot;x++ )
                {
                    gt+=Number(document.getElementById("total"+x).innerHTML);
                }
                document.getElementById("grand_total").innerHTML=gt;
            
                }
                       
            }
           
            var xhttp=new XMLHttpRequest();
        var RazorpayOrderId;
        function CreateOrderID(){
            xhttp.open("GET","http://localhost:8080/Canteen_Testing/OrderCreation", false);
            xhttp.send();
            RazorpayOrderId= xhttp.responseText;
            OpenCheckout();
        }
        
        function OpenCheckout(){
            var gt= document.getElementById('gt').value;
            var amount=gt*100;
           // print(amount);
           // window.alert(amount);
        var options = {
    "key": "rzp_test_SF3dOPXIy3WbGn", // Enter the Key ID generated from the Dashboard
    "amount": amount, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
    "currency": "INR",
    "name": "Pillai's Epic Cafe",
    "description": "Test Transaction",
//    "image": "https://example.com/your_logo",
    "order_id": RazorpayOrderId, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
    "callback_url": "http://localhost:8080/Canteen_Testing/OrderCreation",
    "prefill": {
        "name": "Manali",
        "email": "manali22mscda@student.mes.ac.in",
        "contact": "9000090000"
    },
    "notes": {
        "address": "Razorpay Corporate Office"
    },
    "theme": {
        "color": "#3399cc"
    }
};
var rzp1 = new Razorpay(options);
document.getElementById('payButton').onclick = function(e){
    rzp1.open();
    e.preventDefault();
}
    }
   </script>
         <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
         

    
   
           
       
        
        
        
    </head>
    <body>

       
        <%

%>
    <body>
        <!-- Nav Bar Start -->
        <div class="navbar navbar-expand-lg bg-light navbar-light">
            <div class="container-fluid">
                <a href="index.html" class="navbar-brand">Epic <span>Cafe</span></a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto">
                        <a href="index.html" class="nav-item nav-link active">Home</a>
                        <a href="about.html" class="nav-item nav-link">About</a>
                        <a href="menu.jsp" class="nav-item nav-link">Menu</a>
                        <a href="order_history.jsp" class="nav-item nav-link">Order History</a>
                        <a href="logout.jsp" class="nav-item nav-link">Logout</a>
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
                       <h2 align="center">Order Summary</h2>
                    </div>
                    
                </div>
            </div>
        </div><br><br>
        <!-- Page Header End -->
            
        <%
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/menu_items?characterEncoding=UTF-8","root","");
            Statement st=c.createStatement();
            //ResultSet rs=st.executeQuery("select cart.cart_id,cart.Model_Name,cart.Quantity,cart.Selling_Price,cart.Total from cart where cart.Model_Name=stocks.Model_Name and cart.status='NO' and cart.username='"+session.getAttribute("user_name")+"'");
          ResultSet rs=st.executeQuery("select * from cart where cart.status='NO' and cart.username='"+session.getAttribute("user_name")+"'");

           out.println("<table border=1 align='center' cellspacing=20 cellpadding=20><tr><td>Sr. No</td><td>Menu Item</td><td>Quantity</td><td>Price</td><td>Total Price</td><td>Action</td></tr>");
            int i=1;
            int gt=0;
            String cartid1="";
            while(rs.next())
            {
                int cartid=rs.getInt(1);
                int t=Integer.parseInt(rs.getString(6));
                int quantity=Integer.parseInt(rs.getString(5));
                int price=rs.getInt(4);
                gt=gt+t;
                //cartid1=cartid1+";"+cartid;
                cartid1=cartid1+";"+cartid;
                out.println("<tr><td>"+i+"</td><td>"+rs.getString(3)+"</td><td><div id='qt"+i+"'>"+quantity+"</div><hr><div><input type='button' value='-' id='dec' onclick='decr("+i+","+price+")'>&nbsp;&nbsp;&nbsp;<input type='button' value='+' id='inc' onclick='incr("+i+","+price+")'></div></td><td>"+price+"</td><td><div id='total"+i+"'>"+t+"</div></td><td><form action='removecart.jsp' method='POST' ><input type='hidden' value='"+cartid+"' name='cid' id='cid"+i+"'><button onclick='ReloadLocation()' class='button button2'>Remove <i class='fa fa-trash-o'></i></button></form></td></tr>");
                i++;
            }
            session.setAttribute("cartids", cartid1);
            session.setAttribute("iteration",i);
            out.println("<input type='hidden' id='tt' value="+(i-1)+">");
            out.println("<form action='OrderCreation' method='post'><tr><td colspan=4>Grand Total</td><td><div id='grand_total'>"+gt+"</div><input type='hidden' value="+gt+" name='gt' id='gt'></form></td><td><form action='menu.jsp' method='POST'><input type='submit' class='button button2' name='add_more' value='Add More Items'></form></td></tr></table>");
}catch(Exception e){out.println(e);} 
       
        %>
        <br><br>
<center><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalCenter">
  Place Order
</button></center>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Proceed Further</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
Ready to confirm your order?  Click <b>'Proceed to Pay'</b>! <br>Want to add more? Go back to cart.    </div>
      <div class="modal-footer">
          <button type="button" onclick="BackToCart()" class="btn btn-outline-success" data-dismiss="modal">Back to Cart</button>
        <button type="button" id='payButton' onclick="CreateOrderID()" class="btn btn-outline-warning">Proceed to Pay</button>
      </div>
    </div>
  </div>
</div>
       
        
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
                                <div class="footer-link">
                                    <h2>Quick Links</h2>
                                    <a href="about.html">About Us</a>
                                    <a href="menu.jsp">Our Menu</a>
                                   
                                </div>
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