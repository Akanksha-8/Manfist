<jsp:include page="templates/public/header.jsp" />  

    
    <div class="site-section bg-light" style="background: #5f2c82;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #49a09d, #5f2c82);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #49a09d, #5f2c82); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    ">
      <div class="container">
        <div class="row">
        <div class="col-md-8 mx-auto mb-5 text-center">
          <p class="${color}">${err}</p>
          </div>
          <div class="col-md-7 mb-5">

            

            <form action="Contact" class="p-5 bg-white" method="post">
             <h2 class="mb-3"><p class="text-center">Get In Touch</p></h2>

              <div class="row form-group">
              
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="fname">Name</label>
                  <input type="text" id="fname" name="name" class="form-control" placeholder="Write your name" required>
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="email">Email</label> 
                  <input type="email" id="email" name="email" class="form-control" placeholder="Write your email" required>
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="subject">Subject</label> 
                  <input type="subject" id="subject" name="subject" class="form-control"  placeholder="Write your subject" required>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="message">Message</label> 
                  <textarea name="message" id="message" cols="30" rows="12" class="form-control" placeholder="Write your notes or questions here..." required></textarea>
                </div>
              </div>
				<br>
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Send Message" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>

  
            </form>
          </div>
          <div class="col-md-5">
            
            <div class="p-4 mb-3 bg-white">
              <p class="mb-0 font-weight-bold">Address</p>
              <p class="mb-4">Sector V, Salt Lake, Kolkata, West Bengal</p>

              <p class="mb-0 font-weight-bold">Phone</p>
              <p class="mb-4"><a href="#">+91 9876543210</a></p>

              <p class="mb-0 font-weight-bold">Email Address</p>
              <p class="mb-0"><a href="#">info@voyagers.com</a></p>

            </div>
            
            <div class="p-4 mb-3 bg-white">
              <img src="images/hero_bg_1.jpg" alt="Image" class="img-fluid mb-4 rounded">
              <h3 class="h5 text-black mb-3">More Info</h3>
              <p>Voyagers is one of the top travel booking sites in the market. We at Voyagers try to provide easy and hassle free bookings to your dream destinations.</p>
              <p><a href="about.jsp" class="btn btn-primary px-4 py-2 text-white">Learn More</a></p>
            </div>

          </div>
        </div>
      </div>
    </div>



<jsp:include page="templates/public/footer.jsp" />


  