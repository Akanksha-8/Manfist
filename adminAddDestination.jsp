<%
      if (session.getAttribute("admin") == null) {
    	  	request.setAttribute("err", "Login First..");
			request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
      }
%> 

<jsp:include page="templates/admin/header.jsp" />  
<jsp:include page="templates/admin/sidebar.jsp" />

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4" style="margin-top: 55px;">
  <h4 class="border-bottom border-gray pb-2 mb-0">Add New Destination</h4>
   <form action="AdminAddDestination" method="post">
    <div class="form-group">
	<br>
      <input type="text" class="form-control" placeholder="Destination Name" name="name" pattern="[a-zA-Z\s]{1,}" title="Only alphabets allowed" required="required">
    </div>
    <div class="form-group">
	<br>
      <input type="text" class="form-control" placeholder="Description" name="description" required="required">
    </div><br>
    <div class="form-group">
      <input type="submit" class="btn btn-success" value="Add Destination">
    </div>
  </form>
</main>

<jsp:include page="templates/admin/footer.jsp" /> 