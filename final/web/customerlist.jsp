<%-- 
    Document   : customerlist
    Created on : Apr 27, 2024, 5:58:48 PM
    Author     : User
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customers</title>
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
        <h1>Customer DataBase</h1>
        <br><br>
        <a href="NewCustomerServlet" >New Customer</a>
        <br><br>
        <table >
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Mobile</th>
                <th>Action</th>
                
            </tr>
            
            <c:forEach var="customer" items="${customerlist}" >
                <tr>
                    <td><c:out value="${customer.id}"/></td>
                    <td><c:out value="${customer.name}"/></td> 
                    <td><c:out value="${customer.email}"/></td>
                    <td><c:out value="${customer.address}"/></td>
                    <td><c:out value="${customer.mobile}"/></td>
                    <td>
                        <a href="/ElecZone/EditCustomerServlet?id=<c:out value="${customer.id}"/>">update</a> &nbsp;&nbsp;
                        <a href="/ElecZone/DeleteCustomerServlet?id=<c:out value="${customer.id}"/>">delete</a>
                    </td>
                </tr>
            </c:forEach> 
           
        </table>
        
    </body>
</html>
