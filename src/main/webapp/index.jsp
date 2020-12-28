<%-- 
    Document   : index
    Created on : 23 Dec, 2020, 2:09:49 PM
    Author     : HP
--%>

<%@page import="com.mycompany.cart.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My cart-Home</title>
        
        <%@include file="components/common_css_js.jsp" %>
        
         
        
    </head>
    <body>
        
        <%@include file="components/navbar.jsp" %>
        <h1>Hello World!</h1>
        <h1>creating session factory object</h1>
       
        <%
            out.println(FactoryProvider.getFactory());
            
            
            %>
         
    </body>
</html>


