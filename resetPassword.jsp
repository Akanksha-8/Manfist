<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
      if (session.getAttribute("id") == null) {
    	  	response.sendRedirect("login.jsp");
      }
%>

<jsp:include page="templates/public/header.jsp" />  



	<div class="site-blocks-cover inner-page-cover" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              <h1 class="text-white font-weight-light">Reset Password</h1>              
            </div>
          </div>
        </div>
      </div>  


    
    <div class="site-section bg-light">
      <div class="container">
      <div class="row">  
          <div class="col-md-8 mx-auto mb-5 text-center">
          <p class="${color}">${err}</p>
          </div>
      </div>
        <div class="row">
        
          <div class="col-md-8 mx-auto mb-5">
            <form action="UserPasswordReset" class="p-5 bg-white"  method="post">

          	<div class=" text-center"><h2><p>Update Password</p></h2></div><br>
          	             
			 <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">Password</label> 
                  <input type="text" name="password" class="form-control" placeholder="Enter your new password" required="required">
                </div>
              </div><br>
              <input type="hidden" name="id" value="<%= session.getAttribute("id") %>">
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Save" class="btn btn-success py-2 px-4 text-white">
                </div>
              </div>

            </form>
          </div>




<jsp:include page="templates/public/footer.jsp" />  