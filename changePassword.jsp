<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
      if (session.getAttribute("user") == null) {
    	  	response.sendRedirect("login.jsp");
      }
%>

<jsp:include page="templates/public/header.jsp" />  


    
    <div class="site-section bg-light"  style="background: #5f2c82;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #49a09d, #5f2c82);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #49a09d, #5f2c82); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    ">
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
                  <input type="password" name="password" class="form-control" placeholder="Enter your new password" required="required">
                </div>
              </div><br>
              <input type="hidden" name="id" value="<%= session.getAttribute("user") %>">
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Save" class="btn btn-success py-2 px-4 text-white">
                </div>
              </div>

            </form>
          </div>
          </div>

</div>
</div>

<jsp:include page="templates/public/footer.jsp" />  