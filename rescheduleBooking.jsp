<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
      if (session.getAttribute("user") == null) {
    	  	response.sendRedirect("login.jsp");
      }
%>

<jsp:include page="templates/public/header.jsp" />  
	
	<div class="site-section bg-light">
      <div class="container">
            <div class="row border-bottom" style="margin-bottom: 100px;">
        <h2 class="mx-auto">Reschedule</h2>
       </div>
        <div class="row">
              <div class="row">  
          <div class="col-md-8 mx-auto mb-5 text-center">
          <p class="${color}">${err}</p>
          </div>
      </div>
          <div class="col-md-7 mb-5 mx-auto">

            <form action="RescheduleBooking" class="p-5 bg-white" method="post">
            
				<input type="hidden" name="bid" value="${param['id']}">
            
            
            
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0"> 
                <label class="text-black" for="date">New Date of Travel</label>
                <div class="input-group">
                	
                  	<div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1"><i class="fas fa-calendar-alt"></i></span>
					  </div>
                  <input type="text" name="date" id="datepicker" class="form-control px-2" readonly>
                </div>
                </div>
              </div><br>
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Reschedule" class="btn btn-success py-2 px-4 text-white">
                </div>
              </div>
              
            </form>
          </div>
		</div>
		</div>
	</div>




<jsp:include page="templates/public/footer.jsp" />  