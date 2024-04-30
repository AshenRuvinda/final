<%-- 
    Document   : orderlist
    Created on : Apr 28, 2024, 2:34:22 PM
    Author     : User
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orders</title>
        <style>
            table{
                width:100%;
                border-collapse: collapse;
                border: 1px solid;
                
            }
            td,th{
                border: 1px solid;
                text-align: center;
            }
            h1{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Orders DataBase</h1>
        <br><br>
        <%--
        <a href="NewCustomerServlet" >New Customer</a>
        --%>
        <br><br>
        <table >
            <tr>
                <th>Oder ID</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total Price</th>
                <th>Action</th>
                
            </tr>
            
            <c:forEach var="order" items="${orderlist}" >
                <tr>
                    <td><c:out value="${order.orderid}"/></td>
                    <td><c:out value="${order.productname}"/></td> 
                    <td><c:out value="${order.price}"/></td>
                    <td><c:out value="${order.quantity}"/></td>
                    <td><c:out value="${order.totalprice}"/></td>
                    <td>
                        <a href="/ElecZone/EditCustomerServlet?id=<c:out value="${order.orderid}"/>">update</a> &nbsp;&nbsp;
                        <a href="/ElecZone/DeleteOrderServlet?id=<c:out value="${order.orderid}"/>">delete</a>
                    </td>
                </tr>
            </c:forEach> 
           
        </table>
        
    </body>
</html>
