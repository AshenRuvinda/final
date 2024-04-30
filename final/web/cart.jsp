<%-- 
    Document   : cart
    Created on : Apr 30, 2024, 12:19:39 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <title>Document</title>
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- cart css -->
    <link rel="stylesheet" type="text/css" href="css/cart.css">
</head>
<body>
    <!--Header start-->

    <!--Header End-->


    <!--Shopping Cart start-->
    <section class="container content-section" id="shopping-cart">
  
        <h3 style="text-decoration: underline;text-align: center; margin-bottom: 7%;">Shopping Cart</h3>
 
        <table class="table table-hover table-cart">
            <thead>
                <tr>
                    <th>Item</th>
                    <th>Price</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody class="cart-items">
    
     
            </tbody>
        </table>

        <div class="cart-total"> 
           <strong class="cart-total-title">Total</strong>
           <span  class="cart-total-price" style="text-align: right;">$0</span>
        </div>
 

        <div class="btn-purchase" style="margin-top: 10%;">
           <button type="button"  class="btn btn-dark btn-purchase "><i class="fa-solid fa-cart-shopping " style="margin-right: 6%;"></i><a href="buy now.jsp" style="color: white;">BUY NOW</a></button>
        </div>

    </section> 
    <!--Shopping Cart End-->


    <!--Footer start-->

    <!--Footer End-->


    <!-- cart -->
    <script src="js/cart.js"></script>
    
</body>
</html>
