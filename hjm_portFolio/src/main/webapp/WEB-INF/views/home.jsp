<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>메인화면</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="icon" type="image/png" href="myicon.png">

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">



        <!--<link rel="stylesheet" href="assets/css/materialize.css">-->
        <link rel="stylesheet" href="/resources/css/normalize.css">
        <link rel="stylesheet" href="/resources/css/fonticons.css">
        <link rel="stylesheet" href="/resources/css/magnific-popup.css">
        <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
        <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

        <!-- For navmenu css -->
        <link rel="stylesheet" href="/resources/css/navmenu.css" />

        <!--For Plugins external css-->
        <link rel="stylesheet" href="/resources/css/plugins.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="/resources/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="/resources/css/responsive.css" />



        <!--Old browser  JS-->
        <script src="/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

    </head>

    <body data-spy="scroll" data-target="#scrollspy">

        <!--        <div class="">
                    Loading...
                </div>-->

        <div class="main_figur">
            
            
            <div class="preloader">
                <h2>Bootstrapthemes.co Free Theme</h2>
                <div class="loaded hexdots-loader">Loading…</div>
            </div><!-- End off Preloader -->
            
            
            
            <div class="container">
                <div class="div-menu">
                    <header class="cd-header">
                        <a href="#!" class="brand-logo text-left"><img src="resources/images/logo.png" alt="" /></a>
                        <a class="cd-menu-trigger" href="#main-nav"><span></span></a>
                    </header>
                </div>


                <nav id="main-nav">
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#about">로그인</a></li>
                        <li><a href="#service">회원가입</a></li>
                        <li><a href="#team">게시판</a></li>
                        <li><a href="#portfolio">Our Work</a></li>
                        <li><a href="#contactus">Contact</a></li>
                    </ul>
                    <a href="#" class="cd-close-menu">Close<span></span></a>
                </nav>
            </div>



            <!-- Home Section -->
            <section id="home" class="home">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 ">

                            <div class="main_home text-center colorstext wow fadeInUp" data-wow-duration="700ms">
                                <h1>We Are CreativeDigital Agency</h1>
                                <p>lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                                    lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <a href="http://localhost:8080/login" class="btn btn-default waves-effect waves-purple">로그인</a>
                                <a href="http://localhost:8080/member" class="btn btn-default waves-effect waves-purple">회원가입</a>
                                <a href="http://localhost:8080/board/list" class="btn btn-default waves-effect waves-purple">게시판</a>
                            </div>

                        </div><!-- End of col-sm-12 -->
                    </div><!-- End of row -->
                </div><!-- End of Container -->

                <div class="home_socail_bar">
                    <ul>
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href=""><i class="fa fa-behance"></i></a></li>
                        <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                    </ul>
                </div>
            </section><!-- End of Home Section -->


            <!-- About Section -->
            <section id="about" class="about colorsbg">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 ">
                            <div class="main_about_area">
                                <div class="head_title text-center">
                                    <h2>About Us</h2>
                                </div>
                                <div class="about_content colorstext2 wow fadeInUp" data-wow-duration="700ms">
                                    <div class="row">
                                        <div class="col-sm-4 col-sm-offset-1">
                                            <div class="single_abt single_about">
                                                <h3>Our story was start here</h3>
                                                <p class="text-uppercase colorstext">Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                                                <p>lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                                                    lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                                <a href="#!" class="btn btn-primary waves-effect waves-teal  margin-top-40">About Us</a>
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-sm-offset-1">
                                            <div class="single_abt single_about_right_img">
                                                <img src="/resources/images/abrightimg.png" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div><!-- End of col-sm-12 -->
                    </div><!-- End of row -->
                </div><!-- End of Container-fluid -->

                <!-- About Bottom -->
                <div class="container">
                    <div class="row">
                        <div class="about_bottom colorstext margin-top-80 margin-bottom-80 wow fadeInUp">
                            <div class="col-sm-3 no-padding">
                                <div class="single_abt bottom_single_about bottom_single_about_left_img">
                                    <img src="/resources/images/a_b_left.jpg" alt="" />
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="single_abt bottom_single_about">
                                    <h4>Don Norman</h4>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's 
                                        standard dummy text ever since the 1500s, when an unknown printer took a galley of type and
                                        scrambled it to make a type specimen book.</p>
                                    <a href="" class="btn btn-primary">more...</a>
                                </div>
                            </div>
                            <div class="col-sm-4 no-padding">
                                <div class="bottom_single_about s_bootom_right_area">
                                    <img src="/resources/images/a_b_right.jpg" alt="" />
                                    <div class="s_bottom_ab_text text-center">
                                        <h4>Tobias Van Schneider
                                            Interview</h4>
                                        <a href="/resources/images/video/ocean.mp4" class="gallery-video"><img src="/resources/images/vicon.png" alt="" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End of row -->
                </div><!-- End of container -->
            </section><!-- End of Home Section -->

            <!-- Tobias Section -->
            <section id="tobias" class="tobias">
                <div class="container">
                    <div class="row">
                        <div class="main_tobias_area sections">
                            <div class="col-sm-6">
                                <div class="single_abt single_tobias single_tobias_img wow fadeInLeft">
                                    <img src="/resources/images/tobias.png" alt="" />
                                </div>
                            </div>
                            <div class="col-sm-5 col-sm-offset-1">
                                <div class="single_abt single_tobias single_tobias_text wow fadeInRight">
                                    <h4 class="text-uppercase">our inspiration</h4>
                                    <div class="separator"></div>
                                    <h3 class="text-uppercase">tobias vin schneider</h3>
                                    <h4 class="text-uppercase">Creative Director at Spotify</h4>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's 
                                        standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to 
                                        make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, 
                                        remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
                                        Lorem Ipsum passages, and more recently with desktop publishing software like Aldus 
                                        PageMaker including versions of Lorem Ipsum.</p>

                                    <a href="" class="btn btn-primary margin-top-40">about tobias</a>
                                </div>
                            </div>
                        </div><!-- End of main Tobias area -->
                    </div><!-- End of row -->
                </div><!-- End of container -->
            </section><!-- End of Tobias Section -->

            <section id="service" class="service colorsbg">
                <div class="container">
                    <div class="row">
                        <div class="main_service_area text-center padding-bottom-80">
                            <div class="head_title text-center wow fadeInUp">
                                <h2>Our Service</h2>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                    when an unknown printer took a galley of type and scrambled it to make</p>
                            </div>

                            <div class="col-sm-4 wow fadeInLeft">
                                <div class="single_service margin-top-40">
                                    <div class="single_service_img">
                                        <img src="/resources/images/service1.png" alt="" />
                                    </div>
                                    <div class="service_btn">
                                        <a href="" class="btn btn-larg">graphic design</a>
                                    </div>
                                </div>
                            </div><!-- End of col-sm-4 -->

                            <div class="col-sm-4 wow fadeInUp">
                                <div class="single_service margin-top-40">
                                    <div class="single_service_img">
                                        <img src="/resources/images/service2.png" alt="" />
                                    </div>
                                    <div class="service_btn">
                                        <a href="" class="btn btn-larg">UX Design</a>
                                    </div>
                                </div>
                            </div><!-- End of col-sm-4 -->

                            <div class="col-sm-4 wow fadeInRight">
                                <div class="single_service margin-top-40">
                                    <div class="single_service_img">
                                        <img src="/resources/images/service3.png" alt="" />
                                    </div>
                                    <div class="service_btn">
                                        <a href="" class="btn btn-larg">ui design</a>
                                    </div>
                                </div>
                            </div><!-- End of col-sm-4 -->

                            <div class="service_more_btn padding-top-80 text-center">
                                <a href="" class="btn btn-primary">see more</a>
                            </div>

                        </div><!-- End of main service area -->
                    </div><!-- End of row -->
                </div><!-- End of container -->
            </section><!-- End of Service Section -->


            <!-- Team Section -->
            <section id="team" class="team colorsbg">
                <div class="container">
                    <div class="row">
                        <div class="main_service_area main_team_area">
                            <div class="head_title text-center wow fadeInUp">
                                <h2>Our Team</h2>
                                <p>Loem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                    when an unknown printer took a galley of type and scrambled it to make</p>
                            </div>

                            <div class="main_team_content wow fadeInUp">
                                <div class="col-sm-4 col-xs-12">
                                    <div class="single_team margin-top-40">
                                        <img src="/resources/images/team1.jpg" alt="" />
                                        <div class="single_team_text">
                                            <h4>razib biswas</h4>
                                            <p>uI & ux desgner</p>
                                        </div>
                                    </div>
                                </div><!-- End of col-sm-4 -->

                                <div class="col-sm-4 col-xs-12">
                                    <div class="single_team margin-top-40">
                                        <img src="/resources/images/team2.jpg" alt="" />
                                        <div class="single_team_text">
                                            <h4>Mohammad alamin</h4>
                                            <p>creative graphic designer</p>
                                        </div>
                                    </div>
                                </div><!-- End of col-sm-4 -->

                                <div class="col-sm-4 col-xs-12">
                                    <div class="single_team margin-top-40">
                                        <img src="/resources/images/team3.jpg" alt="" />
                                        <div class="single_team_text">
                                            <h4>sultan mahmud</h4>
                                            <p>ui & ux Designer</p>
                                        </div>
                                    </div>
                                </div><!-- End of col-sm-4 -->
                            </div>
                        </div><!-- End of main Team area -->
                    </div><!-- End of row -->
                </div><!-- End of container -->
            </section><!-- End of Team Section -->

            <!-- Portfolio Section -->
            <section id="portfolio" class="portfolio lightbg">
                <div class="container">
                    <div class="row">
                        <div class="maint_portfolio_area">
                            <div class="col-sm-12">
                                <div class="head_title margin-top-80 wow fadeInUp">
                                    <h2>our work</h2>
                                    <p>Loem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                                        when an unknown printer took a galley of type and scrambled it to make</p>
                                </div>
                            </div>

                            <div class="main_portfolio_content sections wow fadeInUp">
                                <div class="col-sm-8">
                                    <div class="single_portfolio single_portfolio_1st">
                                        <a href="assets/images/portfolio1.jpg" class="gallery-img"><img src="/resources/images/portfolio1.jpg" alt="" /></a>
                                    </div>
                                </div><!-- End of col-sm-8 -->
                                <div class="col-sm-4">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="single_portfolio">
                                                <a href="assets/images/portfolio2.jpg" class="gallery-img"><img src="/resources/images/portfolio2.jpg" alt="" /></a>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="single_portfolio margin-top-30">
                                                <a href="assets/images/portfolio3.jpg" class="gallery-img"><img src="/resources/images/portfolio3.jpg" alt="" /></a>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- End of col-sm-4 -->

                                <div class="col-sm-12">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="single_portfolio margin-top-30">
                                                <a href="assets/images/portfolio4.jpg" class="gallery-img"><img src="/resources/images/portfolio4.jpg" alt="" /></a>
                                            </div>
                                        </div><!-- End of col-sm-4 -->
                                        <div class="col-sm-4">
                                            <div class="single_portfolio margin-top-30">
                                                <a href="assets/images/portfolio5.jpg" class="gallery-img"><img src="/resources/images/portfolio5.jpg" alt="" /></a>
                                            </div>
                                        </div><!-- End of col-sm-4 -->
                                        <div class="col-sm-4">
                                            <div class="single_portfolio margin-top-30">
                                                <a href="assets/images/portfolio6.jpg" class="gallery-img"><img src="/resources/images/portfolio6.jpg" alt="" /></a>
                                            </div>
                                        </div><!-- End of col-sm-4 -->
                                    </div>
                                </div><!-- End of col-sm-12 -->

                            </div>
                        </div><!-- End of main Portfolio area -->
                    </div><!-- End of row -->
                </div><!-- End of container -->
            </section><!-- End of Portfolio Section -->


            <!-- Contact Section -->
            <section id="contactus" class="contactus colorsbg">
                <div class="container">
                    <div class="row">
                        <div class="main_service_area main_contactus_area">
                            <div class="head_title text-center wow fadeInUp">
                                <h2>Contact us</h2>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. 
                                    It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="single_contant_left margin-top-60 margin-bottom-80 wow rollIn">
                                        <form action="#" id="formid">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="name" placeholder="Your Name..." required="">
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <input type="email" class="form-control" name="email" placeholder="Your Email Address" required="">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <textarea class="form-control" name="message" rows="8" placeholder="Your Message"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 margin-bottom-30">
                                                    <input type="submit" value="Send message" class="btn btn-primary btn-colors">
                                                </div>

                                            </div>
                                        </form>
                                    </div>
                                </div><!-- End of col-sm-6 -->

                                <div class="col-sm-6">
                                    <div class="contact_us_right margin-top-60 margin-bottom-80 wow fadeInLeft">
                                        <div class="single_contactus">
                                            <div class="ourmap"></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="single_map_bottom margin-top-30">
                                                    <p class="text-uppercase">Corporate office</p>
                                                    <span>Hourse: 14, Road: 17, Sector: 11</span>
                                                    <span>Uttara Model Town, Dhaka-1230.</span>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="single_map_bottom text-right margin-top-30">
                                                    <p class="text-uppercase">Corporate office</p>
                                                    <span>147, Sokuntala, Jaflong</span>
                                                    <span>NY-25800.</span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div><!-- End of col-sm-6 -->

                            </div>
                        </div>
                    </div><!-- End of row -->
                </div><!-- End of container -->
            </section><!-- End of Contactus Section -->


            <!-- Contact Section -->
            <footer id="footer" class="footer">                
                <div class="container">
                    <div class="row">
                        <div class="main_footer">
                            <div class="col-sm-2">
                                <div class="footer_logo">
                                    <a href="#home"><img src="/resources/images/logo.png" alt="" /></a>
                                </div>
                            </div>

                            <div class="col-sm-8">
                                <div class="copyright_text margin-top-20">
                                    <p class=" wow fadeInRight animated" data-wow-duration="1s">Made with <i class="fa fa-heart"></i>
                                        by <a href="http://bootstrapthemes.co">Bootstrap Themes</a> 2016. All Rights Reserved</p>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="footer_socail text-right  margin-top-20">
                                    <ul class="list-inline">
                                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                        <li><a href=""><i class="fa fa-behance"></i></a></li>
                                        <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- End of row -->
                </div><!-- End of container-fluid -->
            </footer><!-- End of Footer Section -->

            <div class="scrollup">
                <a href="#"><i class="fa fa-chevron-up"></i></a>
            </div>
        </div>



        <script src="/resources/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="/resources/js/vendor/bootstrap.min.js"></script>
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
        <script src="/resources/js/jquery.easing.1.3.js"></script>
        <script src="/resources/js/jquery.magnific-popup.js"></script>
        <script src="http://maps.google.com/maps/api/js"></script>
        <script src="/resources/js/gmaps.min.js"></script>
        <script>
            var map = new GMaps({
                el: '.ourmap',
                lat: -12.043333,
                lng: -77.028333,
                scrollwheel: false,
                zoom: 15,
                zoomControl: true,
                panControl: false,
                streetViewControl: true,
                mapTypeControl: false,
                overviewMapControl: false,
                clickable: false,
                styles: [{'stylers': [{'hue': '#000'}, {saturation: -200},
                            {gamma: 0.50}]}]
            });
            map.addMarker({
                lat: -12.043333,
                lng: -77.028333
            });

        </script>
        <script src="/resources/js/materialize.js"></script>
        <script src="/resources/js/plugins.js"></script>
        <script src="/resources/js/main.js"></script>

    </body>
</html>