<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travelix - Explore the World</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        /* Navbar */
        /* Navbar custom styles */
/* Navbar Styles */
.navbar {
    border-bottom: 2px solid #444; /* Adding a subtle border at the bottom */
    transition: background-color 0.3s ease, box-shadow 0.3s ease; /* Smooth transition for navbar background and shadow */
}

/* Navbar Background & Scrolling Effects */
/* Enhanced Navbar Styling */
.navbar.scrolled {
    background-color: #333; /* Dark background when scrolling */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow when scrolling */
    transition: background-color 0.5s ease, box-shadow 0.5s ease; /* Smooth transition on scroll */
}

/* Sticky Navbar */
.navbar.sticky {
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Adds shadow when sticky */
}

/* Navbar Links */
.navbar-nav .nav-link {
    font-size: 1.2rem;
    font-weight: 500;
    color: #f5f5f5; /* Default link color */
    transition: color 0.4s ease, transform 0.4s ease; /* Transition for color and movement */
}

.navbar-nav .nav-link:hover {
    color: #64c5bd; /* Highlight links on hover */
    transform: translateX(5px); /* Subtle movement effect for links */
    text-shadow: 0 0 10px rgba(100, 197, 189, 0.7); /* Glow effect */
}

/* Navbar Items (Nav Links) Hover Effect */
.navbar-nav .nav-item {
    transition: transform 0.4s ease; /* Smooth transformation for nav items */
}

.navbar-nav .nav-item:hover {
    transform: scale(1.1); /* Slight zoom effect on hover for nav items */
}

/* Admin Button Customization */
.navbar .nav-item .btn {
    border-radius: 25px;
    font-weight: bold;
    padding: 8px 20px;
    background-color: #00d9ff; /* Initial button color */
    color: white;
    transition: background-color 0.4s ease, transform 0.4s ease, box-shadow 0.4s ease; /* Transition for background, movement, and shadow */
    position: relative;
}

.navbar .nav-item .btn:hover {
    background-color: #ff9933; /* Change the color on hover */
    transform: translateY(-5px); /* Slight movement effect */
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3); /* Add a subtle shadow for depth */
    text-decoration: none; /* Remove underline on hover */
}

/* Animated Button Ripple Effect */
.navbar .nav-item .btn::after {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    width: 0;
    height: 0;
    background: rgba(255, 255, 255, 0.3);
    border-radius: 50%;
    transform: translate(-50%, -50%);
    opacity: 0;
    transition: width 0.4s ease, height 0.4s ease, opacity 0.4s ease;
}

.navbar .nav-item .btn:hover::after {
    width: 200%;
    height: 200%;
    opacity: 0;
}

/* Navbar Brand (Logo) Customization */
.navbar-brand {
    font-size: 1.5rem;
    color: #f5f5f5;
    transition: transform 0.4s ease, color 0.4s ease; /* Transition for logo scale and color */
}

.navbar-brand:hover {
    transform: scale(1.1); /* Slight zoom effect on hover */
    color: #ff9933; /* Change logo color on hover */
}

/* Navbar Toggler (Hamburger Icon) */
.navbar-toggler {
    transition: transform 0.4s ease; /* Smooth transition for toggler icon */
}

.navbar-toggler:focus {
    outline: none; /* Remove outline on focus */
}

.navbar-toggler-icon {
    transition: transform 0.4s ease; /* Smooth transformation for toggler icon */
}

.navbar-toggler-icon:hover {
    transform: rotate(90deg); /* Rotate icon on hover */
}

/* Hover Effects for Navbar Links */
.navbar-nav .nav-link:hover {
    color: #64c5bd; /* Highlight links on hover */
    transform: translateX(5px); /* Subtle movement effect for links */
}

/* Custom Spacing for Navbar */
.navbar-nav {
    margin-left: auto; /* Right align the navbar items */
}

.navbar-nav .nav-item {
    padding-right: 15px; /* Right padding for nav items */
}

/* Adding a subtle glow effect to the navbar */
.navbar.scrolled .navbar-nav .nav-link:hover {
    text-shadow: 0 0 15px rgba(100, 197, 189, 0.5); /* Glow effect on link hover */
}

/* Background Color Transition on Scroll */
.navbar {
    transition: background-color 0.4s ease;
}

/* Smooth Transition for All Navbar Effects */
.navbar, .navbar .nav-item, .navbar .nav-link, .navbar-toggler-icon {
    transition: all 0.4s ease; /* Ensure all transitions are smooth */
}

/* AOS Integration */
[data-aos] {
    opacity: 0;
    transition: opacity 0.6s ease-in-out, transform 0.6s ease-in-out;
}

[data-aos].aos-animate {
    opacity: 1;
    transform: translateY(0);
}

/* Specific AOS Effects */
[data-aos="fade-down"] {
    transform: translateY(-20px);
}

[data-aos="fade-up"] {
    transform: translateY(20px);
}




        /* Hero Section */
        .hero {
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://i.pinimg.com/originals/31/24/8d/31248d2b1d555bc968ec46adc5c726a5.gif') center/cover;
            color: #fff;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .hero h1 {
    font-size: 4rem;
    font-weight: bold;
    position: relative;
    overflow: hidden; /* Hide the text until it's revealed */
    display: inline-block;
    border-right: 4px solid #333; /* Simulate a blinking cursor */
    animation: typing 4s steps(30) 1s 1 normal both, blink 0.75s step-end infinite; /* Typing and cursor blinking */
}

@keyframes typing {
    0% {
        width: 0;
    }
    100% {
        width: 100%;
    }
}

@keyframes blink {
    50% {
        border-color: transparent; /* Cursor disappears */
    }
    100% {
        border-color: #333; /* Cursor reappears */
    }
}


        .hero p {
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        .btn-hero {
            background-color: #0dcaf0;
            color: #fff;
            padding: 10px 20px;
            font-size: 1.2rem;
            border-radius: 30px;
            transition: all 0.3s;
        }

        .btn-hero:hover {
            background-color: #0d6efd;
            color: #ffc107;
        }

        /* Features Section */
        .features {
            padding: 50px 0;
            background-color: #e3f2fd;
            color:#e2e2e2;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://w0.peakpx.com/wallpaper/919/821/HD-wallpaper-cyan-ocean-sun-ocean-waves-sky-clouds-sea-cyan-beach-paradise-summer-skyphoenixx1-nature-sunshine.jpg') center/cover;
            
        }

        .feature-box {
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            transition: all 0.3s;
        }

        .feature-box {
    transition: all 0.3s ease; /* Smooth transition for all properties */
}

.feature-box:hover {
    background-color: rgba(64, 167, 196, 0.5); /* Transparent black background on hover */
    color: white; /* Change text color to white */
    transform: scale(1.05); /* Slight zoom effect */
}

        /* Popular Destinations */
        .destinations {
            padding: 50px 0;
            background-color: #f8f9fa;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(56, 207, 221, 0.5)), url('https://img.freepik.com/free-photo/woman-tourist-full-length-happy-young-woman-standing-with-suitcase-with-exciting-gesturing-isolated_1258-111606.jpg') center/cover;
            background-size: cover; /* Ensures the image covers the entire container */
    background-position: center center; /* Centers the image */
    background-repeat: no-repeat; /* Prevents repeating the image */
    padding: 50px 0;
        }

        .destination-card {
            border: none;
            overflow: hidden;
            border-radius: 10px;
            transition: all 0.3s;
        }

        .destination-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .destination-card:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        /* about section */
        /* About Section */
       /* About Section Container */
.about {
    padding: 50px 0;
    background: linear-gradient(135deg, #fbfbfb 0%, #eff0f2 100%);
    border-radius: 15px; /* Rounded corners for the entire section */
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3); /* Subtle shadow for depth */
    color: #131212; /* White text for contrast */
}

/* Row Alignment */
.about .row {
    display: flex;
    align-items: center;
    gap: 20px;
    flex-wrap: wrap; /* Ensures responsiveness */
}

/* Text Content Styling */
.about .about-content {
    flex: 1;
    padding: 30px;
    color: #120f0f; /* Text color matches the theme */
}

/* Headings */
.about h2 {
    font-size: 2.5rem;
    margin-bottom: 20px;
    font-weight: bold;
    text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.4); /* Enhanced depth effect */
    letter-spacing: 2px; /* More pronounced letter spacing */
    color: #fff; /* Base color for the heading */
    position: relative; /* Necessary for pseudo-elements */
    transition: all 0.4s ease-in-out; /* Smooth transition effects */
    background: linear-gradient(90deg, #3f3c38, #37362f, #1d3337);
    -webkit-background-clip: text; /* Clips the background to the text */
    -webkit-text-fill-color: transparent; /* Makes the text background visible */
    animation: gradientMove 5s infinite; /* Adds a gradient animation */
    cursor: pointer; /* Makes the element interactive */
}

/* Add hover effect for scaling and color change */
.about h2:hover {
    transform: scale(1.1); /* Slight zoom effect on hover */
    text-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5); /* Adds more depth */
    filter: brightness(1.2); /* Makes the text pop on hover */
}

/* Gradient animation */
@keyframes gradientMove {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

/* Add underline effect */
.about h2::after {
    content: "";
    width: 100px;
    height: 4px;
    background: #ffd700;
    display: block;
    margin-top: 10px;
    margin-left: auto;
    margin-right: auto;
    border-radius: 2px;
    transition: all 0.4s ease-in-out; /* Smooth transition for the underline */
}

/* Hover effect for underline */
.about h2:hover::after {
    width: 150px; /* Expands the underline */
    background: #0dcaf0; /* Changes the underline color */
}


/* Paragraph */
.about p {
    font-size: 1.2rem;
    line-height: 1.8;
    margin-bottom: 20px;
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1); /* Subtle shadow for text clarity */
}

/* Buttons */
.about .btn-about {
    background-color: #ffc107;
    color: #000;
    margin-top: 20px;
    padding: 10px 20px;
    border-radius: 30px;
    transition: all 0.3s ease-in-out;
    font-weight: bold;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3); /* Adds depth to buttons */
}

.about .btn-about:hover {
    background-color: #050404;
    color: #f0f1f1;
    transform: scale(1.1);
}

/* Image Section */
.about .about-image {
    flex: 1;
    border-radius: 50%; /* Slightly rounded corners */
    overflow: hidden;
    width: 100%; /* Spans the full width */
    max-width: 500px; /* Prevents it from being too large */
    height: auto;
    margin: auto;
    animation: zoomInOut 3s infinite ease-in-out;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3); /* Shadow around the image */
}

/* Image Styling */
.about .about-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

/* Animation for Zoom Effect */
@keyframes zoomInOut {
    0% {
        transform: scale(1);
    }
    50% {
        transform: scale(1.1);
    }
    100% {
        transform: scale(1);
    }
}

/* Add Spacing for Mobile Screens */
@media (max-width: 768px) {
    .about .row {
        flex-direction: column;
        text-align: center;
    }
    .about .about-image {
        max-width: 80%;
    }
}

@keyframes fadeInUp {
    0% {
        opacity: 0;
        transform: translateY(20px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

@keyframes slideInLeft {
    0% {
        opacity: 0;
        transform: translateX(-50px);
    }
    100% {
        opacity: 1;
        transform: translateX(0);
    }
}

/* Carousel transitions */
.carousel {
    margin: 50px auto;
    transition: transform 0.3s ease; /* Zoom effect when changing items */
}

.carousel .carousel-item {
    color: #f7fafa;
    overflow: hidden;
    min-height: 120px;
    font-size: 13px;
    transition: transform 0.3s ease; /* Zoom effect for items */
}

.carousel .carousel-item:hover {
    transform: scale(1.05); /* Slight zoom-in effect on hover */
}

.carousel .media {
    position: relative;
    padding: 0 0 0 20px;
    margin-left: 20px;
    transition: transform 0.3s ease; /* Zoom effect for media */
}

.carousel .media img {
    width: 75px;
    height: 75px;
    display: block;
    border-radius: 50%;
    box-shadow: 0 2px 4px rgba(0,0,0,0.2);
    border: 2px solid #fff;
    transition: transform 0.3s ease; /* Zoom effect for images */
}

.carousel .media img:hover {
    transform: scale(1.1); /* Slight zoom-in on hover */
}

.carousel .testimonial {
    color: #fff;
    position: relative;
    background: #9b9b9b;
    padding: 15px;
    margin: 0 0 20px 20px;
    transition: transform 0.3s ease; /* Zoom effect for testimonials */
}

.carousel .testimonial:hover {
    transform: scale(1.05); /* Slight zoom-in effect on hover */
}

.carousel .testimonial::before, .carousel .testimonial::after {
    content: "";
    display: inline-block;
    position: absolute;
    left: 0;
    bottom: -20px;
}

.carousel .testimonial::before {
    width: 20px;
    height: 20px;
    background: #9b9b9b;
    box-shadow: inset 12px 0 13px rgba(0,0,0,0.5);
}

.carousel .testimonial::after {
    width: 0;
    height: 0;
    border: 10px solid transparent;
    border-bottom-color: #fff;
    border-left-color: #fff;
}

/* Control buttons hover effect */
.carousel-control-prev, .carousel-control-next {
    width: 30px;
    height: 30px;
    background: #666;
    text-shadow: none;
    top: 4px;
    transition: transform 0.3s ease; /* Added zoom-in effect for controls */
}

.carousel-control-prev i, .carousel-control-next i {
    font-size: 16px;
}

.carousel-control-prev:hover, .carousel-control-next:hover {
    transform: scale(1.1); /* Slight zoom-in effect on hover */
}

.carousel-control-prev {
    left: auto;
    right: 40px;
}

.carousel-control-next {
    left: auto;
}

/* Carousel indicators transition */
.carousel-indicators {
    bottom: -80px;
}

.carousel-indicators li, .carousel-indicators li.active {
    width: 17px;
    height: 17px;
    border-radius: 0;
    margin: 1px 5px;
    box-sizing: border-box;
    transition: transform 0.3s ease; /* Added transition for indicator zoom */
}

.carousel-indicators li {    
    background: #e2e2e2;
    border: 4px solid #fff;
}

.carousel-indicators li.active {
    color: #fff;
    background: #ff5555;
    border: 5px double;    
}

.carousel-indicators li:hover {
    transform: scale(1.2); /* Zoom-in effect for active indicators */
}

/* Star rating hover effect */
.star-rating li {
    padding: 0 2px;
}

.star-rating i {
    font-size: 14px;
    color: #ffdc12;
    transition: transform 0.3s ease; /* Zoom effect for stars */
}

.star-rating i:hover {
    transform: scale(1.2); /* Slight zoom-in on hover */
}


        /* Footer */

footer p, footer strong, footer b, footer {
    color: #fdf9f9;
}

.footer-top {
    background: #303030;
    background-size: cover;
    background-position: center;
    padding: 0 0 20px;
    font-family: rubik;
  padding-top:30px;
  
}

.footer-top, .footer-bottom {
    background-color: #3c6574;
}

.footer-bottom {
    padding: 15px 0;
    border-top: 1px solid #313646;
    background-color: #181828 !important;
    color: #b0b0b0;
    font-family: rubik;
}


.footer-site-info {
    font-size: 92.86%;
}
#footer-navigation, #footer-navigation li a:hover, .custom-footer, .custom-footer li a:hover {
    color: white;
}

#footer-navigation, #footer-navigation li a, .custom-footer, .custom-footer li a {
    color: #99a9b5;
    padding-top: 15px;
}

.footer-bottom ul {
    margin: 0;
}
.inline-inside {
    font-size: 0;
    line-height: 0;
}
.clearfix:after, .clearfix:before {
    content: "";
    display: table;
}
#footer-menu li {
    display: inline-block;
    padding: 0 21px;
    position: relative;
    line-height: 1;
}

#footer-navigation, #footer-navigation li a, .custom-footer, .custom-footer li a {
    color: #99a9b5;
    padding-top: 15px;
}

#footer-navigation, #footer-navigation li a, .custom-footer, .custom-footer li a {
    color: #99a9b5;
    padding-top: 15px;
}
#footer-menu li+li:before {
    content: '';
    width: 0;
    height: 100%;
    position: absolute;
    left: -1px;
    top: 0;
    font-size: 0;
    border-left: 1px solid #232234;
    border-right: 1px solid #333146;
}


navigation li a, .custom-footer, .custom-footer li a {
    color: #99a9b5;
    padding-top: 15px;
}

#footer-socials {
    text-align: right;
}

#footer-socials .socials {
    text-align: right;
    margin: 0 -7px;
    display: inline-block;
    vertical-align: middle;
}

a.socials-item {
    display: inline-block;
    vertical-align: top;
    text-align: center;
    -o-transition: all 0.3s;
    -webkit-transition: all 0.3s;
    transition: all 0.3s;
    margin: 0 5px;
    line-height: 16px;
    padding: 10px;
    border-radius: 50%;
    background-color: #141421;
    border: 1px solid #2e2e4c;
    box-shadow: 3px 9px 16px rgb(0,0,0,0.4), -3px -3px 10px rgba(255,255,255, 0.06), inset 14px 14px 26px rgb(0,0,0,0.3), inset -3px -3px 15px rgba(255,255,255, 0.05);
}

.socials-item i {
    display: inline-block;
    font-weight: normal;
    width: 1em;
    height: 1em;
    line-height: 1;
    font-size: 16px;
    text-align: center;
    vertical-align: top;
    font-feature-settings: normal;
    font-kerning: auto;
    font-language-override: normal;
    font-size-adjust: none;
    font-stretch: normal;
    font-style: normal;
    font-synthesis: weight style;
    font-variant: normal;
    font-weight: normal;
    text-rendering: auto;
}

.facebook {
    color: #4e64b5;
}

.twitter {
    color: #00aced;
}
.instagram {
    color: #9a8f62;
}
.youtube {
    color: #c82929;
}

.telegram {
    color: #2ca5e0;
}


a.socials-item:hover {
    box-shadow: 0 0px 20px rgba(84, 1, 74, 0.7);
    border-color: rgba(255, 6, 224, 0.61);
    background: linear-gradient(to right, rgba(255, 9, 9, 0.12941176470588237), #c000ffb5, rgba(255, 0, 94, 0.14));
}

.footer-bottom a:hover {
    color: white;
}


footer p, footer li {
    font-size: 15px;
    line-height: 22px;
}


.widget {
    margin-bottom: 50px;
}

.footer-title {
    margin-bottom: 40px;
    color: #fff;
    font-weight: 500;
    text-transform: capitalize;
    padding-bottom: 15px;
    font-size: 16px;
    position: relative;
}

.footer-title:after {
    width: 50px;
    background: #fff;
    opacity: 0.2;
    height: 1px;
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
}

.gem-contacts-item {
    padding-top: 10px;
    font-size: 15px;
}

.gem-contacts-item i {
    padding-right: 10px;
}

footer .widget ul {
    list-style: none;
    margin-top: 5px;
}

.posts li {
    border-bottom: 1px solid #393d50;
    padding-bottom: 12px;
    padding-top: 6px;
}

footer p, footer li {
    font-size: 15px;
    line-height: 22px;
}

.gem-pp-posts-date {
    color: #00bcd4;
    font-size: 89.5%;
}

footer p {
    line-height: 24px;
    margin-bottom: 10px;font-size: 15px;
}

.wpcf7-form-control-wrap .wpcf7-form-control {
    padding: 7px!important;
    width: 100%;
}

.wpcf7-form-control-wrap input {
    background: #1c1f2f;
    overflow: hidden;
    border: 1px solid #2e344d;
    background-color: #1c1f2f;
    box-shadow: 10px 10px 36px rgb(0,0,0,0.5), -13px -13px 23px rgba(255,255,255, 0.03);
    border-radius: 5px;
    transition: all 0.3s ease-in-out 0s;
}

.wpcf7-form-control-wrap input:hover {
    background-color: transparent;
    box-shadow: 10px 10px 36px rgb(0,0,0,0.5), -13px -13px 23px rgba(255,255,255, 0.03), inset 14px 14px 70px rgb(0,0,0,0.2), inset -15px -15px 30px rgba(255,255,255, 0.04);
    border-color: rgba(255, 255, 255, 0.2);
    color: white;
}

.wpcf7 .wpcf7-form .contact-form-footer textarea {
    height: 160px;
    width: 100%;
}

.wpcf7-form-control-wrap textarea:hover {
    background-color: transparent;
    box-shadow: 10px 10px 36px rgb(0,0,0,0.5), -13px -13px 23px rgba(255,255,255, 0.03), inset 14px 14px 70px rgb(0,0,0,0.2), inset -15px -15px 30px rgba(255,255,255, 0.04);
    border-color: rgba(255, 255, 255, 0.2);
    color: white;
}

.wpcf7-form-control-wrap textarea {
    background: #1c1f2f;
    overflow: hidden;
    border: 1px solid #2e344d;
    background-color: #1c1f2f;
    box-shadow: 10px 10px 36px rgb(0,0,0,0.5), -13px -13px 23px rgba(255,255,255, 0.03);
    border-radius: 5px;
    transition: all 0.3s ease-in-out 0s;
}

textarea {
    overflow: auto;
    resize: vertical;
}

.wpcf7 .wpcf7-form .contact-form-footer .wpcf7-submit {
    width: 100%;
    padding: 11px;
    margin: 0;
    line-height: 0;
}
.wpcf7-form .contact-form-footer .wpcf7-submit {
    background-color: #394050;
    color: #99a9b5;
    border: none;
    cursor: pointer;
    padding: 15px 40px;
    font-size: 14px;
    font-weight: 400;
    transition: all 0.5s;
    letter-spacing: 2px;
    color: rgba(255,255,255,.5);
    box-shadow: none;
    text-transform: uppercase;
    outline: none !important;
    background-color: #1c1f2f;
    border-radius: 5px;
    min-width: 140px;
    /* box-shadow: 10px 10px 36px rgb(0,0,0,0.5), -13px -13px 23px rgba(255,255,255, 0.03), inset 14px 14px 70px rgb(0,0,0,0.2), inset -15px -15px 30px rgba(255,255,255, 0.04); */
    box-shadow: 3px 9px 16px rgb(0,0,0,0.4), -3px -3px 10px rgba(255,255,255, 0.06), inset 14px 14px 26px rgb(0,0,0,0.3), inset -3px -3px 15px rgba(255,255,255, 0.05);
    border-width: 1px 0px 0px 1px;
    border-style: solid;
    border-color: #2e344d;
    transition: all 0.3s ease-in-out 0s;
}

.wpcf7-form input[type=submit] {
    height: 40px;
    line-height: 21px;
    padding: 10px 40px;
    font-size: 14px;
}

.posts li a {
    color: #99a9b5;
}

.wpcf7-form .contact-form-footer .wpcf7-submit:hover {
    box-shadow: 0 0px 20px rgba(84, 1, 74, 0.7);
    border-color: rgba(255, 6, 224, 0.61);
    background: linear-gradient(to right, rgba(255, 9, 9, 0.12941176470588237), #c000ffb5, rgba(255, 0, 94, 0.14));
    color: white;
}

img {
    border-style: none;
    height: auto;
    max-width: 100%;
    vertical-align: middle;
}
.widget_gallery a {
    display: inline-block;
}
footer .widget ul {
    list-style: none;
    margin-top: 5px;
}
.widget_gallery ul {
    padding-left: 0;
    display: table;
}

.widget_gallery li {
    display: inline-block;
    width: 33.33%;
    float: left;
    transition: all 0.5s;
    -webkit-transition: all 0.5s;
    -moz-transition: all 0.5s;
    -o-transition: all 0.5s;
    padding: 2px;
}

.widget_gallery.gallery-grid-4 li {
    width: 30%;
}


#waterdrop {
    height: 30px;
}

#waterdrop canvas {
    bottom: -70px !important;
}

.footer-site-info
{
  padding-top: 10px;
}


    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
        <div class="container">
            <!-- Logo aligned to the left -->
            <a class="navbar-brand" href="#">Travelix</a>
    
            <!-- Toggler for mobile view -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
    
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                    <li class="nav-item"><a class="nav-link" th:href="@{/showvisits}">FeedBack</a></li>
                    <li class="nav-item"><a class="nav-link" th:href="@{/attractions}">Places</a></li>
                    <li class="nav-item"><a class="nav-link" href="#footer">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="#features">Features</a></li>
                    <li class="nav-item"><a class="nav-link" href="#destinations">Destinations</a></li>
                    <!-- Admin Button -->
                    <li class="nav-item">
                        <a class="btn btn-warning nav-link" th:href="@{/admin/}">Admin</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    

    <!-- Hero Section -->
    <div class="hero">
        <h1>Discover the World</h1>
        <p>Your journey begins here</p>
        <a href="#features" class="btn btn-hero">Explore Now</a>
    </div>
    <section id="about" class="about">

        <section id="about" class="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 about-content">
                        <h2>About Travelix</h2>
                        <p>Travelix is your trusted partner in exploring the most beautiful destinations around the world. From easy bookings to affordable packages, we ensure a seamless experience for all travel enthusiasts.</p>
                        <a href="#" class="btn btn-about">Learn More</a>
                    </div>
                    <div class="col-md-6">
                        <img src="https://w0.peakpx.com/wallpaper/136/151/HD-wallpaper-world-travel-travel-dreams-dream-travel-destinations-travel.jpg" alt="About Travelix" class="about-image">
                    </div>
                </div>
            </div>
        </section>
    </section>
    <!-- Features Section -->
    <section id="features" class="features">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="feature-box">
                        <i class="fas fa-plane fa-3x mb-3"></i>
                        <h4>Easy Booking</h4>
                        <p>Book flights and hotels effortlessly.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-box">
                        <i class="fas fa-map-marker-alt fa-3x mb-3"></i>
                        <h4>Top Destinations</h4>
                        <p>Explore the most beautiful places worldwide.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature-box">
                        <i class="fas fa-wallet fa-3x mb-3"></i>
                        <h4>Affordable Prices</h4>
                        <p>Get the best deals on travel packages.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Popular Destinations Section -->
    
    <div class="container-lg">
        <div class="row">
            <div class="col-sm-12">			
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <h2>Customer <b>Testimonials</b></h2>
                    <!-- Carousel indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>   
                    <!-- Wrapper for carousel items -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="testimonial">
                                        <p>Mayur is a skilled developer with a passion for crafting innovative solutions. Dedicated and creative, he excels in problem-solving and delivering exceptional results in every project he undertakes.</p>
                                    </div>
                                    <div class="media">
                                        <img src="http://codesynergy.great-site.net/images/Mayur.png" class="mr-3" alt="">
                                        <div class="media-body">
                                            <div class="overview">
                                                <div class="name"><b>Mayur Patik</b></div>
                                                <div class="details">Developer</div>
                                                <div class="star-rating">
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                </div>
                                            </div>										
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="testimonial">
                                        <p>Tushar Mahajan is a talented developer known for his innovative approach and strong technical skills. He is passionate about coding and consistently delivers exceptional results in his projects.</p>
                                    </div>
                                    <div class="media">
                                        <img src="http://codesynergy.great-site.net/images/tushar.png" class="mr-3" alt="">
                                        <div class="media-body">
                                            <div class="overview">
                                                <div class="name"><b>Tushar Mahajan</b></div>
                                                <div class="details">Web Developer</div>
                                                <div class="star-rating">
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                </div>
                                            </div>										
                                        </div>
                                    </div>
                                </div>
                            </div>			
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="testimonial">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante.</p>
                                    </div>
                                    <div class="media">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmUnCnsARbaIu73GP3a6AnsVOr17gIkCoc6g&s" class="mr-3" alt="">
                                        <div class="media-body">
                                            <div class="overview">
                                                <div class="name"><b>Michael Holz</b></div>
                                                <div class="details">Web Developer / DevCorp</div>											
                                                <div class="star-rating">
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                </div>
                                            </div>										
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="testimonial">
                                        <p>Vestibulum quis quam ut magna consequat faucibu. Eget mi suscipit tincidunt. Utmtc tempus dictum. Pellentesque virra. Quis quam ut magna consequat faucibus quam.</p>
                                    </div>
                                    <div class="media">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRviRD5-NJ781r1WEytfypBvsra_GUYdli2oA&s" class="mr-3" alt="">
                                        <div class="media-body">
                                            <div class="overview">
                                                <div class="name"><b>Mary Saveley</b></div>
                                                <div class="details">Graphic Designer / MarsMedia</div>
                                                <div class="star-rating">
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                </div>
                                            </div>										
                                        </div>
                                    </div>
                                </div>
                            </div>			
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="testimonial">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante.</p>
                                    </div>
                                    <div class="media">
                                        <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMPEhASEBITFRUVFxgWFRYWFREVEBURFhYXFhUSExYaHiggGhwnHhgTITEhJSkrLi4uFx8zODMuNygtLisBCgoKDg0OGxAQGi0lICYvNy0tMi0tLy01Ni0rLi4tNS0tLy01LS0wLSs1Li0tNS0uLS0tLS0tLSsvLS0tLjctLf/AABEIANwA5QMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAABgcEBQIDCAH/xABIEAACAQMABQgFCQUECwAAAAAAAQIDBBEFBhIhMQcTIkFRYXGBMkJSkaFygpKisbLB0dIIFBYjYiRD4fAVM1NUY2Rzk8LD8f/EABoBAQADAQEBAAAAAAAAAAAAAAABAwQCBQb/xAAoEQEAAgIBAwMEAgMAAAAAAAAAAQIDERIEITETQVEFFGGhMuFSYtH/2gAMAwEAAhEDEQA/ALxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAfHLHEiem+UnRlm3GpdQlNepSUqss9j2E0vNoCWgqS95eLOOVStrip3vm6cX8W/ga2py/L1dHvzuF+FMC7QUrR5foevYTXya8X8HBG5sOXHR9TdVp3NLvcIzj9STfwAtEFEae5aLqhWatnY3FF74TVO5hPZz6NSEp5jJeGHxQseXyqsc/ZU5LrdOrKL8lKL+0C9wQDV3ld0beOMJ1JW83uUay2YN91RZj72iewmpJNNNPemt6a7UwOQAAAAAAAAAAAAAAAAAAAAAAABF9edeLbRFParPaqST5ujFrnJvtfsx7ZP48D5yha50tEW3OyxKrPMaFLO+c+uT7IRym34Li0eWtM6VrXlapXuJudSby2/hGK6orgl1Ab7XDlBvdKSkqtV06LzihTco0tnsn11H3y3diRFEAEAAAAAAAABYHJjyjVdF1YUa85TtJNKUW23Rzu5yl2JcXHhjvK/AHtmnNSScWmmk01wafBo5EO5Ir2VfRFjKXGMHS+bSnKnH4RRMQkAAAAAAAAAAAAAAAAAAA4zmoptvCSy31JLizkRLlSvKlPR1eFCLlWuNm2pRj6TnWey8fN235Aed+UPWeWlL2tWy+ai3ToRzujRi2k13y9J+PcRky9J0I0qkqcJKap9BzXozmt05R/pzlLuSfWYgQAAAAAAAAAAAAALQ5GdfZWVaFlcTbtq0lGntPdQqye5rshJtJrgm89p6LPEh691D0s73R9lXk8ynSjtvtqxWxN/SUglvgAAAAAAAAAAAAAAAAAAIhyqaSVpo64r4/mRi4UX60KtZc1tx71GUn4JkvKl/aMunGztKSfp18vvUIS/GSA8/AAIADeaN1Yq1aX7zWlG3tl/fVc4n/TRgltVJccJbu8iZiPKYjbRg2F1Wt49GhTnP/iVniT8KUHsxXi5GA3n/AOJfYSPgACAAAADur206apucXFVI7cM+tT2pQ2l3ZjL3AdJ6Q/Z/u9vRew/7qvUj4KWzP7ZM83l//s4v+x3i/wCY/wDVAJW4AAAAAAAAAAAAAAAAAABTn7SNFuhYT6o1akfOUE191lxlb8vljzui5Txvo1ac/BSbpv76A82AE15LNWFfXLqVY5o2+zKS6p1W8wpvtW5t+CXWc2tFY3KaxudQ3Oo+pFOlRekNJrFOMechSkt2wlnnKq687sQ687+ODW3uj9I6w1ufhS2KCzGjzjUKNOnuWI9cm8b2k+zqSLh0zouN2qdOqs0lJTnHqqOGNinJdcc9Jrr2UuDZsUsYS3JbkupLqSMnrTvfu0+lHj2VFZ8jlR4567px7VTpyl9aTj9hpdfNVrTRUKcI1atW4qb0pOEacKSe+bjFZbb3JZ7X1F757So9Gaqz07d1r+5coWsp4pJPFSpTh0YRj7MMLe+tt47TqmW0zu09oRfHERqsd1f6D0DcX8+btaUqjXFrChFds5vciRa16if6KtoVLmupV6stmnSpL+WsLM5TnLe8LCwkt8kXvoexp28Y0qMI04RW6MVhLv733srTlusatzdaMoUYucqkaihFdcnKGfBYSeew6rmm1tezm2KK137qfN5oTVG9vUnb21SUX67xCl47cmk/LJdGpvJpbWMY1K8Y16/Fyks0oPspwf3nv8CdC3Uf4lcHyqXVTkeUJRqaRqRnjeqNNvYf/Um0m/BJeJgcvGi9ipZVoRxDm3Q3LEY7D2oRSXDdKWPAuk1esug6WkLepb1k9mXCS9KE1vjOPen7966yqMs8tysnFHHUPKp6I/Z3t9nR1aft3EvqwhEofWDQ9SxuKtvWXSpvGV6MovfGce5rDPSnIzZczoizzxmp1H8+pJr4bJuZE3AAAAAAAAAAAAAAAAAAA0WudtTubO6tpzjF1aU4xz7bXQePlbJvJPcV7e3MpzlJve3l/l4FWXJwW4sfPy80Si08NYa3Nd63NF88kFsoaNpyXGpOpN97U3TXwgirOUPRDtruckuhWzUh2bT/ANZHylv8JItTkhuFPRtKK406lWL85uf2SRxmndImHWKNXmJTQ+AGNpca1NTjKL4STi+p4aw94p01FKMUkkkkksJJbkkuo5ADttvSOVaxhOrSrSWZ01NQfYqmztfdRxtvSMsmAAAAA+NgUFy3dLSUVHjzFNfO26mPwPQWrkKdpa2lttxzSo06b39cIKLb78o8/aeX7/rAqa3qNWEH19GjHbqL6s0Wo7mec5fh1eGDXOThWIZ4xxe0ysVM+mr1frOdPf1cPBrODaF1Z3G1Nq8Z0AA6cgAAAAAAAAAAAAD4yEab0c6U3u6Ly4vu7PFE4OuvQjUTjNJp9v2leTHzhZjycJU/rboFaQt3S3KpHM6MnwVTHot9SfB+T6iPcjF7KhWvLGsnGe6ooy3NTh0Ki8cOD8i4b3V3GZU5cE3h8fBNcSI3OrsK1xSuqb5u4pNNTS3VKfCVKqutOLazxXwM07rE0s0TEWnnVJQfT4ULAAAdtt6RlmJbekZYAAEgddxLEZNdn+Udh03T6L8gIFqxqjCxlO7rvnLqo5Sk16FN1G3KFPt4tOT49xu6NF1Zblxe/wA3wRvbXR3P5W7Cxx37+43ljo6FLgsvt/JdRfFLXncuLZK441Bou15qCT48X+RmAGuI1GmOZ3O5AASgAAAAAAAAAAAAAAAB8ZELm35mtKPU/R8HvX5EwNbpnR/PRzH04749/wDSVZqcq9luG/Ge7SA405547mtzXWmcjA1gAA7bb0jLMS39IyyQAAAxryW5IyG8DR9q6stuS6K4d+Oo6pWbTqETaKxuWx0Tb7FNZ4y6T8+C9xmgHoRGo0wzO52AAlAAAAAAAAAAAAAAAAAAAAAA1ukdGKo9uG6f1Zd0vzNNODi8STT7H9q7USs6q1CM1iST/DwfUUZMMW7x5XUyzXtKLg29fQ/sS8pfmaNXEeGceJlvSa+Wit4t4ZVv6RlmDb1Y59Je9HfK6gvWXlv+w5dO8+SeOJ2WVLnltReFnG9PO7uNhQsox38X2v8ABcEW0w2srtlrVgULGVTDnmMOz1pfkjbwgopJLCRyBrpSKx2Zr3m3kAB24AAAAAAAAAAAAAAAAAAAAAAAAAY99ewoQc6slGK4t/Yu19xB9LcoT3q2ppL26n2qKe7zZbjw3yfxhxa9a+Wdrtp2va1aMYSjGnJZk0k6jSliS38FjGMd51J06yzCcX3pp+9EF0hpKd1Pnak1NtLDWNnZXBRxuwYxsy/Ta5aVjepj8K8fVzSZ7bhYVOwm3ux8TIVnGG+rOKS70l5tlbqb7X72cWZ4+jfN/wBf2un6h/r+08r6281Wo07eUJU20qmU9nfJLoy7lnuJ6UMSfROv9eOFLm60Y9F9U1jq2luz4o0ZOh41rXH7ftRXqN2mbLTBptBayUbzdB7M+unLCn3tdUl4G5MFqzWdTC+Jie8AAOUgAAAAAAAAAAAAAAAAAAAAAYmlNIQtqU6tR4jFebfVFd7Msq/lA0vz1fmYvoUXh9jqtdJ+XD3l/T4fVvr293GS/GNtPp3TNS8qOdR4S9CC9GEe7v7WQDWbSc5SlRScYrjnc59/yftJNfVnTpznFJuMW0n14WSC3+kKldp1GnjgksRXh/ibusvFKRjr2/4z4Ym1uUrO5FNFUbm3vlWgpYqwSe9Sj0G3stb1xJhcahUm/wCXWnHukoyXwwRLkDul/b6PX/KqeXSg/wDx95bpgpnyU/jK+1Kz5hBnqBL/AHhf9t/qOylqAvWuH82GH8ZE1BZ95m+f1Dn0qfCIaW1Vt6FneNRcpqhVxOby0+blvilhLxxk8/aOvp0JKcH4r1ZLsZ6S19u1R0dfTf8AsZxXyprYivfJHmelUcGpReGt6fYymclptyme7uKxEa0seyuW1CpHag90lndOL/MtTUzWX97jzdXCrRXgqkfaXf2r/KpXVzSVS4jPnEujhKS3Nt8U17veb+xu5UKkKtN4lB5X4p9zWV5nrXpXqMUT7+zLFpx2XmDF0bexuKVOrDhOKfhnin3p5XkZR40xqdS2gAIAAAAAAAAAAAAAAAAAAAYmlbtUKNWq/UhKXi0ty9+Ckpzcm23lttt9re9stHlEuNizaXrzjHyztP7pVh63QU1SbfLJ1E99DRX+lrPmKs4dWcx74vh+XkWAajWTR3PU9qK6cN67XHrj+K/xLOsw+pTceYc4b8bMfks0srTSVByeI1k6Et+5c404N/PjD3now8jpvim0+Ka3NPqafaentTdOLSFnQuPWlHFRdlWPRmvesruaPFbG6ACJQrLl00tzdtQtYvpVp7cl181S3r67h9FlKEk5RNO/v9/WqxeacP5VLsdODfSXjJzfg0YurGjudnzkl0IPyc+peW5+46x0m9orBa3GNykehbPmKMYv0n0pfKfFeW5eRnAH0FaxWIrDz5nc7WJyZX21TrUW/QkpR+TPOUvNP6RNirOTu42LxR9uEo+a6a+6y0zxuspxyz+e7bhndAAGVaAAAAAAAAAAAAAAAAAACFcp9T+VQj21G/dF/mV0XJp7QdK9jBVXNbDbWy0nv3POU+w038BWvtVvpQ/Sel03VY8eOKyzZcVrW3CtAWX/AAFa+1W+lD9I/gK19qt9KH6TR97i/Kv0bKF1l0TzcnVguhJ9JL1ZP8H9pLORTWHmLmdnN9C46UMvhcRS3L5UU14wj2lmVOT60knGTqtPc05Qw12eiaOlyT2VKcZ06l1GUJKUWqlPMZReYtdDqZ5mecc23RpxxbWrJ+RHlR1i/cLGew8Vq+aVLHFZXTqfNjnzaJtzK7yI63ai2+kqsKlxUr9COzGMJwUEm8tpOL3vdl9y7Cl3p520dYyrTjTh5vqjFdbJ9aW8aUIwgsJe99rfeWHovkzsqEcQdbfvbc4OT7PVM3+ArX2q30ofpN3TZcWKNz5lRkpe09vCtAWX/AVr7Vb6UP0j+ArX2q30ofpNX32L8qvQshup88Xts/6mvfCSLhIzo3U23oVYVYuq5QeVmUcZ78RJMYOry1yWia/DRipNY1IADKtAAAAAAAAf/9k=" class="mr-3" alt="">
                                        <div class="media-body">
                                            <div class="overview">
                                                <div class="name"><b>Martin Sommer</b></div>
                                                <div class="details">SEO Analyst / RealSearch</div>
                                                <div class="star-rating">
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                </div>
                                            </div>										
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="testimonial">
                                        <p>Vestibulum quis quam ut magna consequat faucibu. Eget mi suscipit tincidunt. Utmtc tempus dictum. Pellentesque virra. Quis quam ut magna consequat faucibus quam.</p>
                                    </div>
                                    <div class="media">
                                        <div class="media-left d-flex mr-3">
                                            <img src="data:image/jpeg;base64,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" alt="">										
                                        </div>
                                        <div class="media-body">
                                            <div class="overview">
                                                <div class="name"><b>John Williams</b></div>
                                                <div class="details">Web Designer / UniqueDesign</div>
                                                <div class="star-rating">
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                </div>
                                            </div>										
                                        </div>
                                    </div>
                                </div>
                            </div>			
                        </div>
                    </div>
                    <!-- Carousel controls -->
                    <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                        <i class="fa fa-chevron-left"></i>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                        <i class="fa fa-chevron-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
      
    <section id="destinations" class="destinations">
        <div class="container">
            <h2 class="text-center mb-5">Popular Destinations</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card destination-card">
                        <img src="https://cdn.pixabay.com/photo/2020/01/21/08/11/indian-temple-4782312_1280.jpg" alt="Paris">
                        <div class="card-body">
                            <h5 class="card-title">Prem Mandir</h5>
                            <p class="card-text">Prem Mandir is a spiritual temple located in Vrindavan.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card destination-card">
                        <img src="https://i0.wp.com/handluggageonly.co.uk/wp-content/uploads/2017/01/Hand-Luggage-Only-8.jpg?w=1600&ssl=1" alt="Bali">
                        <div class="card-body">
                            <h5 class="card-title">Kedarnath</h5>
                            <p class="card-text">Kedarnath is one of the holiest pilgrimage sites for Hindus.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card destination-card">
                        <img src="https://www.fabhotels.com/blog/wp-content/uploads/2024/01/e7237302-600x400-1.jpg" alt="New York">
                        <div class="card-body">
                            <h5 class="card-title">Ram Mandir</h5>
                            <p class="card-text">The Ram Mandir is a symbol of devotion to Lord Ram.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer -->
    <div class="page-wrapper">
        <div id="waterdrop"></div>
        <footer>
          <div class="footer-top" id ="footer">
            <div class="pt-exebar">
    
            </div>
            <div class="container">
              <div class="row">
                <div class="col-lg-3 col-md-12 col-sm-12 footer-col-3">
                  <div class="widget footer_widget">
                    <h5 class="footer-title">Address</h5>
                    <div class="gem-contacts">
                      <div class="gem-contacts-item gem-contacts-address">Corporate Office :<br> DN College Faizpur
                        DN College Faizpur
                      </div>
                      <div class="gem-contacts-item gem-contacts-phone"><i class="fa fa-phone" aria-hidden="true"></i> Phone: <a href="">+91-8530371218</a></div>
    
                      <div class="gem-contacts-item gem-contacts-address mt-2">Reg. Office :<br> 
                        DN College Faizpur</div>
                      <div class="gem-contacts-item gem-contacts-phone"><i class="fa fa-phone" aria-hidden="true"></i> Phone: <a>+91 8530371218</a></div>
    
                    </div>
                  </div>
    
                </div>
                <div class="col-12 col-lg-6 col-md-6 col-sm-12">
                  <div class="row">
                    <div class="col-6 col-lg-6 col-md-6 col-sm-6">
                      <div class="widget footer_widget">
                        <h5 class="footer-title">Recent News</h5>
                        <ul class="posts  styled">
                          <li class="clearfix gem-pp-posts">
                            <div class="gem-pp-posts-text">
                              <div class="gem-pp-posts-item">
                                <a href="#">Want to start Your Own Play School.
                                </a>
                              </div>
                              <div class="gem-pp-posts-date">Call +91-8530371218</div>
                            </div>
                          </li>
                          <li class="clearfix gem-pp-posts">
                            <div class="gem-pp-posts-text">
                              <div class="gem-pp-posts-item">
                                <a href="#">Now we are in  DN College Faizpur
                                </a>
                              </div>
                              <div class="gem-pp-posts-date">Call +91-8530371218, +91-8637729558</div>
                            </div>
                          </li>
                          <li class="clearfix gem-pp-posts">
                            <div class="gem-pp-posts-text">
                              <div class="gem-pp-posts-item">
                                <a href=""> DN College Faizpur
                                </a>
                              </div>
                              <div class="gem-pp-posts-date">Call +91-8530371218, +91-8637729558</div>
                            </div>
                          </li>
    
                        </ul>
                      </div>
                    </div>
                    <div class="col-6 col-lg-6 col-md-6 col-sm-6">
                      <div class="widget">
                        <h5 class="footer-title">Email Us</h5>
                        <div class="textwidget">
                          <div role="form" class="wpcf7" id="wpcf7-f4-o1" lang="en-US" dir="ltr">
    
                            <form method="post" class="wpcf7-form" novalidate="novalidate">
    
                              <div class="contact-form-footer">
                                <p><span class="wpcf7-form-control-wrap your-first-name"><input type="text" name="your-first-name" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Your name"></span></p>
                                <p><span class="wpcf7-form-control-wrap your-email_1"><input type="email" name="your-email_1" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-email" aria-invalid="false" placeholder="Your email"></span></p>
                                <p><span class="wpcf7-form-control-wrap your-message"><textarea name="your-message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" placeholder="Your message"></textarea></span></p>
                                <div><input type="submit" value="Send" class="wpcf7-form-control wpcf7-submit"><span class="ajax-loader"></span></div>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-lg-3 col-md-5 col-sm-12 footer-col-4">
                  <div class="widget widget_gallery gallery-grid-4">
                    <h5 class="footer-title">Our Gallery</h5>
                       <img src="https://static.tnn.in/thumb/msid-107082237,thumbsize-1808893,width-1280,height-720,resizemode-75/107082237.jpg" alt="">
    
                     
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="footer-bottom">
            <div class="container">
              <div class="row">
    
                <div class="col-md-3">
                  <div class="footer-site-info">2024 © <a href="https://codesynergy.great-site.net/?i=1" target="_blank">designed By Tech Solutions </a></div>
                </div>
    
                <div class="col-md-6">
                  <nav id="footer-navigation" class="site-navigation footer-navigation centered-box" role="navigation">
                    <ul id="footer-menu" class="nav-menu styled clearfix inline-inside">
                      <li id="menu-item-26" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-26"><a href="#">Support</a></li>
                      <li id="menu-item-27" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-27"><a href="#">Contact Us</a></li>
                      <li id="menu-item-28" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-28"><a href="#">Disclaimer</a></li>
                      <li id="menu-item-29" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-29"><a href="#">Add more</a></li>
                    </ul>
                  </nav>
                </div>
    
                <div class="col-md-3">
                  <div id="footer-socials">
                    <div class="socials inline-inside socials-colored">
    
                      <a href="#" target="_blank" title="Facebook" class="socials-item">
                        <i class="fab fa-facebook-f facebook"></i>
                      </a>
                      <a href="#" target="_blank" title="Twitter" class="socials-item">
                        <i class="fab fa-twitter twitter"></i>
    
                      </a>
                      <a href="#" target="_blank" title="Instagram" class="socials-item">
                        <i class="fab fa-instagram instagram"></i>
                      </a>
                      <a href="#" target="_blank" title="YouTube" class="socials-item">
                        <i class="fab fa-youtube youtube"></i>
                      </a>
                      <a href="#" target="_blank" title="Telegram" class="socials-item">
                        <i class="fab fa-telegram telegram"></i>
                      </a>
                    </div>
                  </div>
                </div>
    
              </div>
            </div>
          </div>
        </footer>
      </div>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
      <script src="https://daniellaharel.com/raindrops/js/raindrops.js"></script>
    
     <script> jQuery('#waterdrop').raindrops({color:'#1c1f2f', canvasHeight:150, density: 0.1, frequency: 20});
    </script>
     <script>
        // Add a class when the user scrolls down
        window.addEventListener('scroll', function() {
    console.log(window.scrollY); // See scroll position
    const navbar = document.querySelector('.navbar');
    if (window.scrollY > 50) {
        navbar.classList.add('scrolled');
    } else {
        navbar.classList.remove('scrolled');
    }
});


     </script>
    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
