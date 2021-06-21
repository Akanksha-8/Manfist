<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
      if (session.getAttribute("user") != null) {
    	  	response.sendRedirect("index.jsp");
      }
%>

<jsp:include page="templates/public/header.jsp" />   


    
    <div class="site-section" style="background: #5f2c82;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #49a09d, #5f2c82);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #49a09d, #5f2c82); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    ">
      <div class="container">
      <div class="row">  
          <div class="col-md-8 mx-auto mb-5 text-center">
          <h4><p class="${color}">${err}</p></h4>
          </div>
      </div>
        <div class="row">
        
          <div class="col-md-5 mb-5">
            <form action="UserRegister" class="p-5 bg-white"  method="post">

          	<div class=" text-center"><h2><p>Sign Up</p></h2></div><br>
          	             
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black">Name</label>
                  <input type="text" name="name" class="form-control" placeholder="Enter your name" pattern="[a-zA-Z\s]{1,}" title="Only alphabets allowed" required="required">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">Email</label> 
                  <input type="email" name="email" class="form-control" required="required" placeholder="Enter your email">
                </div>
              </div>
			 <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">Phone</label> 
                  <input type="text" name="phone" class="form-control" placeholder="Enter your phone number" pattern="[0-9]{10}" title="Only 10 digit numbers allowed" required="required">
                </div>
              </div>
			 <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">Password</label> 
                  <input type="password" name="password" class="form-control" pattern=".{5,}" title="5 characters minimum" placeholder="Enter your password" required="required">
                </div>
              </div><br>
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="SignUp" class="btn btn-success py-2 px-4 text-white">
                </div>
              </div>

            </form>
          </div>

		<div class="col-md-1"></div>

		<div class="col-md-5 mb-5">
            <form action="UserLogin" class="p-5 bg-white" method="post">
            
             <div class=" text-center"><h2><p>Login</p></h2></div> <br>
             
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">Email</label> 
                  <input type="email" name="email" class="form-control" required="required"  placeholder="Enter your email">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">Password</label> 
                  <input type="password" name="password" class="form-control"  pattern=".{5,}" required="required" title="5 characters minimum" placeholder="Enter your password">
                </div>
              </div><br>
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Login" class="btn btn-success py-2 px-4 text-white"><br><br>
                  <a class="btn btn-link nav-link " data-toggle="modal" data-target="#ForgetModal">
			                    Forget Password?
			      </a>
                </div>
              </div>
              
            </form>
          </div>


        </div>
      </div>
    </div>
	<!-- Forget Password Modal -->
    <div class="modal fade text-dark" id="ForgetModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">
                Forget Password
              </h5>
            </div>
            <div class="modal-body">
              <form action="AdminCheckEmail" method="post">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                  </div>
                  <input type="text" class="form-control" placeholder="Enter Email" name="email">
                </div>
                <div class="modal-footer">
                  <button class="btn btn-primary btn-block" name="send">Submit</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>



<jsp:include page="templates/public/footer.jsp" />  