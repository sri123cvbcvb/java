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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>admin home page</title>
    <!--/google-fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!--//google-fonts -->
    <!-- Template CSS -->
    <link rel="stylesheet" href="asset3/css/style-starter.css">
</head>

<body>
    <!--/Header-->
    <header id="site-header" class="fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light stroke py-lg-0">
                <h1><a class="navbar-brand pe-xl-5 pe-lg-4" href="index.html">
                        AD<span class="sublog">MIN</span>
                    </a></h1>
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-lg-auto my-2 my-lg-0 navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin_approval.jsp">Approval</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ad_view_cli_req.jsp">Client Requirement</a>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Logout</a>
                        </li>

                    </ul>
                    <ul class="navbar-nav search-right mt-lg-0 mt-2">
                        <li class="nav-item mr-2" title="Search"><a href="#search" class="search-search">
                                <span class="fas fa-search" aria-hidden="true"></span></a></li>
                        <li class="nav-item mx-lg-4"><a href="" class="phone-btn btn-white d-none d-lg-block btn-style ms-2"><span class="fas fa-user me-2" aria-hidden="true"></span> User Login</a></li>
                    </ul>

                    <!-- //toggle switch for light and dark theme -->
                    <!-- search popup -->
                    <div id="search" class="w3lpop-overlay">
                        <div class="w3lpopup">
                            <form action="#formsearch" method="GET" class="d-flex">
                                <input type="search" placeholder="Search.." name="search" required="required" autofocus>
                                <button type="submit"><span class="fas fa-search"></span></button>
                                <a class="close" href="#formsearch">&times;</a>
                            </form>
                        </div>
                    </div>
                    <!-- /search popup -->
                </div>
                <!-- toggle switch for light and dark theme -->
                <div class="mobile-position">
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
    <!--//Header-->
    <!-- main-slider -->
    <section class="w3l-main-slider banner-slider" id="home">
        <div class="owl-one owl-carousel owl-theme">
            <div class="item">
                <div class="slider-info banner-view banner-top1">
                    <div class="container">
                        <div class="banner-info">
                            <h3>We deal in brilliant <span>creativity</span></h3>
                            <div class="banner-info-top">
                                <p>Lorem ipsum viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula. </p>
                                <a href="about.html" class="btn btn-style btn-outline-light mt-sm-5 mt-4">Read More <span class="fas fa-angle-double-right ms-2"></span> </a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- /main-slider -->
    <!--/bottom-3-grids-->
    <div class="w3l-3-grids" id="grids-3">
        <div class="container-fluid mx-lg-0">
            <div class="row pt-sm-0 pt-5">
                <div class="col-lg-4 col-sm-6 mt-sm-0 m px-md-0 w3-gridhny-1 position-relative">
                    <div class="grids3-info">
                        <a href="#" class="d-block zoom"><img src="asset3/images/g1.jpg" alt="" class="img-fluid news-image"></a>
                        <div class="w3-grids3-info">
                            <h6><a href="#category" class="category d-block">Action</a></h6>
                            <h4><a href="#">We have got minds in <span>action</span></a></h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-sm-0 px-md-0 w3-gridhny-1 position-relative">
                    <div class="grids3-info">
                        <a href="#blog" class="d-block zoom"><img src="asset3/images/g2.jpg" alt="" class="img-fluid news-image"></a>
                        <div class="w3-grids3-info second">
                            <h6><a href="#category" class="category d-block">Brand</a></h6>
                            <h4><a href="#">Plugging ideas to your <span>brand</span></a></h4>

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-lg-0 px-md-0 w3-gridhny-1 position-relative">
                    <div class="grids3-info">
                        <a href="#blog" class="d-block zoom"><img src="asset3/images/g3.jpg" alt="" class="img-fluid news-image"></a>
                        <div class="w3-grids3-info">
                            <h6><a href="#category" class="category d-block">Success</a></h6>
                            <h4><a href="#">Ideas in charge of your <span>Success</span></a></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--//bottom-3-grids-->
    <!--/about-section-->
    <section class="w3l-index2" id="about">
        <div class="midd-w3 py-5">
            <div class="container py-md-5 py-3">
                <!--/row-1-->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="w3shape position-relative">
                            <img src="asset3/images/ab1.jpg" alt="" class="radius-image img-fluid">
                        </div>
                    </div>
                    <div class="col-lg-6 mt-lg-0 mt-md-5 mt-4 align-self ps-lg-5">
                        <div class="title-content text-left">
                            <h6 class="title-subhny mb-2"><span>Our Story</span></h6>
                            <h3 class="title-w3l">Helping business become what they
                                <span class="span-bold">can be</span>
                            </h3>
                        </div>
                        <p class="mt-md-4 mt-3">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo,
                            ultrices in ligula. Semper at tempufddfel. Lorem ipsum dolor sit amet
                            elit. Non quae, fugiat nihil ad. Lorem ipsum dolor sit amet. Lorem ipsum init
                            dolor sit, amet elit. Dolor ipsum non velit, culpa! Vivamus a et ut justo, init in dolor et.</p>
                        <div class="w3l-two-buttons">
                            <a href="about.html" class="btn btn-style btn-primary mt-lg-5 mt-4">Read More <span class="fas fa-angle-double-right ms-2"></span></a>
                            <a href="#view" class="btn btn-outline-primary btn-style mt-lg-5 mt-4 ms-2"> Contact Us<span class="fas fa-angle-double-right ms-2"></span></a>
                        </div>
                    </div>
                </div>
                <!--//row-1-->

            </div>
        </div>
    </section>
    <!--//about-section-->
    <section class="w3l-video-sec" id="video">
        <div class="container">
            <div class="w3l-index5 py-5" id="video">
                <div class="history-info align-self text-center py-5 my-lg-5">
                    <div class="position-relative py-5 my-lg-5">
                        <a href="#small-dialog1" class="popup-with-zoom-anim play-view text-center position-absolute">
                            <span class="video-play-icon">
                                <span class="fa fa-play"></span>
                            </span>
                        </a>
                        <!-- dialog itself, mfp-hide class is required to make dialog hidden --
                        <div id="small-dialog1" class="zoom-anim-dialog mfp-hide">
                            <iframe src="https://player.vimeo.com/video/124801644" frameborder="0" allow="autoplay; fullscreen" allowfullscreen=""></iframe>
                        </div>
						                        <!-- dialog itself, mfp-hide class is required to make dialog hidden -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/grids-->
    <section class="w3l-grids-3 home-page-gds py-5">
        <div class="container py-md-5 py-3">
            <div class="header-sec text-center pt-lg-5 mt-lg-5">
                <h3 class="title-w3l two mb-4 mt-lg-5">We are a young and creative company & we <br> offer you
                    <span class="span-bold">fresh ideas.</span>
                </h3>
            </div>
            <div class="row bottom_grids text-left">
                <div class="col-lg-3 col-md-6 mt-5">
                    <div class="grid-block text-center">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-coins" aria-hidden="true"></span>
                            <h4 class="my-3">Secure Payments</h4>
                            <p class="">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula. </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-5">
                    <div class="grid-block text-center">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-chart-pie" aria-hidden="true"></span>
                            <h4 class="my-3">Daily Updates</h4>
                            <p class="">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula. </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-5">
                    <div class="grid-block text-center">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-bullhorn" aria-hidden="true"></span>
                            <h4 class="my-3">Market Research</h4>

                            <p class="">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula. </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-5">
                    <div class="grid-block text-center">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-headset" aria-hidden="true"></span>
                            <h4 class="my-3">24/7 Support</h4>
                            <p class="">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula. </p>
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--//grids-->
 <!--/services-->
    <section class="w3l-services2" id="services">
        <div id="cwp23-block" class="py-5">
            <div class="container py-lg-5">
                <div class="row cwp23-content mt-lg-5 mt-4">
                    <div class="col-lg-6 cwp23-img">
                        <h6 class="title-subhny mb-2"><span>What We Do?</span></h6>
                        <h3 class="title-w3l mb-4">The service we offer is specifically designed to meet <br>
                            <span class="span-bold">your needs.</span>
                        </h3>
                        <p class="mt-4">Sed in metus libero. Sed volutpat eget dui ut tempus. Fusce fringilla tincidunt laoreet
                            Morbi ac metus vitae diam scelerisque malesuada eget eu mauris.Cras varius lorem ac velit pharetra.

                        </p>

                        <div class="w3l-button mt-lg-5 mt-4">
                            <a href="services.html" class="btn btn-style btn-primary mt-2">Read More <span class="fas fa-angle-double-right ms-2"></span></a>
                        </div>
                    </div>
                    <div class="col-lg-6 cwp23-text mt-lg-0 mt-5 ps-lg-5">
                        <div class="cwp23-text-cols">
                            <div class="column">
                                <a href="#"><img src="asset3/images/g2.jpg" alt="" class="radius-image img-fluid"></a>
                            </div>
                            <div class="column">
                                <a href="#"><img src="asset3/images/g3.jpg" alt="" class="radius-image img-fluid"></a>
                            </div>
                            <div class="column">
                                <a href="#"><img src="asset3/images/g4.jpg" alt="" class="radius-image img-fluid"></a>
                            </div>
                            <div class="column">
                                <a href="#"><img src="asset3/images/g5.jpg" alt="" class="radius-image img-fluid"></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--//services-->
    <!--/w3l-project-->
    <section class="w3l-project-main pb-5">
        <div class="container pb-md-5 py-2">
            <div class="w3l-project p-md-5 p-4 px-4">
                <div class="row py-lg-4 px-lg-2 align-items-center">
                    <div class="col-lg-8 w3l-project-right">
                        <div class="bottom-info">
                            <div class="header-section pr-lg-5">
                                <h3 class="title-w3l two">Request Free Consultation <br>and <span class="span-bold">Lets Do It!</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 w3l-project-left mt-lg-0 mt-4">
                        <a href="#" class="btn btn-secondary btn-style"> Request Now <span class="fas fa-angle-double-right ms-2"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//w3l-project-->
    
    <!-- /features-->
    <section class="w3l-featureshny py-5" id="features">
        <div class="container py-md-4 py-2">
            <div class="row align-items-center">
                <div class="col-lg-8 pe-lg-5 mb-lg-0 mb-5">
                    <div class="w3l-header-sec text-left mb-md-5 mb-4">
                        <h6 class="title-subhny mb-2"><span>Creative Strategy</span></h6>
                        <h5 class="">Company that believes in the power of <span class="span-bold">creative strategy</span></h5>
                        <p class="mt-3 pr-lg-5">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula.
                            Semper at tempufddfel. Lorem ipsum dolor sit amet elit. Non quae, fugiat nihil ad. Lorem ipsum dolor sit
                            amet.Vivamus a et ut justo, init in dolor. </p>
                        <a href="services.html" class="btn btn-primary btn-style mt-lg-5 mt-4"> Read More <span class="fas fa-angle-double-right ms-2"></span></a>
                    </div>
                </div>
                <div class="col-lg-4 mb-lg-0 mb-md-5 mb-4">
                    <div class="whybox-wrap mb-4">
                        <div class="whybox-wrap-grid">
                            <div class="icon">
                                <span class="fas fa-lightbulb"></span>
                            </div>
                            <div class="info">
                                <h4><a href="#url">Collect Ideas</a></h4>
                                <p class="mt-3">Lorem ipsum dolor sit amet consectetur ipsum amet elit.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="whybox-wrap mb-4">
                        <div class="whybox-wrap-grid">
                            <div class="icon">
                                <span class="fas fa-database"></span>
                            </div>
                            <div class="info">
                                <h4><a href="#url">Data Analysis</a></h4>
                                <p class="mt-3">Lorem ipsum dolor sit amet consectetur ipsum amet elit.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="whybox-wrap">
                        <div class="whybox-wrap-grid">
                            <div class="icon">
                                <span class="fas fa-chart-area"></span>
                            </div>
                            <div class="info">
                                <h4><a href="#url">Finalize Product</a></h4>
                                <p class="mt-3">Lorem ipsum dolor sit amet consectetur ipsum amet elit.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //features-->
    <!-- testimonials -->
    <section class="w3l-clients pb-5" id="clients">
        <!-- /grids -->
        <div class="cusrtomer-layout py-5 pb-0">
            <div class="container py-lg-4 py-md-3 ">
                <div class="heading text-center mx-auto">
                    <h6 class="title-subhny mb-2"><span>Testimonials</span></h6>
                    <h3 class="title-w3l mb-5">Happy Clients
                        <span class="span-bold">& Feedbacks</span>
                    </h3>
                </div>
                <!-- /grids -->
                <div class="testimonial-width">
                    <div class="row">
                        <div class="col-lg-6 item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <blockquote>
                                        <q><i class="fas fa-quote-left"></i> Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit beatae
                                            laudantium
                                            voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                            Dolores molestias adipisci dolor sit amet!.</q>
                                    </blockquote>
                                    <div class="testi-des">
                                        <div class="test-img"><img src="asset3/images/team1.jpg" class="img-fluid" alt="client-img">
                                        </div>
                                        <div class="peopl align-self">
                                            <h3>John wilson</h3>
                                            <p class="indentity">Example City</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <blockquote>
                                        <q><i class="fas fa-quote-left"></i> Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit beatae
                                            laudantium
                                            voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                            Dolores molestias adipisci dolor sit amet!.</q>
                                    </blockquote>
                                    <div class="testi-des">
                                        <div class="test-img"><img src="asset3/images/team2.jpg" class="img-fluid" alt="client-img">
                                        </div>
                                        <div class="peopl align-self">
                                            <h3>Julia sakura</h3>
                                            <p class="indentity">Example City</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <!-- /grids -->
        </div>
        <!-- //grids -->
    </section>
    <!-- //testimonials -->
    <!--/w3l-footer-29-main-->
    <footer class="w3l-footer-29-main">
        <div class="footer-29 py-5">
            <div class="container py-lg-4">
                <div class="row align-items-center mb-3">
                    <h2 class="sign-left col-lg-7"> Join our community by using our services and grow your business. </h2>
                    <div class="footerw3-btn col-lg-5 ps-lg-5"><a href="#" class="btn btn-secondary btn-style"> Try it For Free <span class="fas fa-angle-double-right ms-2"></span></a></div>
                </div>

                <div class="row footer-top-29 mt-md-5 mt-4">
                    <div class="col-lg-4 col-md-6 footer-list-29 footer-1 pe-lg-5">
                        <h6 class="footer-title-29">About</h6>
                        <div class="footer-listw3-grids">
                            <p class="pe-lg-4">Lorem ipsum dolor sit amet consectetur ipsum amet elit.Sit amet consectetur ipsum amet,Lorem ipsum dolor sit amet. </p>
                            <div class="w3pt-call-box mt-4">
                                <div class="w3pt-call-info">
                                    <h5>Get Us Support</h5>

                                    <h5><a href="tel:+1(21) 234 557 456"><i class="fas fa-phone-alt me-1"></i> +1(21) 234 557 456</a></h5>
                                    <h5><a href="tel:+1(21) 234 4568"><i class="far fa-envelope me-1"></i> <a href="mailto:support@mail.com" class="mail"> support@mail.com</a></a></h5>

                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2 col-md-6 footer-list-29 footer-3 mt-lg-0 mt-5">
                        <h6 class="footer-title-29">Links</h6>
                        <div class="footer-listw3-grids">
                            <ul class="footer-listw3">
                                <li><a href="#us">About Us</a></li>
                                <li><a href="#team">Our Team</a></li>
                                <li><a href="#pro">Projects</a></li>
                                <li><a href="#career">Careers</a></li>
                                <li><a href="#terms">Terms of Use</a></li>
                                <li><a href="#tips">Privacy Policy</a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 footer-list-29 footer-3 mt-lg-0 mt-5">
                        <h6 class="footer-title-29">Services</h6>
                        <div class="footer-listw3-grids">
                            <ul class="footer-listw3">
                                <li><a href="#lift">Secure services</a></li>
                                <li><a href="#cardio">Digital arrange</a></li>
                                <li><a href="#fit">Content strategy</a></li>
                                <li><a href="#tips">Processing services</a></li>
                                <li><a href="#tips">Web hosting</a></li>
                                <li><a href="#tips">Page optimization</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 footer-list-29 footer-4 mt-lg-0 mt-5 ps-lg-5">
                        <h6 class="footer-title-29">Keep Connected</h6>
                        <p>Get Updates By Subscribe Our Weekly Newsletter</p>

                        <form action="#" class="subscribe" method="post">
                            <input type="email" name="email" placeholder="Your Email Address" required="">
                            <button><span class="fas fa-paper-plane"></span></button>
                        </form>
                        <div class="main-social-footer-29 mt-4">
                            <a href="#facebook" class="facebook"><span class="fab fa-facebook-f"></span></a>
                            <a href="#twitter" class="twitter"><span class="fab fa-twitter"></span></a>
                            <a href="#instagram" class="instagram"><span class="fab fa-instagram"></span></a>

                            <a href="#linkd" class="linkd"><span class="fab fa-linkedin-in"></span></a>
                        </div>
                    </div>
                </div>
                <div class="bottom-copies text-center">
                    <p class="copy-footer-29">� 2021 KoDeal. All rights reserved. Design by
                        <a href="https://w3layouts.com/" target="_blank"> W3Layouts</a>
                    </p>
                </div>
            </div>
        </div>

        <!-- move top -->
        <button onclick="topFunction()" id="movetop" title="Go to top">
            <span class="fa fa-angle-up"></span>
        </button>
        <script>
            // When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function() {
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

    </footer>
    <!--//footer-9 -->
    <!-- Js scripts -->
    <!-- Template JavaScript -->
    <script src="asset3/js/jquery-3.3.1.min.js"></script>
    <script src="asset3/js/theme-change.js"></script>

    <!-- MENU-JS -->
    <script>
        $(window).on("scroll", function() {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

        //Main navigation Active Class Add Remove
        $(".navbar-toggler").on("click", function() {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function() {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function() {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });

    </script>
    <!-- //MENU-JS -->

    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function() {
            $('.navbar-toggler').click(function() {
                $('body').toggleClass('noscroll');
            })
        });

    </script>
    <!-- //disable body scroll which navbar is in active -->

    <!-- //bootstrap -->
    <script src="asset3/js/bootstrap.min.js"></script>

</body>

</html>
