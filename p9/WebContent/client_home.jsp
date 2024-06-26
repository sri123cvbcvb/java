<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>client home page</title>
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="asset2/css/style-starter.css">
</head>

<body>
<%
String email = request.getParameter("email");

%>
    <!-- header -->
    <header id="site-header" class="fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="index.jsp">
                    Work <span>Field</span>
                </a>
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav mx-auto my-2 my-lg-0 navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="client_reg.jsp?email=<%=email%>">Enrollment</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cli_view_reg_st.jsp?email=<%=email%>">Enrollment Status</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cli_req_up.jsp?email=<%=email%>">Requirements</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Report Status</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Payment</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Logout</a>
                        </li>
                    </ul>
                   <!--  <form action="#blog" method="GET" class="d-flex search-header">
                        <input class="form-control" type="search" placeholder="Enter Keyword..." aria-label="Search"
                            required>
                        <button class="btn btn-style" type="submit">Search</button>
                    </form> -->
                </div>
                <!-- toggle switch for light and dark theme -->
                <div class="cont-ser-position">
                    <nav class="navigation">
                        <div class="theme-switch-wrapper">
                            <label class="theme-switch" for="checkbox">
                                <input type="checkbox" id="checkbox">
                                <div class="mode-container">
                                    <i class="gg-sun"></i>
                                    <i class="gg-moon"></i>
                                </div>
                            </label>
                        </div>
                    </nav>
                </div>
                <!-- //toggle switch for light and dark theme -->
            </nav>
        </div>
    </header>
    <!-- //header -->

    <!-- hero slider Start -->
    <div class="banner-wrap">
        <div class="row m-0">
            <div class="col-md-6 banner-left pt-md-0 pt-5 pb-md-0 pb-sm-4">
                <div class="container pt-md-0 pt-5">
                    <div class="banner-info ps-xxl-5 ps-xl-0 ps-5 ms-lg-5 py-md-0 py-5">
                        <p class="mb-1">Business Solution!</p>
                        <h3>Discover the world of Business </h3>
                        <a class="btn btn-style btn-style-2 mt-sm-5 mt-4" href="about.html">Get Started</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 banner-right">
                <div class="text-center py-5">
                    <a href="#small-dialog" class="popup-with-zoom-anim play-view text-center">
                        <span class="video-play-icon">
                            <span class="fa fa-play"></span>
                        </span>
                    </a>
                    <!-- dialog itself, mfp-hide class is required to make dialog hidden -->
                    <div id="small-dialog" class="zoom-anim-dialog mfp-hide">
                        <iframe src="https://player.vimeo.com/video/119641053?h=6ddc880e8a" frameborder="0"
                            allow="autoplay; fullscreen" allowfullscreen></iframe>
                    </div>
                    <!--//video-->
                </div>
            </div>
        </div>
        <div class="shape">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 280">
                <path fill-opacity="1">
                    <animate attributeName="d" dur="20000ms" repeatCount="indefinite"
                        values="M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z; M0,160L48,181.3C96,203,192,245,288,234.7C384,224,480,160,576,133.3C672,107,768,117,864,138.7C960,160,1056,192,1152,197.3C1248,203,1344,181,1392,170.7L1440,160L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;												 M0,64L48,74.7C96,85,192,107,288,133.3C384,160,480,192,576,170.7C672,149,768,75,864,80C960,85,1056,171,1152,181.3C1248,192,1344,128,1392,96L1440,64L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;
                                                 M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;" />

                </path>
            </svg>
        </div>
    </div>
    <!-- hero slider end -->

    <!-- 4grids with content block -->
    <section class="home-about-w3l pt-lg-5 pb-5" id="features">
        <div class="container py-md-5 py-4">
            <div class="row align-items-center">
                <div class="col-xl-7 col-lg-8 mt-lg-0 mt-5">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="grids-1">
                                <div class="icon-style">
                                    <i class="fas fa-chart-line"></i>
                                </div>
                                <h4 class="title-head mb-2"><a href="about.html">Our Approach</a></h4>
                                <p>Sed ut unde omnis iste natus error sit oluptatem accusa ntium dolo remque
                                    ladase.</p>
                                <a href="about.html" class="btn btn-style btn-style-primary mt-4">Read More<i
                                        class="fas fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                        <div class="col-sm-6 mt-sm-5 mt-4">
                            <div class="grids-1 active">
                                <div class="icon-style">
                                    <i class="fas fa-business-time"></i>
                                </div>
                                <h4 class="title-head mb-2"><a href="about.html">Our Expereience</a></h4>
                                <p>Sed ut unde omnis iste natus error sit oluptatem accusa ntium dolo remque
                                    ladase.</p>
                                <a href="about.html" class="btn btn-style btn-style-primary mt-4">Read More<i
                                        class="fas fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                        <div class="col-sm-6 mt-sm-0 mt-4">
                            <div class="grids-1">
                                <div class="icon-style">
                                    <i class="fas fa-users"></i>
                                </div>
                                <h4 class="title-head mb-2"><a href="about.html">Our Clients</a></h4>
                                <p>Sed ut unde omnis iste natus error sit oluptatem accusa ntium dolo remque
                                    ladase.</p>
                                <a href="about.html" class="btn btn-style btn-style-primary mt-4">Read More<i
                                        class="fas fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                        <div class="col-sm-6 mt-sm-5 mt-4">
                            <div class="grids-1">
                                <div class="icon-style">
                                    <i class="fas fa-city"></i>
                                </div>
                                <h4 class="title-head mb-2"><a href="about.html">Our Office</a></h4>
                                <p>Sed ut unde omnis iste natus error sit oluptatem accusa ntium dolo remque
                                    ladase.</p>
                                <a href="about.html" class="btn btn-style btn-style-primary mt-4">Read More<i
                                        class="fas fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-4 ps-lg-5 mt-lg-0 mt-5">
                    <h3 class="title-style mb-lg-4 mb-3">Digital Experience in the Talent Journey and Learning!</h3>
                    <p class="text-para">Aurabitur id gravida risus. Fusce eget ex fermentum, ultricies nisi ac sed,
                        lacinia est. Quisque ut lectus consequat, venenatis eros et, sed commodo risus.
                    </p>
                    <a href="about.html" class="btn btn-style mt-sm-5 mt-4">Learn More</a>
                </div>
            </div>
        </div>
    </section>
    <!-- 4grids with content block -->

    <!-- image with text section -->
    <section class="w3l-text-6 py-5">
        <div class="container pb-md-5 pb-4">
            <div class="row top-cont-grid align-items-center">
                <div class="col-lg-5">
                    <div class="right-img">
                        <img src="asset2/images/img1.jpg" alt="" class="img-fluid" />
                    </div>
                </div>
                <div class="col-lg-1">

                </div>
                <div class="col-lg-6 mt-lg-0 mt-sm-5 mt-4">
                    <div class="left-cont">
                        <h3 class="title-style">Investment planning & strategy</h3>
                        <p class="mt-3 mb-2">Sed luctus orci sit amet tempor luctus. Nullam non felis massa. Phasellus
                            vitae fringilla sapien, quis dictum mi. Quisque consectetur egestas.Lorem ipsum dolor sit
                            amet,
                            consectetur adipiscing elit. Sed luctus orci sit amet tempor luctus. Nullam non felis massa.
                            Phasellus vitae fringilla sapien.</p>
                        <a href="services.html" class="btn btn-style mt-4">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="row top-cont-grid top-space align-items-center mt-5 pt-lg-5 pt-4 pb-4">
                <div class="col-lg-6 mt-lg-0 mt-sm-5 mt-4 order-lg-first order-last">
                    <div class="left-cont">
                        <h3 class="title-style">Competitive research & Assurance</h3>
                        <p class="mt-3 mb-2">Sed luctus orci sit amet tempor luctus. Nullam non felis massa. Phasellus
                            vitae fringilla sapien, quis dictum mi. Quisque consectetur egestas.Lorem ipsum dolor sit
                            amet,
                            consectetur adipiscing elit. Sed luctus orci sit amet tempor luctus. Nullam non felis massa.
                            Phasellus vitae fringilla sapien.</p>
                        <a href="services.html" class="btn btn-style mt-4">Learn More</a>
                    </div>
                </div>
                <div class="col-lg-1">

                </div>
                <div class="col-lg-5 order-lg-last order-first">
                    <div class="right-img sec-img-ab">
                        <img src="asset2/images/img2.jpg" alt="" class="img-fluid" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- image with text section -->

    <!-- stats -->
    <section class="w3_stats py-5" id="stats">
        <div class="container py-md-5 py-5">
            <div class="title-heading-w3 text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <h3 class="title-style" style="color:white">We have over 10 years Experience</h3>
            </div>
            <div class="w3-stats text-center pt-lg-4">
                <div class="row">
                    <div class="col-md-3 col-6">
                        <div class="counter">
                            <i class="fab fa-r-project"></i>
                            <div class="d-flex align-items-center justify-content-center">
                                <div class="timer" data-to="200" data-speed="1500"></div>
                                <span class="stats-plus">+</span>
                            </div>
                            <p class="count-text">Successfull Project</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-6">
                        <div class="counter">
                            <i class="fas fa-smile"></i>
                            <div class="d-flex align-items-center justify-content-center">
                                <div class="timer" data-to="100" data-speed="1500"></div>
                                <span class="stats-plus">+</span>
                            </div>
                            <p class="count-text">Happy Clients</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-6 mt-md-0 mt-4">
                        <div class="counter">
                            <i class="fas fa-medal"></i>
                            <div class="d-flex align-items-center justify-content-center">
                                <div class="timer" data-to="30" data-speed="1500"></div>
                                <span class="stats-plus">+</span>
                            </div>
                            <p class="count-text">Business Awards</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-6 mt-md-0 mt-4">
                        <div class="counter">
                            <i class="fas fa-mug-hot"></i>
                            <div class="d-flex align-items-center justify-content-center">
                                <div class="timer" data-to="130" data-speed="1500"></div>
                                <span class="stats-plus">+</span>
                            </div>
                            <p class="count-text">Cup Coffee</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //stats -->

    <!-- projects block -->
    <section class="project-sec py-5" id="projects">
        <div class="container py-md-5 py-4">
            <div class="title-heading-w3 text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <h3 class="title-style">Our Latest Projects</h3>
            </div>
            <div class="row">
                <div class="col-md-4 col-6">
                    <a href="https://w3layouts.com/template/grocery-mart-a-multi-vendor-ecommerce-website-template/"
                        target="_blank">
                        <img src="asset2/images/p1.jpg" alt="" class="img-fluid radius-image">
                    </a>
                </div>
                <div class="col-md-4 col-6">
                    <a href="https://w3layouts.com/template/beidea-a-corporate-business-category-website-template/"
                        target="_blank">
                        <img src="asset2/images/p2.jpg" alt="" class="img-fluid radius-image">
                    </a>
                </div>
                <div class="col-md-4 col-6 mt-md-0 mt-4">
                    <a href="https://w3layouts.com/template/biodata-a-personal-portfolio-website-templates/"
                        target="_blank">
                        <img src="asset2/images/p3.jpg" alt="" class="img-fluid radius-image">
                    </a>
                </div>
                <div class="col-md-4 col-6 mt-4">
                    <a href="https://w3layouts.com/template/call-center-a-corporate-business-website-template/"
                        target="_blank">
                        <img src="asset2/images/p4.jpg" alt="" class="img-fluid radius-image">
                    </a>
                </div>
                <div class="col-md-4 col-6 mt-4">
                    <a href="https://w3layouts.com/template/industries-website-template/" target="_blank">
                        <img src="asset2/images/p5.jpg" alt="" class="img-fluid radius-image">
                    </a>
                </div>
                <div class="col-md-4 col-6 mt-4">
                    <a href="https://w3layouts.com/template/studious-website-template/" target="_blank">
                        <img src="asset2/images/p6.jpg" alt="" class="img-fluid radius-image">
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- //projects block -->

    <!-- pricing block -->
    <section class="pricing-w3l py-lg-5 py-2">
        <div class="container">
            <div class="title-heading-w3 text-center mx-auto mb-md-5 mb-4 pb-md-1" style="max-width:500px;">
                <h3 class="title-style">Pick the right plan!</h3>
            </div>
            <div class="row no-gutters pt-4">
                <div class="col-lg-4 box-pricing">
                    <h3 class="text-price">Standard</h3>
                    <h4>$0<span>per month</span></h4>
                    <ul>
                        <li><i class="fas fa-check-circle"></i> Basic website checkup</li>
                        <li><i class="fas fa-check-circle"></i> SEO recommendations</li>
                        <li><i class="fas fa-check-circle"></i> Google Ads basic plan</li>
                        <li class="na"><span><i class="fas fa-check-circle"></i> Social Media plan</span></li>
                        <li class="na"><span><i class="fas fa-check-circle"></i> Company & Business Setup</span></li>
                    </ul>
                    <a href="#button" class="btn btn-style mt-4">Get Started</a>
                </div>

                <div class="col-lg-4 box-pricing featured">
                    <h3 class="text-price">Popular</h3>
                    <h4>$29<span>per month</span></h4>
                    <ul>
                        <li><i class="fas fa-check-circle"></i> Basic website checkup</li>
                        <li><i class="fas fa-check-circle"></i> SEO recommendations</li>
                        <li><i class="fas fa-check-circle"></i> Google Ads basic plan</li>
                        <li><i class="fas fa-check-circle"></i> Social Media plan</li>
                        <li class="na"><span><i class="fas fa-check-circle"></i> Company & Business Setup</span></li>
                    </ul>
                    <a href="#button" class="btn btn-style btn-style-2 mt-4">Get Started</a>
                </div>

                <div class="col-lg-4 box-pricing">
                    <h3 class="text-price">Premium</h3>
                    <h4>$49<span>per month</span></h4>
                    <ul>
                        <li><i class="fas fa-check-circle"></i> Basic website checkup</li>
                        <li><i class="fas fa-check-circle"></i> SEO recommendations</li>
                        <li><i class="fas fa-check-circle"></i> Google Ads basic plan</li>
                        <li><i class="fas fa-check-circle"></i> Social Media plan</li>
                        <li><i class="fas fa-check-circle"></i> Company & Business Setup</li>
                    </ul>
                    <a href="#button" class="btn btn-style mt-4">Get Started</a>
                </div>
            </div>
        </div>
    </section>
    <!-- //pricing block -->

    <!-- testimonial section -->
    <section class="testimonial-area pt-5" id="testimonials">
        <div class="container pt-md-5 pt-4">
            <div class="title-heading-w3 text-center mx-auto mb-sm-5 mb-4" style="max-width:500px;">
                <h3 class="title-style">Testimonials</h3>
            </div>
            <div class="testi-wrap">
                <div class="client-single active position-1" data-position="position-1">
                    <div class="client-img">
                        <img src="asset2/images/testi4.jpg" alt="" />
                    </div>
                    <div class="client-info">
                        <h3>Theo Hall</h3>
                        <p>Subtitle goes here</p>
                    </div>
                    <div class="client-comment">
                        <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat. </h3>
                        <img src="asset2/images/quote.png" alt="" />
                    </div>
                </div>

                <div class="client-single inactive position-2" data-position="position-2">
                    <div class="client-img">
                        <img src="asset2/images/testi2.jpg" alt="" />
                    </div>
                    <div class="client-info">
                        <h3>Olive Yew</h3>
                        <p>Subtitle goes here</p>
                    </div>
                    <div class="client-comment">
                        <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat. </h3>
                        <img src="asset2/images/quote.png" alt="" />
                    </div>
                </div>

                <div class="client-single inactive position-3" data-position="position-3">
                    <div class="client-img">
                        <img src="asset2/images/testi1.jpg" alt="" />
                    </div>
                    <div class="client-info">
                        <h3>Maya Didas</h3>
                        <p>Subtitle goes here</p>
                    </div>
                    <div class="client-comment">
                        <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat. </h3>
                        <img src="asset2/images/quote.png" alt="" />
                    </div>
                </div>

                <div class="client-single inactive position-4" data-position="position-4">
                    <div class="client-img">
                        <img src="asset2/images/testi3.jpg" alt="" />
                    </div>
                    <div class="client-info">
                        <h3>Brock Lee</h3>
                        <p>Subtitle goes here</p>
                    </div>
                    <div class="client-comment">
                        <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat. </h3>
                        <img src="asset2/images/quote.png" alt="" />
                    </div>
                </div>

                <div class="client-single inactive position-5" data-position="position-5">
                    <div class="client-img">
                        <img src="asset2/images/testi5.jpg" alt="" />
                    </div>
                    <div class="client-info">
                        <h3>Shona Leer</h3>
                        <p>Subtitle goes here</p>
                    </div>
                    <div class="client-comment">
                        <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat. </h3>
                        <img src="asset2/images/quote.png" alt="" />
                    </div>
                </div>

                <div class="client-single inactive position-6" data-position="position-6">
                    <div class="client-img">
                        <img src="asset2/images/testi6.jpg" alt="" />
                    </div>
                    <div class="client-info">
                        <h3>Dennis Lson</h3>
                        <p>Subtitle goes here</p>
                    </div>
                    <div class="client-comment">
                        <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat. </h3>
                        <img src="asset2/images/quote.png" alt="" />
                    </div>
                </div>

                <div class="client-single inactive position-7" data-position="position-7">
                    <div class="client-img">
                        <img src="asset2/images/testi7.jpg" alt="" />
                    </div>
                    <div class="client-info">
                        <h3>Jenna John</h3>
                        <p>Subtitle goes here</p>
                    </div>
                    <div class="client-comment">
                        <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat. </h3>
                        <img src="asset2/images/quote.png" alt="" />
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- //testimonial section -->

    <!-- footer -->
    <footer class="w3l-footer">
        <div class="shape-footer">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 280">
                <path fill-opacity="1">
                    <animate attributeName="d" dur="20000ms" repeatCount="indefinite"
                        values="M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z; M0,160L48,181.3C96,203,192,245,288,234.7C384,224,480,160,576,133.3C672,107,768,117,864,138.7C960,160,1056,192,1152,197.3C1248,203,1344,181,1392,170.7L1440,160L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;												 M0,64L48,74.7C96,85,192,107,288,133.3C384,160,480,192,576,170.7C672,149,768,75,864,80C960,85,1056,171,1152,181.3C1248,192,1344,128,1392,96L1440,64L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;
                                             M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;" />

                </path>
            </svg>
        </div>
        <div class="w3l-footer-16 py-5">
            <div class="container">
                <div class="row footer-p">
                    <div class="col-lg-4 pe-lg-5">
                        <h3>About Us</h3>
                        <p class="mt-3">Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo
                            minus id quod maxime placeat facere.</p>
                        <div class="columns-2 mt-4 pt-1">
                            <ul class="social">
                                <li><a href="#facebook"><i class="fab fa-facebook-f"></i></a>
                                </li>
                                <li><a href="#linkedin"><i class="fab fa-linkedin-in"></i></a>
                                </li>
                                <li><a href="#twitter"><i class="fab fa-twitter"></i></a>
                                </li>
                                <li><a href="#google"><i class="fab fa-google-plus-g"></i></a>
                                </li>
                                <li><a href="#github"><i class="fab fa-github"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-5 mt-lg-0 mt-5">
                        <div class="row">
                            <div class="col-xl-5 col-6 column">
                                <h3>Quick Link</h3>
                                <ul class="footer-gd-16">
                                    <li><a href="about.html">About Us</a></li>
                                    <li><a href="#clients">Our Clients</a></li>
                                    <li><a href="services.html">Services</a></li>
                                    <li><a href="#blog">Blog Posts</a></li>
                                    <li><a href="contact.html">Contact Us</a></li>
                                </ul>
                            </div>
                            <div class="col-6 column">
                                <h3>Contact Info</h3>
                                <ul class="footer-contact-list">
                                    <li class="">10001, 5th Avenue,
                                        #32841 block, USA</li>
                                    <li class="mt-2"><a href="tel:+12 23456790">+1223 456 790</a></li>
                                    <li class="mt-2"><a href="mailto:info@example.com">info@example.com</a></li>
                                    <li class="mt-2"><a href="mailto:info@example.com">www.example.com</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-7 col-sm-8 column mt-lg-0 mt-4 pl-xl-0">
                        <h3>Newsletter </h3>
                        <div class="end-column">
                            <form action="#" class="subscribe" method="post">
                                <input type="email" name="email" placeholder="Email Address" required="">
                                <button><span class="fa fa-paper-plane" aria-hidden="true"></span></button>
                            </form>
                            <p class="mt-4">Subscribe to our mailing list and get updates to your email inbox.</p>
                        </div>
                    </div>
                </div>
                <div class="below-section text-center pt-lg-4 mt-5">
                    <p class="copy-text">&copy; 2021 Work Field. All rights reserved. Design by <a
                            href="https://w3layouts.com/" target="_blank"> W3Layouts</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- //footer -->

    <!-- Js scripts -->
    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fas fa-level-up-alt" aria-hidden="true"></span>
    </button>
    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- //move top -->

    <!-- common jquery plugin -->
    <script src="asset2/js/jquery-3.3.1.min.js"></script>
    <!-- //common jquery plugin -->

    <!-- /counter-->
    <script src="asset2/js/counter.js"></script>
    <!-- //counter-->

    <!-- testimonial script -->
    <script>
        $(document).ready(function () {

            $('.client-single').on('click', function (event) {
                event.preventDefault();

                var active = $(this).hasClass('active');

                var parent = $(this).parents('.testi-wrap');

                if (!active) {
                    var activeBlock = parent.find('.client-single.active');

                    var currentPos = $(this).attr('data-position');

                    var newPos = activeBlock.attr('data-position');

                    activeBlock.removeClass('active').removeClass(newPos).addClass('inactive').addClass(
                        currentPos);
                    activeBlock.attr('data-position', currentPos);

                    $(this).addClass('active').removeClass('inactive').removeClass(currentPos).addClass(
                        newPos);
                    $(this).attr('data-position', newPos);

                }
            });

        }(jQuery));
    </script>
    <!-- //testimonial script -->

    <!-- magnific popup -->
    <script src="asset2/js/jquery.magnific-popup.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',

                fixedContentPos: false,
                fixedBgPos: true,

                overflowY: 'auto',

                closeBtnInside: true,
                preloader: false,

                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

            $('.popup-with-move-anim').magnificPopup({
                type: 'inline',

                fixedContentPos: false,
                fixedBgPos: true,

                overflowY: 'auto',

                closeBtnInside: true,
                preloader: false,

                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-slide-bottom'
            });
        });
    </script>
    <!-- //magnific popup -->

    <!-- theme switch js (light and dark)-->
    <script src="asset2/js/theme-change.js"></script>
    <!-- //theme switch js (light and dark)-->

    <!-- MENU-JS -->
    <script>
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

        //Main navigation Active Class Add Remove
        $(".navbar-toggler").on("click", function () {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function () {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });
    </script>
    <!-- //MENU-JS -->

    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <!-- //disable body scroll which navbar is in active -->

    <!-- bootstrap -->
    <script src="asset2/js/bootstrap.min.js"></script>
    <!-- //bootstrap -->
    <!-- //Js scripts -->
</body>

</html>