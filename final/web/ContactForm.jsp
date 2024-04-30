<%-- 
    Document   : ContactForm
    Created on : Apr 28, 2024, 1:25:56 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Contact Form</title>
        <link rel="stylesheet" href="css/ContactForm.css">
        <style>
            body{
                    box-sizing: border-box;
                    margin: 0;
                    padding: 0;
                    background: #0f0c29;  /* fallback for old browsers */
                    background: -webkit-linear-gradient(to right, #24243e, #302b63, #0f0c29);  /* Chrome 10-25, Safari 5.1-6 */
                    background: linear-gradient(to right, #24243e, #302b63, #0f0c29); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }
        </style>
    </head>
    <body>
        <div class="form-heading">
            <h1>Talk to us</h1>
        </div>
        <form action="ContactFormServlet" method="Post">      
            <input name="name" type="text" class="feedback-input" placeholder="Name" />   
            <input name="email" type="text" class="feedback-input" placeholder="Email" />
            <textarea name="text" class="feedback-input" placeholder="Comment"></textarea>
            <input type="submit" value="SUBMIT"/>
        </form>
    </body>
</html>
