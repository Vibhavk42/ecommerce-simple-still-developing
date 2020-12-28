<%@page import="com.mycompany.cart.entities.User"%>
<%
 User user=(User)session.getAttribute("current-user") ;  
    if(user==null)
    {
        session.setAttribute("message", " please login to access");
        response.sendRedirect("login.jsp");
        return;
    }else
    {
        if(user.getUserTpye().equals("normal"))
        {
           session.setAttribute("message","Invalid entry");
            response.sendRedirect("login.jsp"); 
            return;
        }
    }
    
    %>








<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin page</title>
                  
        <%@include file="components/common_css_js.jsp" %>
    </head>
    
    
    <body>
        
        <%@include file="components/navbar.jsp" %>
       
        <div class="container admin">
            <div class="row mt-3">
<!--                1st column-->
                <div class="col-md-4">
                    
<!--                     card is nothing but box like structure-->
                    <div class="card">
                        
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width:120px " class="img-fluid img-thumbnail" src="img/visits.png"  alt="user_icon"  >                            
                                
                                
                            </div>
                            <h1>2392</h1>
                            <h1 class="text-muted">Users</h1>
                            
                            
                            
                            
                        </div>
                        
                        
                        
                        
                    </div>
                    
                    
                    
                </div>
<!--                  2nd col-->
                <div class="col-md-4">
<!--                     2nd card-->
                    <div class="card">
                         <div class="container">
<!--                              properties taken from bootstrap-->
                                <img style="max-width:120px" class="img-fluid img-thumbnail mx-auto d-block" src="img/list.png "  alt="user_icon"  >                            
                                  
                            </div>
                        
                        <div class="card-body text-center">
                            <h1>323424</h1>
                            <h1 class="text-muted">Categories</h1>
                        </div>
                            
                            
                    </div>         
                    
                </div>
                  <!--3rd col-->
                <div class="col-md-4">
                    <div class="card">
                        
                        <div class="card-body text-center">
                             <div class="container">
<!--                              properties taken from bootstrap-->
                                <img style="max-width:120px" class="img-fluid img-thumbnail mx-auto d-block" src="img/products.png "  alt="user_icon"  >                            
                                  
                            </div>
                        
                            <h1>43536</h1>
                            <h1 class="text-muted">Products</h1>
                            
                            
                            
                    
                    
                    
                </div>
                
                
            </div>
                
       
            
            
            
        </div>
            
        </div>
        
        
<!--          2nd row -->
<div class="container admin">
        <div class="row mt-2">
<!--            2nd row 1st col-->
            <div class="col-md-6">
                
                <div class="card">
                     <div class="card-body text-center">
                             <div class="container">
<!--                              properties taken from bootstrap-->
                                <img style="max-width:120px" class="img-fluid img-thumbnail" src="img/new-product.png "  alt="user_icon"  >                            
                                <p>click</p>
                            </div>
                        
                            
                            <h1 class="text-muted">Add Categories</h1>
                            
                            
                   
                    
                </div>
                
                
            </div>
          
            </div>
<!--       2nd row 2nd col-->
              <div class="col-md-6">
                
                <div class="card">
                    <div class="card-body text-center">
                             <div class="container">
<!--                              properties taken from bootstrap-->
                                <img style="max-width:120px" class="img-fluid img-thumbnail " src="img/product-management.png "  alt="user_icon"  >                            
                                <p>click</p>
                            </div>
                        
                            
                            <h1 class="text-muted">Add Products</h1>
                            
                            
                    
                    
                </div>
                
                
            </div>
         
        </div>
        </div>
</div>
        
              
    </body>
</html>
