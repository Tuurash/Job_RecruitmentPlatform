﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PGI_JobPortal.Views.Index" %>

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
        .parallax {
            /* The image used */
            background-image: url("assets/img/steelmills.jpg");
            /* Set a specific height */
            height: 340px;
            /* Create the parallax scrolling effect */
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

    <style>
        .parallax_howiw {
            /* The image used */
            background-image: url("assets/img/spinning-1.jpg");
            /* Set a specific height */
            height: 400px;
            /* Create the parallax scrolling effect */
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

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

                <asp:Repeater runat="server" ID="repeaterCatagory">
                    <ItemTemplate>

                        <div class="col-lg-3 col-md-6 col-xs-12 f-category">
                            <a href="JobListIndex.aspx?JobCatagory=<%# Eval("SeriesName") %>">
                                <div class="icon bg-color-1">
                                    <%--lni-home--%>
                                    <i class="<%# Eval("CatagoryIcon")%>"></i>
                                </div>
                                <h3><%# Eval("SeriesName")%></h3>
                                <p>(<%# Eval("LastGeneratedNo")%> jobs)</p>
                            </a>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </section>
    <!-- Category Section End -->

    <!-- Register Section Start -->
    <section id="job-listings" class="section">
        <div class="container text-center wow  wow fadeInUp">
            <h1 class="section-title">Get Updates Of All the Latest Events</h1>

            <br />
            <a href="RegistrationPage.aspx" target="_blank" rel="nofollow" class="btn btn-common btn-lg"><span class="lni-pointer-right"></span>Register Now!</a>
        </div>
    </section>
    <!-- Register Section End -->

    <!-- How It Work Section Start  class="how-it-works section" -->
    <section class="parallax_howiw">
        <div class="container">
            <div class="section-header">
                <br />

                <h2 class="section-title" style="color: white;">How It Works?</h2>
                <p style="color: white;">
                    We are looking for individuals who are adaptable, passionate about their area of expertise and are committed 
                    <br>
                    to gaining knowledge and skills through the training we provide.
                </p>

            </div>

            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <a href="RegistrationPage.aspx">
                        <div class="work-process">
                            <span class="process-icon">
                                <i class="lni-user"></i>
                            </span>
                            <h4 style="color: white;">Create an Account</h4>
                            <p style="color: white;">Create an Account to Apply & also get notified when new opportunities arrive.</p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <a href="JobListIndex.aspx">
                        <div class="work-process step-2">
                            <span class="process-icon">
                                <i class="lni-search"></i>
                            </span>
                            <h4 style="color: white;">Search Jobs</h4>
                            <p style="color: white;">Search Your preferred Department & Designation</p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <a href="JobListIndex.aspx">
                        <div class="work-process step-3">
                            <span class="process-icon">
                                <i class="lni-cup"></i>
                            </span>
                            <h4 style="color: white;">Apply</h4>
                            <p style="color: white;">Finally in just 3 steps you are all done.</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- How It Work Section End -->

    <!-- Latest Section Start -->
    <section id="latest-jobs" class="section bg-gray">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Latest Job Opportunities</h2>
                <p>
                    The role of all Prime Group of Industries team members is to provide a smooth day to day experience to our clients, which is similar to the feeling customers enjoy when they communicate with their own employees. 
                    You'll be dealing with customers that range from novices to experts so you'll always be faced with fresh challenges.
                </p>
            </div>
            <div class="row">
                <asp:Repeater ID="repeaterJoblistIndex" runat="server">

                    <ItemTemplate>

                        <div class="col-lg-4 col-md-12 col-xs-12">
                            <div class="jobs-latest">
                                <div class="content">
                                    <h3><a href="JobDetailPage.aspx?JobCode=<%# Eval("JobCode") %>"><%# Eval("JobName")%></a></h3>
                                    <p class="brand"><%# Eval("Catagory")%></p>
                                    <div class="tags">
                                        <span><i class="lni-map-marker"></i><%# Eval("Location")%></span>
                                        <span><%# Eval("Salary")%></span>
                                    </div>

                                    <span class="full-time"><%# Eval("EmploymentStatus")%></span>
                                </div>
                            </div>
                        </div>

                    </ItemTemplate>

                </asp:Repeater>


                <div class="col-12 text-center mt-4">
                    <a href="JobListIndex.aspx" class="btn btn-common">Browse All Jobs</a>
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
                <h2 class="section-title" style="color: #990000">Prime Group of Industries</h2>
                <p>
                    The company thinks business not only profit also provide satisfaction, quality, production and full fill the market demands and  
                    <br>
                    major contribution in national economy as well as maintain positive investment of the share holders.
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
                            <h3><a href="#">THE EDIFICE</a></h3>
                            <p>Late Alhaj Abdul Mannan, the distinguished father of the present Chief of the Group was a great visionary. The vast multitude of people in this area were ignored by the Manchester based textile strategy of the British Empire.</p>
                        </div>
                        <%--<a class="readmore" href="#">Read More</a>--%>
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
                            <h3><a href="#">Prime Group of Industries</a></h3>
                            <p>Prime Group of Industries is a notable Industrial House in Bangladesh. Spinning, Steel, Real state, Trading, Clearing & Forwarding, Agro Product, Nutrition Industry, Banking, Insurance, Financial & Securities, Information Technology, Ship Breaking and Education is the latest area of its operation.</p>
                        </div>

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
                            <h3><a href="single-post.html">Mission</a></h3>
                            <p>The Company mission is quality production and after sales service. Exporting high quality finished yarn for global market and achive international accreditations as a maximum quality yarn exporter and quality yarn producer.</p>
                        </div>

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
        <section class="parallax">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-xs-12">
                        <div class="widget">
                            <div class="footer-logo">
                                <img src="assets/img/logo_footer.gif" height="90" width="300" alt="">
                            </div>
                            <div class="textwidget">
                                <p style="color: white">Prime Group of Industries is a notable Industrial House in Bangladesh. Spinning, Steel, Real state, Trading, Clearing & Forwarding, Agro Product, Nutrition Industry, Banking, Insurance, Financial & Securities, Information Technology, Ship Breaking and Education is the latest area of its operation. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-xs-12"></div>
                    <div class="col-lg-4 col-md-4 col-xs-12">
                        <div class="widget">
                            <h3 class="block-title">We are here</h3>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14610.290462178576!2d90.4226075!3d23.7269516!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x147ec32ea73d5208!2sPrime+Group+of+Industries!5e0!3m2!1sen!2sbd!4v1560851673583!5m2!1sen!2sbd"
                                style="height: 260px; width: 450px; border: 0px none; pointer-events: none;" allowfullscreen="true" frameborder="0"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer area End -->
        <!-- Copyright Start  -->

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="site-info text-center">
                        <p>Copyright © Prime Group of Industries ™   developed by<a href="https://github.com/Tuurash" rel="nofollow"> Turash</a></p>
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
