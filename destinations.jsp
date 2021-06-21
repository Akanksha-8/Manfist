<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="templates/public/header.jsp" />  



<div class="site-blocks-cover inner-page-cover" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.9">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
              <h1 class="text-white font-weight-light">Destinations</h1>  
               <p><a href="#destinations" class="btn btn-primary py-3 px-5 text-white">Explore!</a></p>            
            </div>
          </div>
        </div>
      </div>  


    

    <div class="site-section" style="background: #5f2c82;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #49a09d, #5f2c82);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #49a09d, #5f2c82); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    ">
      <div class="container" id="destinations">
        <div class="row">
        
		<c:forEach items="${destinations}" var="destination">

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <a href="UserBookTour?id=<c:out value="${destination.id}"/>&destination=<c:out value="${destination.name}" />" class="unit-1 text-center">
              <img src="images/<%= java.lang.Math.round(java.lang.Math.random() * 16) %>.jpg" alt="Image" class="img-fluid">
              <div class="unit-1-text">
                <h3><c:out value="${destination.name}" /></h3>
                <h5 class="text-muted"><c:out value="${destination.description}" /></h5>
              </div>
            </a>
          </div>
          
		</c:forEach>
			
        </div>
      </div>
    </div>



<jsp:include page="templates/public/footer.jsp" />  