<%@ Page Title="" Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="Facilityviews.aspx.cs" Inherits="TSFA.Facilityviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto');

        #pnl_facilitydetails {
            max-width: 100%;
        }

        *, *:before, *:after {
            max-width: 100%;
        }


        body {
            font-family: 'Roboto', sans-serif;
        }

        * {
            margin: 0;
            padding: 0;
        }

        i {
            margin-right: 10px;
        }
        /*----------bootstrap-navbar-css------------*/
        .navbar-logo {
            padding: 15px;
            color: #fff;
        }

        .navbar-mainbg {
            background: linear-gradient(45deg, #3bade3 0%, #576fe6 25%, #9844b7 51%, #95909f 220%);
            /*background-color: #5161ce;*/
            padding: 0px;
        }

        #navbarSupportedContent {
            overflow: hidden;
            position: relative;
        }

            #navbarSupportedContent ul {
                padding: 0px;
                margin: 0px;
            }

                #navbarSupportedContent ul li a i {
                    margin-right: 10px;
                }

            #navbarSupportedContent li {
                list-style-type: none;
                float: left;
            }

            #navbarSupportedContent ul li a {
                color: rgba(255,255,255,0.5);
                text-decoration: none;
                font-size: 15px;
                display: block;
                padding: 10px 16px;
                transition-duration: 0.6s;
                transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
                position: relative;
            }

            #navbarSupportedContent > ul > li.active > a {
                color: #5161ce;
                background-color: transparent;
                transition: all 0.7s;
            }

            #navbarSupportedContent a:not(:only-child):after {
                content: "\f105";
                position: absolute;
                right: 20px;
                top: 10px;
                font-size: 14px;
                font-family: "Font Awesome 5 Free";
                display: inline-block;
                padding-right: 3px;
                vertical-align: middle;
                font-weight: 900;
                transition: 0.5s;
            }

            #navbarSupportedContent .active > a:not(:only-child):after {
                transform: rotate(90deg);
            }

        .hori-selector {
            display: inline-block;
            position: absolute;
            height: 100%;
            top: 0px;
            left: 0px;
            transition-duration: 0.6s;
            transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
            background-color: #fff;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            margin-top: 10px;
        }

            .hori-selector .right,
            .hori-selector .left {
                position: absolute;
                width: 25px;
                height: 25px;
                background-color: #fff;
                bottom: 10px;
            }

            .hori-selector .right {
                right: -25px;
            }

            .hori-selector .left {
                left: -25px;
            }

                .hori-selector .right:before,
                .hori-selector .left:before {
                    content: '';
                    position: absolute;
                    width: 50px;
                    height: 50px;
                    border-radius: 50%;
                    background: linear-gradient(45deg, #3bade3 0%, #576fe6 25%, #9844b7 51%, #95909f 220%);
                }

            .hori-selector .right:before {
                bottom: 0;
                right: -25px;
            }

            .hori-selector .left:before {
                bottom: 0;
                left: -25px;
            }


        @media(min-width: 992px) {
            .navbar-expand-custom {
                -ms-flex-flow: row nowrap;
                flex-flow: row nowrap;
                -ms-flex-pack: start;
                justify-content: flex-start;
            }

                .navbar-expand-custom .navbar-nav {
                    -ms-flex-direction: row;
                    flex-direction: row;
                }

                .navbar-expand-custom .navbar-toggler {
                    display: none;
                }

                .navbar-expand-custom .navbar-collapse {
                    display: -ms-flexbox !important;
                    display: flex !important;
                    -ms-flex-preferred-size: auto;
                    flex-basis: auto;
                }
        }


        @media (max-width: 991px) {
            #navbarSupportedContent ul li a {
                padding: 12px 30px;
            }

            .hori-selector {
                margin-top: 0px;
                margin-left: 10px;
                border-radius: 0;
                border-top-left-radius: 25px;
                border-bottom-left-radius: 25px;
            }

                .hori-selector .left,
                .hori-selector .right {
                    right: 10px;
                }

                .hori-selector .left {
                    top: -25px;
                    left: auto;
                }

                .hori-selector .right {
                    bottom: -25px;
                }

                .hori-selector .left:before {
                    left: -25px;
                    top: -25px;
                }

                .hori-selector .right:before {
                    bottom: -25px;
                    left: -25px;
                }
        }
    </style>
    <script>        // ---------Responsive-navbar-active-animation-----------


        function test() {
            var tabsNewAnim = $('#navbarSupportedContent');
            var selectorNewAnim = $('#navbarSupportedContent').find('li').length;
            var activeItemNewAnim = tabsNewAnim.find('.active');
            var activeWidthNewAnimHeight = activeItemNewAnim.innerHeight();
            var activeWidthNewAnimWidth = activeItemNewAnim.innerWidth();
            var itemPosNewAnimTop = activeItemNewAnim.position();
            var itemPosNewAnimLeft = activeItemNewAnim.position();
            $(".hori-selector").css({
                "top": itemPosNewAnimTop.top + "px",
                "left": itemPosNewAnimLeft.left + "px",
                "height": activeWidthNewAnimHeight + "px",
                "width": activeWidthNewAnimWidth + "px"
            });
            $("#navbarSupportedContent").on("click", "li", function (e) {
                $('#navbarSupportedContent ul li').removeClass("active");
                $(this).addClass('active');
                var activeWidthNewAnimHeight = $(this).innerHeight();
                var activeWidthNewAnimWidth = $(this).innerWidth();
                var itemPosNewAnimTop = $(this).position();
                var itemPosNewAnimLeft = $(this).position();
                $(".hori-selector").css({
                    "top": itemPosNewAnimTop.top + "px",
                    "left": itemPosNewAnimLeft.left + "px",
                    "height": activeWidthNewAnimHeight + "px",
                    "width": activeWidthNewAnimWidth + "px"
                });
            });
        }
        $(document).ready(function () {
            setTimeout(function () { test(); });
        });
        $(window).on('resize', function () {
            setTimeout(function () { test(); }, 500);
        });
        $(".navbar-toggler").click(function () {
            $(".navbar-collapse").slideToggle(300);
            setTimeout(function () { test(); });
        });



        // --------------add active class-on another-page move----------
        jQuery(document).ready(function ($) {
            // Get current path and find target link
            var path = window.location.pathname.split("/").pop();

            // Account for home page with empty path
            if (path == '') {
                path = 'index.html';
            }

            var target = $('#navbarSupportedContent ul li a[href="' + path + '"]');
            // Add active class to target link
            target.parent().addClass('active');
        });




        // Add active class on another page linked
        // ==========================================
        // $(window).on('load',function () {
        //     var current = location.pathname;
        //     console.log(current);
        //     $('#navbarSupportedContent ul li a').each(function(){
        //         var $this = $(this);
        //         // if the current path is like this link, make it active
        //         if($this.attr('href').indexOf(current) !== -1){
        //             $this.parent().addClass('active');
        //             $this.parents('.menu-submenu').addClass('show-dropdown');
        //             $this.parents('.menu-submenu').parent().addClass('active');
        //         }else{
        //             $this.parent().removeClass('active');
        //         }
        //     })
        // });</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
    <nav class="navbar navbar-expand-custom navbar-mainbg" style="min-height: 45px;margin:1%">
        <%--<a class="navbar-brand navbar-logo" href="#">Faculty</a>
        <button class="navbar-toggler" type="button" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars text-white"></i>
        </button>--%>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
              <%--  <div class="hori-selector"><div class="left"></div><div class="right"></div></div>--%>
              <asp:Panel runat="server" ID="pnl_facilityview"></asp:Panel>
               
               
            </ul>
        </div>
    </nav>
        <br /><br />
        <center>
        <div class='col-sm-12'>
        <asp:Panel runat="server" ID="pnl_facilitydetails" >
            <h1 style='text-align: left;padding-left: 100px;font-family: -webkit-body; '>
                <asp:Label ID="lbl_facilityName" runat="server" Text=""></asp:Label>
            </h1>
            <br />
            <br />
            <div class='row' style='margin-right: 50px;margin-left: 50px;background-color: whitesmoke;border-radius: 50px;padding-top: 50px;padding-bottom: 50px; '>
        <div class='col-sm-3'>
            <asp:Repeater ID="rptImages" runat="server" Visible="false">
                  <ItemTemplate>
                      

                                            <div class="item active">
                                                 <%--  <asp:Image runat="server" ID="imgupload" ImageUrl='<%# Eval("Upload_Files") %>'  AlternateText="Photo" style="border-width:2px; padding-top:6px; border-style:solid;height:320px;width:240px;" BorderWidth="2px"  />
                                         --%>
                                                <img alt=""  src='<%# Eval("Upload_Files")%>' class="reimageSize" data-src='<%# Eval("Upload_Files")%>'>
                                            </div>

                                        

                                        <div class="details text-center">
                                            <h4><a href="EventImagesView.aspx?ID=<%# Eval("ID")%>&MenuID=<%# Eval("MenuMasterID")%>"><%# Eval("EventName")%></a></h4>
                                        </div>
                      </ItemTemplate>
               
            </asp:Repeater>
            </div>
                <div  class='col-sm-9' style='text-align: left'>
                    <h5><asp:Label ID="lbl_Descriptionhead" runat="server" Text=""></asp:Label></h5>
                    <br />
                    <asp:Label ID="lbl_Description" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                </asp:Panel>
            </div>
            </center>
        </section>
</asp:Content>
