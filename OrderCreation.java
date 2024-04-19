/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//package com.mycompany.mavenproject3;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.*;
import com.razorpay.*;

/**
 *
 * @author admin
 */
@WebServlet(name="OrderCreation", urlPatterns={"/OrderCreation"})
public class OrderCreation extends HttpServlet {
  
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      //  processRequest(request, response);
      PrintWriter out = response.getWriter();
      RazorpayClient razorpay = null;
try{

razorpay=new RazorpayClient("rzp_test_SF3dOPXIy3WbGn", "lkHkuX5GNXZUEHH5H807vGiW");

      
JSONObject orderRequest = new JSONObject();
String amt=request.getParameter("gt");


orderRequest.put("amount",amt);
orderRequest.put("currency","INR");
orderRequest.put("receipt", "receipt#1");
orderRequest.put("payment_capture",true);


Order order = razorpay.orders.create(orderRequest);
String orderid=order.get("id");
response.getWriter().append(orderid);
}

catch(RazorpayException e){
 e.printStackTrace();
}
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      PrintWriter out = response.getWriter(); 
     RazorpayClient razorpay = null;
try{

razorpay=new RazorpayClient("rzp_test_SF3dOPXIy3WbGn", "lkHkuX5GNXZUEHH5H807vGiW");

String secret = "lkHkuX5GNXZUEHH5H807vGiW";

JSONObject options = new JSONObject();
options.put("razorpay_order_id", "order_IEIaMR65cu6nz3");
options.put("razorpay_payment_id", "pay_IH4NVgf4Dreq1l");
options.put("razorpay_signature", "0d4e745a1838664ad6c9c9902212a32d627d68e917290b0ad5f08ff4561bc50f");

boolean status =  Utils.verifyPaymentSignature(options, secret);




if (status){
out.println("<script>alert('Oops Paymnet Failed !! Try Again');window.location.assign('view_cart.jsp');</script>");
}


else{

out.println("<script>window.location.assign('view_orders.jsp');</script>");
}

}

catch(RazorpayException e){
 e.printStackTrace();
}
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
