<%-- 
    Document   : login
    Created on : 30/01/2018, 21:26:34
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
    </head>
    <body>


        <div class="container">
            <div class="login col-md-3 col-xs-11">
                <div class="row">
                    <div class="login-title col-xs-12">
                        <h3>Member Login</h3>
                    </div>
                    <div class="login-content col-xs-12">
                        
                        <form class="" action="index.jsp" method="post">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></div>
                                    <input type="text" class="form-control" id="username" placeholder="Username">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></div>
                                    <input type="password" class="form-control" id="password" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group text-center">
                                <button class="btn btn-primary btn-block" type="submit" name="button">Sing In</button>
                            </div>
                        </form>
                        
                    </div>
                    <div class="login-footer col-xs-12">
                        <a href="#" class="text-muted pull-left">Forgot Password?</a>
                        <a href="#" class="text-muted pull-right">Create an Account</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
