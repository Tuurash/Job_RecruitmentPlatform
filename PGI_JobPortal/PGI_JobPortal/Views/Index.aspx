<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PGI_JobPortal.Views.Index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="author" content="UIdeck">
    <title>Career@PRIME</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/line-icons.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/responsive.css">

    <style>
        html {
            scroll-behavior: smooth;
        }
    </style>
</head>

<body>

    <!-- Header Section Start -->
    <header id="home" class="hero-area">
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg fixed-top scrolling-navbar">
            <div class="container">
                <div class="theme-header clearfix">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                            <span class="lni-menu"></span>
                            <span class="lni-menu"></span>
                            <span class="lni-menu"></span>
                        </button>

                        <a href="Index.aspx" class="navbar-brand">
                            <img src="assets/img/logo.png" alt=""></a>
                    </div>
                    <div class="collapse navbar-collapse" id="main-navbar">
                        <ul class="navbar-nav mr-auto w-100 justify-content-end">
                            <li class="nav-item active">
                                <a class="nav-link" href="#home">Home
                                </a>
                            </li>


                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#latest-jobs" aria-expanded="false">Jobs
                                </a>

                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#blog" aria-expanded="false">Blog
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="LoginPage.aspx">Sign In</a>
                            </li>
                            <li class="button-group">
                                <a href="RegistrationPage.aspx" class="button btn btn-danger">sign up</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="mobile-menu" data-logo="assets/img/logo-mobile.png"></div>
        </nav>
        <!-- Navbar End -->


    </header>
    <!-- Header Section End -->
    <br />
    <br />
    <!-- Category Section Start -->
    <section class="category section bg-gray">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Browse Categories</h2>
                
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-xs-12 f-category">
                    <a href="browse-jobs.html">
                        <div class="icon bg-color-1">
                            <i class="lni-home"></i>
                        </div>
                        <h3>Finance</h3>
                        <p>(4286 jobs)</p>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-xs-12 f-category">
                    <a href="browse-jobs.html">
                        <div class="icon bg-color-2">
                            <i class="lni-world"></i>
                        </div>
                        <h3>Sale/Markting</h3>
                        <p>(2000 jobs)</p>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-xs-12 f-category">
                    <a href="browse-jobs.html">
                        <div class="icon bg-color-3">
                            <i class="lni-book"></i>
                        </div>
                        <h3>Education/Training</h3>
                        <p>(1450 jobs)</p>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-xs-12 f-category border-right-0">
                    <a href="browse-jobs.html">
                        <div class="icon bg-color-4">
                            <i class="lni-display"></i>
                        </div>
                        <h3>Technologies</h3>
                        <p>(5100 jobs)</p>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-xs-12 f-category border-bottom-0">
                    <a href="browse-jobs.html">
                        <div class="icon bg-color-5">
                            <i class="lni-brush"></i>
                        </div>
                        <h3>Art/Design</h3>
                        <p>(5079 jobs)</p>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-xs-12 f-category border-bottom-0">
                    <a href="browse-jobs.html">
                        <div class="icon bg-color-6">
                            <i class="lni-heart"></i>
                        </div>
                        <h3>Healthcare</h3>
                        <p>(3235 jobs)</p>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-xs-12 f-category border-bottom-0">
                    <a href="browse-jobs.html">
                        <div class="icon bg-color-7">
                            <i class="lni-funnel"></i>
                        </div>
                        <h3>Science</h3>
                        <p>(1800 jobs)</p>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-xs-12 f-category border-right-0 border-bottom-0">
                    <a href="browse-jobs.html">
                        <div class="icon bg-color-8">
                            <i class="lni-cup"></i>
                        </div>
                        <h3>Food Services</h3>
                        <p>(4286 jobs)</p>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- Category Section End -->
    <!-- Register Section Start -->
    <section id="job-listings" class="section">
        <div class="container text-center wow  wow fadeInUp">
            <h1 class="section-title">Get Updates Of All the Latest Events</h1>

            </br>
            <a href="https://rebrand.ly/jobx-gg" target="_blank" rel="nofollow" class="btn btn-common btn-lg"><span class="lni-pointer-right"></span>Register Now!</a>
        </div>
    </section>
    <!-- Register Section End -->

    <!-- How It Work Section Start -->
    <section class="how-it-works section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">How It Works?</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et
                    <br>
                    metus effici turac fringilla lorem facilisis.
                </p>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="work-process">
                        <span class="process-icon">
                            <i class="lni-user"></i>
                        </span>
                        <h4>Create an Account</h4>
                        <p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="work-process step-2">
                        <span class="process-icon">
                            <i class="lni-search"></i>
                        </span>
                        <h4>Search Jobs</h4>
                        <p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="work-process step-3">
                        <span class="process-icon">
                            <i class="lni-cup"></i>
                        </span>
                        <h4>Apply</h4>
                        <p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- How It Work Section End -->
    <!-- Latest Section Start -->
    <section id="latest-jobs" class="section bg-gray">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Latest Jobs</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et
                    <br>
                    metus effici turac fringilla lorem facilisis.
                </p>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-12 col-xs-12">
                    <div class="jobs-latest">
                        <div class="img-thumb">
                            <img src="assets/img/features/img-1.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3><a href="job-details.html">UX Designer</a></h3>
                            <p class="brand">MagNews</p>
                            <div class="tags">
                                <span><i class="lni-map-marker"></i>New York</span>
                                <span><i class="lni-user"></i>John Smith</span>
                            </div>
                            <div class="tag mb-3"><i class="lni-tag"></i>#Html #Css #PHP</div>
                            <span class="full-time">Full Time</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-xs-12">
                    <div class="jobs-latest">
                        <div class="img-thumb">
                            <img src="assets/img/features/img-2.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3><a href="job-details.html">UI Designer</a></h3>
                            <p class="brand">Hunter Inc.</p>
                            <div class="tags">
                                <span><i class="lni-map-marker"></i>New York</span>
                                <span><i class="lni-user"></i>John Smith</span>
                            </div>
                            <div class="tag mb-3"><i class="lni-tag"></i>#Html #Css #PHP</div>
                            <span class="part-time">Part Time</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-xs-12">
                    <div class="jobs-latest">
                        <div class="img-thumb">
                            <img src="assets/img/features/img-3.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3><a href="job-details.html">Web Developer</a></h3>
                            <p class="brand">MagNews</p>
                            <div class="tags">
                                <span><i class="lni-map-marker"></i>New York</span>
                                <span><i class="lni-user"></i>John Smith</span>
                            </div>
                            <div class="tag mb-3"><i class="lni-tag"></i>#Html #Css #PHP</div>
                            <span class="full-time">Full Time</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-xs-12">
                    <div class="jobs-latest">
                        <div class="img-thumb">
                            <img src="assets/img/features/img-4.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3><a href="job-details.html">UX Designer</a></h3>
                            <p class="brand">AmazeSoft</p>
                            <div class="tags">
                                <span><i class="lni-map-marker"></i>New York</span>
                                <span><i class="lni-user"></i>John Smith</span>
                            </div>
                            <div class="tag mb-3"><i class="lni-tag"></i>#Html #Css #PHP</div>
                            <span class="full-time">Full Time</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-xs-12">
                    <div class="jobs-latest">
                        <div class="img-thumb">
                            <img src="assets/img/features/img-2.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3><a href="job-details.html">Digital Marketer</a></h3>
                            <p class="brand">Bingo</p>
                            <div class="tags">
                                <span><i class="lni-map-marker"></i>New York</span>
                                <span><i class="lni-user"></i>John Smith</span>
                            </div>
                            <div class="tag mb-3"><i class="lni-tag"></i>#Html #Css #PHP</div>
                            <span class="part-time">Part Time</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-xs-12">
                    <div class="jobs-latest">
                        <div class="img-thumb">
                            <img src="assets/img/features/img-1.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3><a href="job-details.html">Web Developer</a></h3>
                            <p class="brand">MagNews</p>
                            <div class="tags">
                                <span><i class="lni-map-marker"></i>New York</span>
                                <span><i class="lni-user"></i>John Smith</span>
                            </div>
                            <div class="tag mb-3"><i class="lni-tag"></i>#Html #Css #PHP</div>
                            <span class="full-time">Full Time</span>
                        </div>
                    </div>
                </div>
                <div class="col-12 text-center mt-4">
                    <a href="job-page.html" class="btn btn-common">Browse All Jobs</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Section End -->


    <!-- Blog Section -->
    <section id="blog" class="section">
        <!-- Container Starts -->
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Blog Post</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et
                    <br>
                    metus effici turac fringilla lorem facilisis.
                </p>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-xs-12 blog-item">
                    <!-- Blog Item Starts -->
                    <div class="blog-item-wrapper">
                        <div class="blog-item-img">
                            <a href="single-post.html">
                                <img src="assets/img/blog/img1.jpg" alt="">
                            </a>
                        </div>
                        <div class="blog-item-text">
                            <h3><a href="single-post.html">Tips to write an impressive resume online for beginner</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae.</p>
                        </div>
                        <a class="readmore" href="#">Read More</a>
                    </div>
                    <!-- Blog Item Wrapper Ends-->
                </div>

                <div class="col-lg-4 col-md-6 col-xs-12 blog-item">
                    <!-- Blog Item Starts -->
                    <div class="blog-item-wrapper">
                        <div class="blog-item-img">
                            <a href="single-post.html">
                                <img src="assets/img/blog/img2.jpg" alt="">
                            </a>
                        </div>
                        <div class="blog-item-text">
                            <h3><a href="single-post.html">Let's explore 5 cool new features in JobBoard theme</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae.</p>
                        </div>
                        <a class="readmore" href="#">Read More</a>
                    </div>
                    <!-- Blog Item Wrapper Ends-->
                </div>

                <div class="col-lg-4 col-md-6 col-xs-12 blog-item">
                    <!-- Blog Item Starts -->
                    <div class="blog-item-wrapper">
                        <div class="blog-item-img">
                            <a href="single-post.html">
                                <img src="assets/img/blog/img3.jpg" alt="">
                            </a>
                        </div>
                        <div class="blog-item-text">
                            <h3><a href="single-post.html">How to convince recruiters and get your dream job</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae.</p>
                        </div>
                        <a class="readmore" href="#">Read More</a>
                    </div>
                    <!-- Blog Item Wrapper Ends-->
                </div>
            </div>
        </div>
    </section>
    <!-- blog Section End -->
    <!-- Footer Section Start -->
    <footer>
        <!-- Footer Area Start -->
        <section class="footer-Content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-xs-12">
                        <div class="widget">
                            <div class="footer-logo">
                                <img src="assets/img/logo-footer.png" alt="">
                            </div>
                            <div class="textwidget">
                                <p>Sed consequat sapien faus quam bibendum convallis quis in nulla. Pellentesque volutpat odio eget diam cursus semper.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-xs-12">
                        <div class="widget">
                            <h3 class="block-title">Quick Links</h3>
                            <ul class="menu">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Support</a></li>
                                <li><a href="#">License</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                            <ul class="menu">
                                <li><a href="#">Terms & Conditions</a></li>
                                <li><a href="#">Privacy</a></li>
                                <li><a href="#">Refferal Terms</a></li>
                                <li><a href="#">Product License</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-xs-12">
                        <div class="widget">
                            <h3 class="block-title">Subscribe Now</h3>
                            <p>Sed consequat sapien faus quam bibendum convallis.</p>
                            <form method="post" id="subscribe-form" name="subscribe-form" class="validate">
                                <div class="form-group is-empty">
                                    <input type="email" value="" name="Email" class="form-control" id="EMAIL" placeholder="Enter Email..." required="">
                                    <button type="submit" name="subscribe" id="subscribes" class="btn btn-common sub-btn"><i class="lni-envelope"></i></button>
                                    <div class="clearfix"></div>
                                </div>
                            </form>
                            <ul class="mt-3 footer-social">
                                <li><a class="facebook" href="#"><i class="lni-facebook-filled"></i></a></li>
                                <li><a class="twitter" href="#"><i class="lni-twitter-filled"></i></a></li>
                                <li><a class="linkedin" href="#"><i class="lni-linkedin-fill"></i></a></li>
                                <li><a class="google-plus" href="#"><i class="lni-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer area End -->
        <!-- Copyright Start  -->
        <div id="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="site-info text-center">
                            <p>Designed and Developed by <a href="https://uideck.com" rel="nofollow">UIdeck</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->
    </footer>
    <!-- Footer Section End -->
    <!-- Go To Top Link -->
    <a href="#" class="back-to-top">
        <i class="lni-arrow-up"></i>
    </a>

    <!-- Preloader -->
    <div id="preloader">
        <div class="loader" id="loader-1"></div>
    </div>
    <!-- End Preloader -->
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="assets/js/jquery-min.js"></script>
    <script src="assets/js/popper.min.js"></script>

    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.slicknav.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/form-validator.min.js"></script>
    <script src="assets/js/contact-form-script.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>
