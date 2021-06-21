<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
      if (session.getAttribute("user") == null) {
    	  	response.sendRedirect("login.jsp");
      }
%>

<jsp:include page="templates/public/header.jsp" />  


    
    <div class="site-section col-md-12 bg-light">
      <div class="container col-md-11">
       <div class="row border-bottom" style="margin-bottom: 100px;">
        <h2 class="mx-auto">Past Bookings</h2>
       </div>
      <div class="row">  
          <div class="col-md-12 mb-5 text-center">
          <p class="${color}">${err}</p>
          </div>
      </div>
        <div class="row">
          <div class="col-md-12 mx-auto mb-5">

            <table class="table">
			  <thead>
			    <tr>
			      <th scope="col">BookingID</th>
                  <th scope="col">Status</th>
                  <th scope="col">Email</th>
                  <th scope="col">Destination</th>
                  <th scope="col">People</th>
                  <th scope="col">Price</th>
                  <th scope="col">Date</th>
                  <th scope="col">Hotel</th>
                  <th scope="col">Bank</th>
                  <th scope="col">Card No.</th>
                  <th scope="col">Cancel</th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${bookings}" var="booking">
                <tr>
                  <th scope="row"><a href="Invoice?id=<c:out value="${booking.id}" />" class="text-success"><c:out value="${booking.id}" /></a></th>
                  <td><c:out value="${booking.status}" /></td>
                  <td><c:out value="${booking.email}" /></td>
                  <td><c:out value="${booking.destination}" /></td>
                  <td><c:out value="${booking.people}" /></td>
                  <td><c:out value="${booking.price}" /></td>
                  <td><c:out value="${booking.date}" /></td>
                  <td><c:out value="${booking.hotel}" /></td>
                  <td><c:out value="${booking.bank}" /></td>
                  <td><c:out value="${booking.card}" /></td>
                 <c:choose>
				    <c:when test="${(booking.status).equals('Cancelled')}">
				       <td class="text-muted"> </td>
				    </c:when>
				    <c:otherwise>
				       <td>
                   	<a href="CancelBooking?CancelID=<c:out value="${booking.id}" />" class="btn btn-block btn-danger" title="Cancel"><i class="fas fa-window-close"></i></a>
                   	<a href="rescheduleBooking.jsp?id=<c:out value="${booking.id}" />" class="btn btn-block btn-primary" title="Reschedule"><i class="fas fa-edit"></i></a>
                   	<a href="Invoice?id=<c:out value="${booking.id}" />" class="btn btn-block btn-success" title="Invice"><i class="fas fa-print"></i></a>
                   	</td>
				    </c:otherwise>
				</c:choose>
                </tr>
              </c:forEach>
			  </tbody>
			</table>

          </div>
        </div>
      </div>
    </div>



<jsp:include page="templates/public/footer.jsp" />


  