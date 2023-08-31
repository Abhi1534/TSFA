<%@ Page Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TSFA.Index" Title=":.TSFA.:" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .testimonial {
            padding: 70px 30px 50px;
            margin: 50px 30px 30px;
            border: 1px solid #20B2AA;
            position: relative;
        }

            .testimonial .pic {
                width: 100px;
                height: 100px;
                border-radius: 50%;
                border: 5px solid #37C7C2;
                overflow: hidden;
                margin: 0 auto;
                position: absolute;
                top: -50px;
                left: 0;
                right: 0;
            }

                .testimonial .pic img {
                    width: 100%;
                    height: auto;
                }

            .testimonial .description {
                font-size: 15px;
                color: #5e595b;
                line-height: 27px;
                text-align: center;
                margin: 0;
                position: relative;
            }

                .testimonial .description:before {
                    content: "\f10d";
                    font-family: "Font Awesome 5 Free";
                    font-weight: 900;
                    font-size: 25px;
                    color: #d7d7d7;
                    position: absolute;
                    top: 0;
                    left: -2px;
                }

            .testimonial .title {
                display: inline-table;
                padding: 10px;
                margin: 0 auto;
                background: #fff;
                border: 1px solid #20B2AA;
                font-size: 15px;
                font-weight: 700;
                color: #c7373c;
                text-transform: uppercase;
                position: absolute;
                bottom: -22px;
                left: 0;
                right: 0;
            }

            .testimonial .post {
                font-size: 12px;
                color: #671a36;
            }

        .owl-theme .owl-controls {
            width: 100%;
            height: 50px;
            opacity: 1;
            position: absolute;
            top: 38%;
        }

            .owl-theme .owl-controls .owl-buttons div {
                width: 50px;
                height: 50px;
                line-height: 40px;
                border-radius: 0;
                background: transparent;
            }

        .owl-prev {
            position: absolute;
            left: -5%;
        }

        .owl-next {
            position: absolute;
            right: -5%;
        }

            .owl-prev:after,
            .owl-next:after {
                content: "\f104";
                font-family: "Font Awesome 5 Free";
                font-weight: 900;
                font-size: 30px;
                color: #c7373c;
                opacity: 1;
            }

            .owl-next:after {
                content: "\f105";
            }

        @media only screen and (max-width: 479px) {
            .testimonial {
                padding: 70px 10px 30px;
            }

                .testimonial .description:before {
                    top: -20px;
                }

                .testimonial .title {
                    font-size: 12px;
                }

                .testimonial .post {
                    font-size: 11px;
                }
        }
    </style>
    <style>
        marquee {
            font-family: 'Montserrat' !important;
            margin-top: 22px;
            min-height: 340px;
        }
    </style>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto:100,300,400');

        .one {
            font-family: 'Montserrat';
            font-size: 18px;
            font-weight: 600;
            text-shadow: 1px 0px 3px #b7161614;
            overflow: hidden;
            animation: bg 5s linear infinite;
        }

        .dropping-texts {
            display: inline-block;
            width: 135px;
            text-align: left;
            height: 21px;
            vertical-align: -2px;
        }

            .dropping-texts > div {
                font-size: 0px;
                opacity: 0;
                margin-left: -30px;
                position: absolute;
                font-weight: 300;
                box-shadow: 0px 60px 25px -20px rgba(0,0,0,0.5);
            }

                .dropping-texts > div:nth-child(1) {
                    animation: roll 5s linear infinite 0s;
                }

                .dropping-texts > div:nth-child(2) {
                    animation: roll 5s linear infinite 1s;
                }

                .dropping-texts > div:nth-child(3) {
                    animation: roll 5s linear infinite 2s;
                }

                .dropping-texts > div:nth-child(4) {
                    animation: roll2 5s linear infinite 3s;
                }

        @keyframes roll {
            0% {
                font-size: 0px;
                opacity: 0;
                margin-left: -30px;
                margin-top: 0px;
                transform: rotate(-25deg);
            }

            3% {
                opacity: 1;
                transform: rotate(0deg);
            }

            5% {
                font-size: inherit;
                opacity: 1;
                margin-left: 0px;
                margin-top: 0px;
            }

            20% {
                font-size: inherit;
                opacity: 1;
                margin-left: 0px;
                margin-top: 0px;
                transform: rotate(0deg);
            }

            27% {
                font-size: 0px;
                opacity: 0.5;
                margin-left: 20px;
                margin-top: 100px;
            }

            100% {
                font-size: 0px;
                opacity: 0;
                margin-left: -30px;
                margin-top: 0px;
                transform: rotate(15deg);
            }
        }

        @keyframes roll2 {
            0% {
                font-size: 0px;
                opacity: 0;
                margin-left: -30px;
                margin-top: 0px;
                transform: rotate(-25deg);
            }

            3% {
                opacity: 1;
                transform: rotate(180deg);
            }

            5% {
                opacity: 1;
                margin-left: 0px;
                margin-top: 0px;
                transform: rotate(0deg);
            }

            30% {
                font-size: inherit;
                opacity: 1;
                margin-left: 0px;
                margin-top: 0px;
                transform: rotate(0deg);
            }

            37% {
                font: size 0px;
                opacity: 0;
                margin-left: -1000px;
                margin-top: -800px;
            }

            100% {
                font-size: 0px;
                opacity: 0;
                margin-left: -30px;
                margin-top: 0px;
                transform: rotate(15deg);
            }
        }

        @keyframes bg {
            0% {
                color: #ffc600;
            }

            3% {
                color: #ffc600;
            }

            20% {
                color: #ffc600;
            }

            23% {
                color: #000;
            }

            40% {
                color: #000;
            }

            43% {
                color: #000;
            }

            60% {
                color: #000;
            }

            63% {
                color: #fff;
            }

            80% {
                color: #fff;
            }

            83% {
                color: #fff;
            }

            100% {
                color: #fff;
            }
        }

        .main-menu-wrapper a {
            text-transform: uppercase;
        }

        .btn-group {
            margin-top: 6px;
        }

        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

            /* Style the buttons inside the tab */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
                font-size: 17px;
            }

                /* Change background color of buttons on hover */
                .tab button:hover {
                    background-color: #ddd;
                }

                /* Create an active/current tablink class */
                .tab button.active {
                    background-color: #1f3e5e;
                    font-weight: 600;
                    color: #fff;
                }

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
        }

        .card-body {
            text-align: center;
        }

        .cards {
            display: flex !important;
        }

        .card {
            margin: 15px 20px;
        }


        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }



        /* Fading animation */
        .fade {
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @keyframes fade {
            from {
                opacity: .4;
            }

            to {
                opacity: 1;
            }
        }

        /* On smaller screens, decrease text size */
        @media only screen and (max-width: 300px) {
            .text {
                font-size: 11px;
            }
        }

        div#dots {
            display: none;
        }

        img.card-img-top {
            height: 60%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div id="carousel-example-generic1" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic1" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic1" data-slide-to="1" class=""></li>
                <li data-target="#carousel-example-generic1" data-slide-to="2" class=""></li>
                <li data-target="#carousel-example-generic1" data-slide-to="3" class=""></li>
                <li data-target="#carousel-example-generic1" data-slide-to="4" class=""></li>
                <li data-target="#carousel-example-generic1" data-slide-to="5" class=""></li>
                <%--<li data-target="#carousel-example-generic1" data-slide-to="6" class=""></li>--%>
                <%--<li data-target="#carousel-example-generic1" data-slide-to="7" class=""></li>
<li data-target="#carousel-example-generic1" data-slide-to="8" class=""></li>
<li data-target="#carousel-example-generic1" data-slide-to="9" class=""></li>
<li data-target="#carousel-example-generic1" data-slide-to="10" class=""></li>
<li data-target="#carousel-example-generic1" data-slide-to="11" class=""></li>
<li data-target="#carousel-example-generic1" data-slide-to="12" class=""></li>--%>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="Mslides/Eye View.jpg" />
                </div>
                <div class="item">
                    <img src="Mslides/Main Building.jpg" />
                </div>
                <div class="item">
                    <img src="Mslides/New building.jpg" />
                </div>
                <div class="item">
                    <img src="Mslides/FRO Hostel.JPG" />
                </div>
                <div class="item">
                    <img src="Mslides/DSC_2019.JPG" />
                </div>
                <div class="item">
                    <img src="Mslides/DSC_2527.JPG" />
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic1" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic1" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>

    <a id="maincontent"></a>
    <section>
<div class="container">
<div class="row">
<!-- start about left section -->
<div class="col-lg-7 col-md-12 sm-margin-30px-bottom">
<div class="section-heading title-style5 left half">
<span>WELCOME TO </span>
<h2 class=" font-weight-600">TELANGANA STATE FOREST ACADEMY</h2>
</div>

<p>The “State Institute of Forestry Training” (SIFT) established in 1987 was renamed as A.P. Forest Academy in January 2001 and 
subsequently as Telangana State Forest Academy w.e.f. 2nd June 2014. 
The Academy is acting as a National level centre of excellence for training the personnel of Forest Department, 
representatives of NGOs and VanaSamrakshanaSamithis (VSS) on various aspects of Forestry and Allied subjects</p>
<a href="AboutUs.aspx" class="butn theme medium"><span>Read More..</span></a>
</div>
<!-- end about left section -->

<!-- start about right section -->
<div class="col-lg-5 col-md-12">
<div class="padding-ten-all xs-padding-eight-all bg-theme height-100 h_242px">
<div><i class="fa fa-calendar fa-3x" aria-hidden="true" style="color:green"></i> </div>
<h4 class="font-size24 sm-font-size20 xs-font-size18 text-black margin-10px-bottom font-weight-500">Ongoing/Upcoming Training Program</h4>


<div> <marquee id="externalmarquee4" scrolldelay="91" onmouseout="this.scrollAmount=1" onmouseover="this.scrollAmount=0" style="height:175px; border:0px solid black;padding:1px" scrollamount="1" direction="up">
<div class="ne">
<ul>
    <asp:Repeater runat="server" ID="rp_Latestnews">
    <itemtemplate> 
<li><img src="images/new-flash.gif"><a href="LatestNews.aspx"><%# Eval("LatestNewsName")%></a></li>
     </itemtemplate>
</asp:Repeater>

</ul>
</div></marquee></div>
<a href="LatestNews.aspx" class="butn small theme white-hover"><span>Read More</span></a>
</div>
<div class="separator-line-horrizontal-medium-light bg-white margin-15px-top"></div>
</div>



</div>

</div>
</div>
</section>




    <section class="bg-success">
<div class="container">
<div class="section-heading"><h2> MESSAGE'S</h2></div>
<div class="row">
<div class="col-md-offset-2 col-md-8">
<div id="testimonial-slider" class="owl-carousel">
   
    <asp:Repeater runat="server" ID="rpt_messages">
    <itemtemplate> 
<div class="testimonial">
<div class="pic">
    <asp:Image ImageUrl='<%# Eval("Guestphoto")%>' runat="server" />
<%--<img src="images/Political/Allola-Indrakaran-Reddy.jpg" alt="">--%>
</div>
<p style="text-align:justify"> <i class="fa fa-quote-left" aria-hidden="true"></i> <%# Eval("Description")%></p>
<h5 class="title"><%# Eval("GuestName")%><span class="post"> <%# Eval("Guestdesignation")%></span></h5>
</div>
    </itemtemplate>
</asp:Repeater>    

              
</div>
</div>
</div>
</div>
</section>


    <section class="bg-grey">
<div >
<div class="section-heading"><h2>Our Facilities</h2></div>


    <asp:Repeater runat="server" ID="rp_facilities">
    <Itemtemplate>
<div class="col-xs-12 col-sm-7 col-md-4">
<div id="carousel-example-generic12" class="carousel slide" data-ride="carousel">
<%--<ol class="carousel-indicators">

<li data-target="#carousel-example-generic12" data-slide-to="1" class="active"></li>

</ol>--%>

<div class="carousel-inner">

<div class="item active"><img alt=""  src='<%# Eval("Imgfilepath")%>' height="300px!important" class="modelImage" data-src='<%# Eval("Imgfilepath")%>'></div>

</div>

<%--<a class="left carousel-control" href="#carousel-example-generic12" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span></a>
<a class="right carousel-control" href="#carousel-example-generic12" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span></a>--%>
<div class="details text-center" style="width:300px">

<h4><a href="FacilityView.aspx?ID=<%# Eval("pk")%>"><%# Eval("facilityName")%></a></h4>
</div>
</div> 
</div>

        </Itemtemplate>
</asp:Repeater>
<div class="clear-both"></div>			
<br>
<br>



<div class="section-heading"><span class="badge"><a href="#"> View All </a></span></div>
</div>
</section>



   <%-- <section>
<div class="container">
<div class="row">

<div class="col-lg-6 sm-margin-20px-bottom blog-style1">
<div class="item text-center">
<div class="content">
<h5 class="margin-15px-bottom mn"><a href="#">Video Gallery</a></h5>

<div class="post-img publication-hm-page">
		<a href="https://www.youtube.com/watch?v=XF4MWDVJ878" target="_blank">
		<img src="Img_Activities/TSFA_Video.jpg" alt="publication" style="width:auto;height:290px;"></a>			
        </div>
        <br/>


<div class="section-heading"><span class="badge"><a href="#">View All Gallery</a></span>
</div>
</div>
</div>
</div>

<div class="col-lg-6 sm-margin-20px-bottom blog-style1">
<div class="item text-center">

<div class="content pb_18px">

<h5 class="margin-15px-bottom mn"><a href="publication">Publications</a></h5>
<div class="post-img publication-hm-page">
		<a href="Documents/cefnarm Broucher.pdf" target="_blank">
		<img src="Img_Activities/Broucher.jpg" alt="publication" style="width:auto;height:290px;"></a>			
        </div>
<br>
<div class="section-heading"><span class="badge"><a href="publication">View All </a></span>
</div>
</div>
</div>
</div>
</div>
</div>
</section>--%>

</asp:Content>
