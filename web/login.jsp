<%-- 
    Document   : login
    Created on : Feb 4, 2018, 6:12:53 PM
    Author     : kazi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="home/css.jsp" %>
    </head>
    <body class="off-canvas-sidebar">
    <nav class="navbar navbar-primary navbar-transparent navbar-absolute">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href=" ../dashboard.html ">Material Dashboard Pro</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="../dashboard.html">
                            <i class="material-icons">dashboard</i> Dashboard
                        </a>
                    </li>
                    <li class="">
                        <a href="register.html">
                            <i class="material-icons">person_add</i> Register
                        </a>
                    </li>
                    <li class=" active ">
                        <a href="login.html">
                            <i class="material-icons">fingerprint</i> Login
                        </a>
                    </li>
                    <li class="">
                        <a href="lock.html">
                            <i class="material-icons">lock_open</i> Lock
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="wrapper wrapper-full-page">
        <div class="full-page login-page" filter-color="black" data-image="assets/img/login.jpeg">
            <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
                            <form method="post" action="loginProcess.jsp">
                                <div class="card card-login card-hidden">
                                    <div class="card-header text-center" data-background-color="rose">
                                        <h4 class="card-title">Login</h4>
                                        <div class="social-line">
                                            <a href="#btn" class="btn btn-just-icon btn-simple">
                                                <i class="fa fa-facebook-square"></i>
                                            </a>
                                            <a href="#pablo" class="btn btn-just-icon btn-simple">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                            <a href="#eugen" class="btn btn-just-icon btn-simple">
                                                <i class="fa fa-google-plus"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <p class="category text-center">
                                        Or Be Classical
                                    </p>
                                   
                                    <div class="card-content">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">face</i>
                                            </span>
                                            <div class="form-group label-floating">
                                                <label class="control-label">User Name</label>
                                                <input type="text" name="uname" class="form-control" required="true">
                                            </div>
                                        </div>
                             <!--           <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">email</i>
                                            </span>
                                            <div class="form-group label-floating">
                                                <label class="control-label">Email address</label>
                                                <input type="email" class="form-control">
                                            </div>
                                        </div>  -->
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">lock_outline</i>
                                            </span>
                                            <div class="form-group label-floating">
                                                <label class="control-label">Password</label>
                                                <input type="password"  name="upass" class="form-control" required="true">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="footer text-center">
                                        <button type="submit" class="btn btn-rose btn-simple btn-wd btn-lg">Let's go</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container">
                    <nav class="pull-left">
                        <ul>
                            <li>
                                <a href="#">
                                    Home
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Company
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Portofolio
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Blog
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <p class="copyright pull-right">
                        &copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        <a href="http://www.creative-tim.com"> Creative Tim </a>, made with love for a better web
                    </p>
                </div>
            </footer>
        </div>
    </div>
</body>
<%@include file="home/jscript.jsp" %>
<script type="text/javascript">
    $().ready(function() {
        demo.checkFullPageBackgroundImage();

        setTimeout(function() {
            // after 1000 ms we add the class animated to the login/register card
            $('.card').removeClass('card-hidden');
        }, 700)
    });
</script>
</html>
