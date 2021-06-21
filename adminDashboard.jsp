<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
      if (session.getAttribute("admin") == null) {
    	  	request.setAttribute("err", "Login First..");
			request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
      }
%> 

<jsp:include page="templates/admin/header.jsp" />  
<jsp:include page="templates/admin/sidebar.jsp" />
 
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4" style="margin-top: 55px;">
 <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3">
 	<div class="my-3 p-3 bg-white rounded box-shadow">
	   <div class="border-bottom border-gray pb-2 mb-0 row">
	   	<h4 class="pl-3">Recent Bookings</h4>
	   		<div class="row p-3 table-responsive-md">
            <table class="table table-light">
              <thead>
                <tr>
                  <th scope="col">BookingID</th>
                  <th scope="col">Name</th>
                  <th scope="col">Email</th>
                  <th scope="col">Phone</th>
                  <th scope="col">Destination</th>
                  <th scope="col">People</th>
                  <th scope="col">Price</th>
                  <th scope="col">Date</th>
                  <th scope="col">Hotel</th>
                  <th scope="col">Status</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${bookings}" var="booking">
                <tr>
                  <th scope="row"><c:out value="${booking.id}" /></th>
                  <td><c:out value="${booking.username}" /></td>
                  <td><c:out value="${booking.email}" /></td>
                  <td><c:out value="${booking.phone}" /></td>
                  <td><c:out value="${booking.destination}" /></td>
                  <td><c:out value="${booking.people}" /></td>
                  <td><c:out value="${booking.price}" /></td>
                  <td><c:out value="${booking.date}" /></td>
                   <td><c:out value="${booking.hotel}" /></td>
                  <td><c:out value="${booking.status}" /></td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
	   </div>
	</div>
 </div>
 
  <h4 class="pb-2 mb-0">Customer Queries</h4>
   <div class="row p-3 table-responsive-md "> 
            <table class="table table-light">
              <thead>
                <tr>
                  <th scope="col">MessageID</th>
                  <th scope="col">Name</th>
                  <th scope="col">Email</th>
                  <th scope="col">Subject</th>
                  <th scope="col">Message</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${queries}" var="q">
                <tr>
                  <th scope="row"><c:out value="${q.id}" /></th>
                  <td><c:out value="${q.name}" /></td>
                  <td><c:out value="${q.email}" /></td>
                   <td><c:out value="${q.subject}" /></td>
                    <td><c:out value="${q.message}" /></td>                  
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
 
</main>
<jsp:include page="templates/admin/footer.jsp" /> 