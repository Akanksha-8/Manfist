<%
      if (session.getAttribute("admin") != null) {
    	  	response.sendRedirect("AdminDashboard");
      }
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <title>Travelers | Admin</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>

  <body>
    <!-- Forget Modal -->
    <div class="modal fade text-dark" id="ForgetModal">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Forget Password</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
              <p>Please contact the server administrator to generate a new password.</p> 
          </div><!-- /modal body -->
        </div>
      </div>
    </div>

    <div class="container text-center frm">
      <img src="images/admin.png" width="72" height="72">
      <div class="form-signin">
       <form method="post" action="AdminLogin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-user"></i></span>
          </div>
          <input type="text" class="form-control" name="username" placeholder="Enter Username" autofocus name="username" required>
        </div>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-lock"></i></span>
          </div>
          <input type="password" class="form-control" placeholder="Password" name="password" required>
        </div>
        <p class="text-danger">${err}</p><!--flash error-->
        <button class="btn btn-lg btn-primary btn-block" type="submit" name="signin">Sign in</button>
      </form>
      <button class="btn btn-link" data-toggle="modal" data-target="#ForgetModal">Forget password?</button><br>
      <a href="index.jsp">Back to Home..</a>
    </div>
      <p class="text-muted" style="margin-top: 15px;">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved</p>
    </div> <!-- /container -->

    <script defer src="js/all.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
  </body>
</html>
      