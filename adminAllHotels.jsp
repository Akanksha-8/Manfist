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
  <h4 class="border-bottom border-gray pb-2 mb-0">All Hotels</h4>
   <div class="row p-3 table-responsive-md"> 
            <table class="table table-light">
              <thead>
                <tr>
                  <th scope="col">HotelID</th>
                  <th scope="col">Name</th>
                  <th scope="col">Destination</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${hotels}" var="hotel">
                <tr>
                  <th scope="row"><c:out value="${hotel.id}" /></th>
                  <td><c:out value="${hotel.name}" /></td>
                  <td><c:out value="${hotel.dname}" /></td>
                  <td>
                  	<a href="AdminDeleteHotel?DeleteID=<c:out value="${hotel.id}" />" class="btn btn-danger" title="Delete"><i class="fas fa-trash-alt"></i></a>
                  </td>
                  
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
</main>

<jsp:include page="templates/admin/footer.jsp" /> 