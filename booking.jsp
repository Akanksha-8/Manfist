<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
      if (session.getAttribute("user") == null) {
    	  	response.sendRedirect("login.jsp");
      }
%>

<jsp:include page="templates/public/header.jsp" />    
	
	<div class="site-section bg-light"  style="background: #5f2c82;
background: -webkit-linear-gradient(to right, #49a09d, #5f2c82);
background: linear-gradient(to right, #49a09d, #5f2c82);">
        <div class="row">
              <div class="row">  
          <div class="col-md-8 mx-auto mb-5 text-center">
          <p class="${color}">${err}</p>
          </div>
      </div>
          <div class="col-md-7 mb-5 mx-auto">

            <form action="SaveBooking" class="p-5 bg-white" method="post" id="calculate">
             <h2 class="mb-3 border-bottom"><p class="text-center">Book Your Tour</p></h2>
             
				<input type="hidden" name="did" value="${param['id']}">
				<input type="hidden" name="uid" value="${userid}">
            
            
            
              <div class=" text-center text-muted mt-5"><h4><p>Destination : ${param['destination']}</p></h4></div>
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0"> 
                <label class="text-black" for="date">Date of Travel</label>
                <div class="input-group">
                	
                  	<div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1"><i class="fas fa-calendar-alt"></i></span>
					  </div>
                  <input type="text" name="date" id="datepicker" class="form-control px-2" readonly>
                </div>
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">Number of People</label> 
                  <select name="people" class="form-control" id="people" required="required">
                    <option value="3000">1 - &#8377; 3000</option>
                    <option value="5000">2 - &#8377; 5000</option>
                    <option value="8000">3 - &#8377; 8000</option>
                    <option value="10000">4 - &#8377; 10000</option>
                    <option value="12000">5 - &#8377; 12000</option>
                  </select>
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">Choose Hotel<sup class="text-danger">*</sup></label> 
                   <label class="text-muted">(We will book the hotel for you)</label>
                  <select name="hid" class="form-control" required="required">
                  <c:forEach items="${hotels}" var="hotel">
                    <option value="<c:out value="${hotel.id}" />"><c:out value="${hotel.name}" /></option>
                    </c:forEach>
                  </select>
                </div>
              </div>
				<br>
				<div class="row form-group">
                <div class="col-md-12">
                  <label class=" text-muted"><h4 class="d-inline mt-1">Total price</h4> (inclusive of 9% GST and 5% Handling Charges)</label>
                  <h2>&#8377; &nbsp;<label id="total" name="price"></label></h2>
              </div></div><br>

				<div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">Select Your Bank</label> 
                  <select name="bank" class="form-control" required="required">
                    <option value="State Bank of India">State Bank of India</option>
                    <option value="Bank of Baroda">Bank of Baroda</option>
                    <option value="ICICI">ICICI</option>
                    <option value="Punjab National Bank">Punjab National Bank</option>
                    <option value="Axis Bank Ltd.">Axis Bank Ltd.</option>
                    <option value="Union Bank Of India">Union Bank Of India</option>
                  </select>
                </div>
              </div>
			 <div class="row form-group">
                <div class="col-md-7 mb-3 mb-md-0">
                  <label class="text-black">Card Number</label>
                  <input type="text" name="card" class="form-control" placeholder="Enter your 16 digit Card Number" pattern="[0-9]{16}" title="Only 16 digits and numbers allowed" required="required">
                </div>
                <div class="col-md-5 mb-3 mb-md-0">
                  <label class="text-black">CVV</label>
                  <input type="password" name="cvv" class="form-control" placeholder="Enter your 3 digit cvv" pattern="[0-9]{3}" title="Only 3 digits and numbers allowed" required="required">
                </div>
              </div><br>
              <div class="row form-group mt-2">
                <div class="col-md-6">
                  <input type="submit" value="Pay & Confirm Booking" class="btn btn-success py-2 px-4 text-white">
                </div>
                <div class="col-md-6">
                <img src="images/cards.png" alt="Image" class="img-fluid">
                </div>
              </div>

  				<div class="text-danger mt-4 row mt-4">*<label class="text-muted"> &nbsp;Hotel charges to be paid at the hotel based on availability and discretion of the hotel. </label></div>
            </div>
            </form>
            
          </div>
		</div>
		</div>
	</div>




<jsp:include page="templates/public/footer.jsp" />  