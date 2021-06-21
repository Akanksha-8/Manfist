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
  <h4 class="border-bottom border-gray pb-2 mb-0">All Destinations</h4>
   <div class="row p-3 table-responsive-md"> 
            <table class="table table-light">
              <thead>
                <tr>
                  <th scope="col">DestinationID</th>
                  <th scope="col">Name</th>
                  <th scope="col">Description</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${destinations}" var="destination">
                <tr>
                  <th scope="row"><c:out value="${destination.id}" /></th>
                  <td><c:out value="${destination.name}" /></td>
                  <td><c:out value="${destination.description}" /></td>
                  <td>
                  	<a href="AdminDeleteDestination?DeleteID=<c:out value="${destination.id}" />" class="btn btn-danger" title="Delete"><i class="fas fa-trash-alt"></i></a>
                  </td>
                  
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
</main>

<jsp:include page="templates/admin/footer.jsp" /> 