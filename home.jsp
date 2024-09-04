<!-- School Information Management System-->
<!--Batch 4.1-->
<!--G333 -->

 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home</title>
    
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    
    <link rel="stylesheet" href="assets/vendors/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.theme.default.min.css">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/headerFooter.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
   
    <link rel="stylesheet" href="assets/css/style.css">
   
  </head>
  <body>
  <div class="header_navbar">

        <div class="header_logo">
            <div>SchoolSync</div>
        </div>

        <div class="header_menu-bar">
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="home.jsp">Support</a></li>
                <li><a href="">Library</a></li>
                <li><a href="">News</a></li>
                <li><a href="">About</a></li>
            </ul>
        </div>

        <div class="header_last">

            <select name="User" id="select-id" class="header_select" onchange="location=this.value;">
                <option disabled selected value="0">User</option>
                <option value="home.jsp" id="home">Home</option>
                <option value="" id="orders">logout</option>
            </select>

        </div>

    </div>
    <div class="container-scroller">
     
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
       
        <ul class="nav">
          
          <li class="nav-item nav-category">
            <span class="nav-link">Navigation</span>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="home.jsp">
              <span class="menu-icon">
                <i class="mdi mdi-speedometer"></i>
              </span>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-laptop"></i>
              </span>
              <span class="menu-title">Student Management</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <!-- linkkkkkkkkkk -->
            </div>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="">
              <span class="menu-icon">
                <i class="mdi mdi-playlist-play"></i>
              </span>
              <span class="menu-title">Course Management</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="">

              <span class="menu-icon">
                <i class="mdi mdi-table-large"></i>
              </span>
              <span class="menu-title">Class Management</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="grades.jsp">
              <span class="menu-icon">
                <i class="mdi mdi-chart-bar"></i>
              </span>
              <span class="menu-title">Grade Book</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="grades.jsp">
              <span class="menu-icon">
                <i class="mdi mdi-contacts"></i>
              </span>
              <span class="menu-title">Icons</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <span class="menu-icon">
                <i class="mdi mdi-security"></i>
              </span>
              <span class="menu-title">User Pages</span>
              <i class="menu-arrow"></i>
            </a>
            <!-- linkkkk -->
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="">
              <span class="menu-icon">
                <i class="mdi mdi-file-document-box"></i>
              </span>
              <span class="menu-title">Documentation</span>
            </a>
          </li>
        </ul>
      </nav>
      
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row">
              <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-9">
                        <div class="d-flex align-items-center align-self-start">
                          <h3 class="mb-0">1600</h3>
                          <p class="text-success ml-2 mb-0 font-weight-medium">+2.5%</p>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="icon icon-box-success ">
                          <span class="mdi mdi-arrow-top-right icon-item"></span>
                        </div>
                      </div>
                    </div>
                    <h6 class="text-muted font-weight-normal">Students</h6>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-9">
                        <div class="d-flex align-items-center align-self-start">
                          <h3 class="mb-0">165</h3>
                          <p class="text-success ml-2 mb-0 font-weight-medium">+1.2%</p>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="icon icon-box-success">
                          <span class="mdi mdi-arrow-top-right icon-item"></span>
                        </div>
                      </div>
                    </div>
                    <h6 class="text-muted font-weight-normal">Staff</h6>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-9">
                        <div class="d-flex align-items-center align-self-start">
                          <h3 class="mb-0">62.34%</h3>
                          <p class="text-danger ml-2 mb-0 font-weight-medium">-2.4%</p>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="icon icon-box-danger">
                          <span class="mdi mdi-arrow-bottom-left icon-item"></span>
                        </div>
                      </div>
                    </div>
                    <h6 class="text-muted font-weight-normal">Attendance</h6>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-9">
                        <div class="d-flex align-items-center align-self-start">
                          <h3 class="mb-0">81.53%</h3>
                          <p class="text-success ml-2 mb-0 font-weight-medium">+3.5%</p>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="icon icon-box-success ">
                          <span class="mdi mdi-arrow-top-right icon-item"></span>
                        </div>
                      </div>
                    </div>
                    <h6 class="text-muted font-weight-normal">Educational Outcome</h6>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">2021 O/L Result</h4>
                    
                    <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
                      <div class="text-md-center text-xl-left">
                        <h6 class="mb-1">A9</h6>
                      </div>
                      <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                        <h6 class="font-weight-bold mb-0">47</h6>
                      </div>
                    </div>
                    
                    <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
                      <div class="text-md-center text-xl-left">
                        <h6 class="mb-1">A8</h6>
                      </div>
                      <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                        <h6 class="font-weight-bold mb-0">67</h6>
                      </div>
                    </div>
                    <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
                      <div class="text-md-center text-xl-left">
                        <h6 class="mb-1">A7</h6>
                      </div>
                      <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                        <h6 class="font-weight-bold mb-0">97</h6>
                      </div>
                    </div>
                    
                  </div>
                </div>
              </div>
              <div class="col-md-8 grid-margin stretch-card">
    <div class="card">
        <div class="card-body">
            <div class="d-flex flex-row justify-content-between">
                <h4 class="card-title mb-1">News</h4>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="preview-list">
                        <div class="preview-item border-bottom">
                            <div class="preview-thumbnail"></div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                                <div class="flex-grow">
                                    <h6 class="preview-subject">Annual Science club get together</h6>
                                </div>
                                <div class="mr-auto text-sm-right pt-2 pt-sm-0">
                                    <p class="text-muted">15 minutes ago</p>
                                    <p class="text-muted mb-0">30 likes, 5 comments</p>
                                </div>
                            </div>
                        </div>
                        <div class="preview-item border-bottom">
                            <div class="preview-thumbnail"></div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                                <div class="flex-grow">
                                    <h6 class="preview-subject">Inter-School Cricket Championship</h6>
                                </div>
                                <div class="mr-auto text-sm-right pt-2 pt-sm-0">
                                    <p class="text-muted">1 hour ago</p>
                                    <p class="text-muted mb-0">23 likes, 5 comments</p>
                                </div>
                            </div>
                        </div>
                        <div class="preview-item border-bottom">
                            <div class="preview-thumbnail"></div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                                <div class="flex-grow">
                                    <h6 class="preview-subject">Volunteering Day</h6>
                                </div>
                                <div class="mr-auto text-sm-right pt-2 pt-sm-0">
                                    <p class="text-muted">15 minutes ago</p>
                                    <p class="text-muted mb-0">5 likes, 2 comments</p>
                                </div>
                            </div>
                        </div>
                        <div class="preview-item border-bottom">
                            <div class="preview-thumbnail"></div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                                <div class="flex-grow">
                                    <h6 class="preview-subject">Children Day Celebration</h6>
                                </div>
                                <div class="mr-auto text-sm-right pt-2 pt-sm-0">
                                    <p class="text-muted">55 minutes ago</p>
                                    <p class="text-muted mb-0">35 likes, 7 comments</p>
                                </div>
                            </div>
                        </div>
                        <div class="preview-item">
                            <div class="preview-thumbnail"></div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                                <div class="flex-grow">
                                    <h6 class="preview-subject">All Island Championship</h6>
                                </div>
                                <div class="mr-auto text-sm-right pt-2 pt-sm-0">
                                    <p class="text-muted">50 minutes ago</p>
                                    <p class="text-muted mb-0">27 likes, 4 comments</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

            </div>
            
           
            
          </div>
         
          </div>
          
          <!-- partial -->
       </div>
        <!-- main-panel ends -->
        <br>
      <footer class="f-con">

	<div class="f-text">
	<div id="footer_systemName" style="font-size: 17px;">SchoolSync</div>
	<p style="font-size: 11px;">Created By: © 2023 G333 </p>
	</div>

    <div>
	<section id = "footer_topic" style="font-size: 14px; text-align: center; margin-top:20px; font-size:17px;">Important Links</section>
	<div class="footer-links">
	<a style="padding-left:0px;" href="">About Us</a>
	<a style="padding-left:30px;" href="">Terms and Conditions</a>
	<a style="padding-left:30px;" href="">Contact Us</a>
	<a style="padding-left:30px;" href="">Privacy Policy</a>
    </div>
	</div>
	
	<div class="footer-social">
	<a style="padding-left:30px;" href="http://www.linkedin.com" target="_blank"><img class="linkedin" src ="img/social/li1.png"></img></a>
	<a style="padding-left:30px;" href="http://www.twitter.com" target="_blank"><img class="tw" src ="img/social/tw1.png"></img></a>
	<a style="padding-left:30px;" href="http://www.instagram.com" target="_blank"><img class="ins" src ="img/social/ins1.png"></img></a>
	</div>
	
</footer>
    
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    
    
    <script src="assets/vendors/chart.js/Chart.min.js"></script>
    <script src="assets/vendors/progressbar.js/progressbar.min.js"></script>
    <script src="assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
    <script src="assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
   
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <script src="assets/js/settings.js"></script>
    <script src="assets/js/todolist.js"></script>
   
    <script src="assets/js/dashboard.js"></script>
    
  </body>
</html>
