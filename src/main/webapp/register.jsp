
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>New User</title>
           <%@include file="components/common_css_js.jsp" %>
           
   
        
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
<!--        container used to remove the horizontal line at bottom-->
        <div class="container">
            
             <div class="row mt-5">
            <div class="col-md-4 offset-md-4">
                <img style="height:80px"src="img/signup.png"/> 
                  <h3>Sign Up Here </h3>
                  <br>
<!--                card body used to  create box like in sign up page-->
<%@include file="components/message.jsp" %>
                <div class="card"> 
                    
               
                   
                    
                    <div class="card-body">
                      
                        <form action="RegisterServlet" method="post">
<!--                    used from bootstrap-->
                    
                    <div class="form-group">
    <label for="name">UserName</label>
    <input name="user_name" type="text" class="form-control" id="name" placeholder="enter here">
  </div>
 <div class="form-group">
    <label for="email">UserEmail</label>
    <input name="user_email" type="email" class="form-control" id="email" placeholder="enter here">
  </div>
<div class="form-group">
    <label for="password">Password</label>
    <input name="user_password" type="password" class="form-control" id="password" placeholder="enter here">
  </div>
<div class="form-group">
    <label for="number">Phone number</label>
    <input name="user_Phone" type="number" class="form-control" id="number" placeholder="enter here">
  </div>

<div class="form-group">
    <label for="address">Address</label>
    <textarea  name="user_address" style="height:200px"class="form-control" placeholder="enter here"></textarea>
  </div>

<div class="container text-center">
    <button class="">Register</button>   
    <button class="">Reset</button>
</div>



                </form>
                        
                        
                        
                        
                        
                        
                    </div>
                    
                    
                    
                </div>
                
            </div>
            
            
            
        </div>
            
            
            
            
            
        </div>
        
    </body>
</html>
