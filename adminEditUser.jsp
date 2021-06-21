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
  <h4 class="border-bottom border-gray pb-2 mb-0">Edit User</h4>
  <c:forEach items="${users}" var="user">
   <form action="AdminEditUser?EditID=<c:out value="${user.id}" />" method="post">
    <div class="form-group">
	<br>
      <input type="text" class="form-control" value="<c:out value="${user.name}" />" name="name" pattern="[a-zA-Z\s]{1,}" title="Only alphabets allowed" required="required">
    </div>
    <div class="form-group">
	<br>
      <input type="password" class="form-control" placeholder="Enter New Password Or Leave This Blank" name="password">
    </div>
    <div class="form-group">
	<br>
      <input type="email" class="form-control" value="<c:out value="${user.email}" />" name="email" required="required">
    </div>
    <div class="form-group">
	<br>
      <input type="text" class="form-control" value="<c:out value="${user.phone}" />" name="phone" pattern="[0-9]{10}" title="Only 10 digit numbers allowed" required="required">
    </div><br>
    </c:forEach>
    <div class="form-group">
      <input type="submit" class="btn btn-success" value="Update User">
    </div>
  </form>
</main>

<jsp:include page="templates/admin/footer.jsp" /> 