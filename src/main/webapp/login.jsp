
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="container">

            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-3">
                        <div class="card-header">
                            <h3>Login</h3>

                        </div>
                        <div class="card-body">
                            
                          
                            <form action="LoginServlet" method="Post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>

                                <div class="container">

                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="register.jsp">New user?Click here</a>
                                    <%@include file="components/message.jsp" %>
                                </div>
                            </form>




                        </div>






                    </div>







                </div>











            </div> 









        </div>

























    </body>
</html>
