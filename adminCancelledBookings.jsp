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
  <h4 class="border-bottom border-gray pb-2 mb-0">All Cancelled Bookings</h4>
   <div class="row p-3 table-responsive-md">
            <table class="table table-light">
              <thead>
                <tr>
                  <th scope="col">BookingID</th>
                  <th scope="col">Name</th>
                  <th scope="col">Email</th>
                  <th scope="col">Destination</th>
                  <th scope="col">People</th>
                  <th scope="col">Price</th>
                  <th scope="col">Date</th>
                  <th scope="col">Hotel</th>
                  <th scope="col">Bank</th>
                  <th scope="col">Card No.</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${bookings}" var="booking">
                <tr>
                  <th scope="row"><c:out value="${booking.id}" /></th>
                  <td><c:out value="${booking.username}" /></td>
                  <td><c:out value="${booking.email}" /></td>
                  <td><c:out value="${booking.destination}" /></td>
                  <td><c:out value="${booking.people}" /></td>
                  <td><c:out value="${booking.price}" /></td>
                  <td><c:out value="${booking.date}" /></td>
                  <td><c:out value="${booking.hotel}" /></td>
                  <td><c:out value="${booking.bank}" /></td>
                  <td><c:out value="${booking.card}" /></td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
</main>

<jsp:include page="templates/admin/footer.jsp" /> 