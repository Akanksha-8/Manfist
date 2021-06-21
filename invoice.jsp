<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
      if (session.getAttribute("user") == null) {
    	  	response.sendRedirect("login.jsp");
      }
%>

<jsp:include page="templates/public/header.jsp" />  
	
	<div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-10 mb-5 mx-auto">
		<c:forEach items="${bookings}" var="booking">	
<div id="invoice">

    <div class="toolbar hidden-print">
        <div class="text-right">
            <button id="printInvoice" class="btn btn-primary" onclick="window.print();return false;"><i class="fa fa-print"></i> Print</button>
        </div>
        <hr>
    </div>
    <div class="invoice overflow-auto">
        <div style="min-width: 600px">
            <header>
                <div class="row">
                    <div class="col-md-3 text-center">
                        <a target="_blank" class="" href="index.jsp">
                            <h1>Voyagers</h1>
                            </a>
                    </div>
                    <div class="col-md-9 text-right company-details">
                            <a target="_blank">
                            Sector V, Salt Lake, Kolkata, West Bengal
                            </a>
                        <div>+91 9876543210</div>
                        <div>info@voyagers.com</div>
                    </div>
                </div>
            </header>
            <main>
                <div class="row contacts">
                    <div class="col invoice-to">
                        <h2 class="to"><c:out value="${booking.username}" /></h2>
                        <div class="address"><c:out value="${booking.phone}" /></div>
                        <div class="email"><a href=""><c:out value="${booking.email}" /></a></div>
                    </div>
                    <div class="col invoice-details">
                        <h1 class="invoice-id">INVOICE <c:out value="${booking.id}" /></h1>
                        <div class="date">Date of Invoice: <c:out value="${booking.date}" /></div>
                    </div>
                </div>
                <table border="0" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th class="text-left">DESCRIPTION</th>
                            <th></th><th></th>
                            <th class="text-right">PRICE</th>
                            <th class="text-right">TOTAL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="no">01</td>
                            <td class="text-left" colspan="3"><h3>
                                <p>
                               Destination
                                </p>
                                </h3>
                               <p>
                                  <c:out value="${booking.destination}" />
                               </p> 

                            </td>
                            <td class="unit">&#8377; 2000.00</td>
                            <td class="total">&#8377; 2000.00</td>
                        </tr>
                        <tr>
                            <td class="no">02</td>
                            <td class="text-left" colspan="3"><h3>
                                <p>
                               Hotel
                                </p>
                                </h3>
                                <p>
                                  <c:out value="${booking.hotel}" />
                               </p> 
                             </td>
                            <td class="unit">&#8377; 1000.00</td>
                            <td class="total">&#8377; 1000.00</td>
                        </tr>
                        <tr>
                            <td class="no">03</td>
                            <td class="text-left" colspan="3"><h3>
                                <p>
                               People
                                </p>
                                </h3><p><c:out value="${booking.people}" /></p>
                             </td>
                             <td class="unit">&#8377; 0.00</td>
                             <c:choose>
							    <c:when test="${booking.people==1}">
							        <td class="total">&#8377; 3000.00</td>
							    </c:when>
							    <c:when test="${booking.people==2}">
							        <td class="total">&#8377; 5000.00</td>
							    </c:when>
							    <c:when test="${booking.people==3}">
							        <td class="total">&#8377; 8000.00</td>
							    </c:when>
							    <c:when test="${booking.people==4}">
							        <td class="total">&#8377; 10000.00</td>
							    </c:when>
							    <c:when test="${booking.people==5}">
							        <td class="total">&#8377; 12000.00</td>
							    </c:when>
							</c:choose>
                           
                            
                        </tr>
                        
                    </tbody>
                    <tfoot>
                    <tr>
 
                            <td colspan="2"></td>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <td colspan="3"></td>
                            <td colspan="2">TOTAL(GST 9% + Service Charge 5%)</td>
                            <td>&#8377; <c:out value="${booking.price}" />.00</td>
                        </tr>
                    </tfoot>
                </table>
                <div class="thanks">Thank you!</div>
                <div class="notices">
                    <div>NOTICE:</div>
                    <div class="notice">No refund will be given on cancellation.</div>
                </div>
            </main>
            <footer>
                Invoice was created on a computer and is valid without the signature and seal.
            </footer>
        </div>
        <div></div>
    </div>
</div>
            </c:forEach>
          </div>
		</div>
	  </div>
	</div>




<jsp:include page="templates/public/footer.jsp" />  