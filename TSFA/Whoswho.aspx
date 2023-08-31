<%@ Page Title="" Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="Whoswho.aspx.cs" Inherits="TSFA.Whoswho" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        li {
            list-style: none;
        }

        body {
            background: #ffffff;
        }
     #popup {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    justify-content: center;
    align-items: center;
    z-index: 1000;
}

.modal-dialog {
    margin: 0 auto;
}
        /*nav css*/
        .navbar-inverse {
            background-color: #ffffff;
            border-radius: 0px;
            height: 80px;
            width: 100%;
            position: fixed;
            z-index: 999;
            border: 0px solid;
            -webkit-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.75);
            transition: all ease 0.8s;
            -moz-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.75);
            box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.75);
        }

            .navbar-inverse .navbar-nav > .open > a, .navbar-inverse .navbar-nav > .open > a:hover, .navbar-inverse .navbar-nav > .open > a:focus {
                color: rgb(0, 4, 51) !important;
                background-color: #0e364c;
            }

        .navbar-brand {
            padding: 0;
            margin-left: 0px !important;
        }

            .navbar-brand img {
                height: 50px;
                margin-left: 20px;
                margin-top: 9%;
                transition: all ease 0.8s;
            }

        .navbar-inverse .navbar-nav > li > a {
            color: rgb(255, 102, 0);
            font-family: 'Open Sans', sans-serif;
            line-height: 3;
            font-weight: bold;
        }

            .navbar-inverse .navbar-nav > li > a:hover, .navbar-inverse .navbar-nav > li > a:focus {
                color: rgb(0, 4, 51) !important;
            }

        .menu {
            display: none;
        }

        .search-box1 {
            padding: 20px 0px;
            z-index: 99999;
            width: 100%;
        }

        .search {
            padding: 30px 0px;
            float: left;
            width: 100%;
        }

        .serach-footer {
            left: 20px;
            position: absolute;
            top: 10px;
        }

        .search-wrap {
            display: block;
            width: 100%;
            height: 40px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #e2e2e2;
            border-radius: 20px;
            -webkit-box-shadow: inset 0 0px 0px rgba(0,0,0,.075);
            box-shadow: inset 0 0px 0px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            width: 100% !important;
            padding-left: 45px;
        }

        .search-btn {
            background: rgb(0, 4, 51);
            width: 100%;
            border-radius: 0px 20px 20px 0px;
            color: #fff !important;
            height: 40px;
            border: 0px solid;
            font-weight: 600;
            font-size: 14px;
        }

            .search-btn:hover, .search-btn:focus {
                background: rgb(0, 4, 51);
                color: #fff !important;
            }

        .modal-dialog {
            width: 90% !important;
            margin: 20% auto;
        }

        /*.modal-content {
            background-color: rgb(255, 102, 0);
        }*/

        .modal-title {
            color: #ffffff !important;
        }

        /*nav css close*/

        .page-header {
            background: #ccc;
            margin: 0;
        }

        .profile-head {
            width: 100%;
            background-color: rgb(74, 35, 90); /*rgb(255, 102, 0)*/
            float: left;
            padding: 15px 5px;
        }

            .profile-head img {
                height: 150px;
                width: 150px;
                margin: 0 auto;
                border: 5px solid #fff;
                border-radius: 5px;
            }

            .profile-head h5 {
                width: 100%;
                padding: 5px 5px 0px 5px;
                text-align: justify;
                font-weight: bold;
                color: #fff;
                font-size: 25px;
                text-transform: capitalize;
                margin-bottom: 0;
            }

            .profile-head p {
                width: 100%;
                text-align: justify;
                padding: 0px 5px 5px 5px;
                color: #fff;
                font-size: 17px;
                text-transform: capitalize;
                margin: 0;
            }

            .profile-head a {
                width: 100%;
                text-align: center;
                padding: 10px 5px;
                color: #fff;
                font-size: 15px;
                text-transform: capitalize;
            }

            .profile-head ul {
                list-style: none;
                padding: 0;
            }

                .profile-head ul li {
                    display: block;
                    color: #ffffff;
                    padding: 5px;
                    font-weight: 400;
                    font-size: 15px;
                }

                    .profile-head ul li:hover span {
                        color: rgb(0, 4, 51);
                    }

                    .profile-head ul li span {
                        color: #ffffff;
                        padding-right: 10px;
                    }

                    .profile-head ul li a {
                        color: #ffffff;
                    }

            .profile-head h6 {
                width: 100%;
                text-align: center;
                font-weight: 100;
                color: #fff;
                font-size: 15px;
                text-transform: uppercase;
                margin-bottom: 0;
            }


        .nav-tabs {
            margin: 0;
            padding: 0;
            border: 0;
        }

            .nav-tabs > li > a {
                background: #DADADA;
                border-radius: 0;
                box-shadow: inset 0 -8px 7px -9px rgba(0,0,0,.4),-2px -2px 5px -2px rgba(0,0,0,.4);
            }

            .nav-tabs > li.active > a,
            .nav-tabs > li.active > a:hover {
                background: #F5F5F5;
                box-shadow: inset 0 0 0 0 rgba(0,0,0,.4),-2px -3px 5px -2px rgba(0,0,0,.4);
            }

        .tab-pane {
            background: #ffffff;
            box-shadow: 0 0 4px rgba(0,0,0,.4);
            border-radius: 0;
            text-align: center;
            padding: 10px;
        }

        .tab-content > .active {
            margin-top: 10px; /*width:100% !important;*/
        }

        /* edit profile css*/

        .hve-pro {
            background-color: rgb(255, 102, 0);
            padding: 5px;
            width: 100%;
            height: auto;
            float: left;
        }

            .hve-pro p {
                float: left;
                color: #fff;
                font-size: 15px;
                text-transform: capitalize;
                padding: 5px 20px;
                font-family: 'Noto Sans', sans-serif;
            }

        h2.register {
            padding: 10px 25px;
            text-transform: capitalize;
            font-size: 25px;
            color: rgb(255, 102, 0);
        }

        .fom-main {
            overflow: hidden;
        }

        legend {
            font-family: 'Bitter', serif;
            color: #ff3200;
            border-bottom: 0px solid;
        }

        .main_form {
            background-color: #;
        }

        label.control-label {
            font-family: 'Noto Sans', sans-serif;
            font-weight: 100;
            margin-bottom: 5px !important;
            text-align: left !important;
            text-transform: uppercase;
            color: #798288;
        }

        .submit-button {
            color: #fff;
            background-color: rgb(255, 102, 0);
            width: 190px;
            border: 0px solid;
            border-radius: 0px;
            transition: all ease 0.3s;
            margin: 5px;
            float: left;
        }

            .submit-button:hover, .submit-button:focus {
                color: #fff;
                background-color: rgb(0, 4, 51);
            }

        .hint_icon {
            color: #ff3200;
        }

        .form-control:focus {
            border-color: #ff3200;
        }

        select.selectpicker {
            color: #99999c;
        }

            select.selectpicker option {
                color: #000 !important;
            }

                select.selectpicker option:first-child {
                    color: #99999c;
                }

        .input-group {
            width: 100%;
        }

        .uplod-picture {
            width: 100%;
            background-color: #;
            color: #fff;
            padding: 20px 10px;
            margin-bottom: 10px;
        }

        .uplod-file {
            position: relative;
            overflow: hidden;
            color: #fff;
            background-color: rgb(0, 4, 51);
            border: 0px solid #a02e09;
            border-radius: 0px;
            transition: all ease 0.3s;
            margin: 5px;
        }

            .uplod-file input[type=file] {
                position: absolute;
                top: 0;
                right: 0;
                min-width: 100%;
                min-height: 100%;
                font-size: 100px;
                text-align: right;
                filter: alpha(opacity=0);
                opacity: 0;
                outline: none;
                background: white;
                cursor: inherit;
                display: block;
            }

            .uplod-file:hover, .uplod-file:focus {
                color: #fff;
                background-color: rgb(255, 102, 0);
            }

        h4.pro-title {
            font-size: 24px;
            color: rgba(0, 4, 51, 0.96);
            text-transform: capitalize;
            text-align: justify;
            padding: 10px 15px;
            font-family: 'Bitter', serif;
        }

        .bio-table {
            width: 75%;
            border: 0px solid;
        }

            .bio-table td {
                text-transform: capitalize;
                text-align: left;
                font-size: 15px;
            }

            .bio-table > tbody > tr > td {
                border: 0px solid;
                text-transform: capitalize;
                color: rgb(0, 4, 51);
                font-size: 15px;
            }

        .responsiv-table {
            border: 0px solid;
        }

        .nav-menu li a {
            margin: 5px 5px 5px 5px;
            position: relative;
            display: block;
            padding: 10px 50px;
            border: 0px solid !important;
            box-shadow: none !important;
            background-color: rgb(0, 4, 51) !important;
            color: #fff !important;
            white-space: nowrap;
        }

        .nav-menu li.active a {
            background-color: rgb(255, 102, 0) !important;
        }

        .stick {
            position: fixed !important;
            top: 0;
            z-index: 999 !important;
            width: 100%;
            background: #ffffff !important;
            height: auto;
            transition: all ease 0.8s;
            -webkit-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.75);
            -moz-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.75);
            box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.75);
        }

            .stick a {
                line-height: 20px !important;
            }

            .stick img {
                margin: 0 !important;
            }



        @media all and (max-width:768px) {

            .navbar-inverse .drop_menu {
                display: block;
                visibility: visible;
                width: 110px;
                height: 1000px;
                padding: 0px 20px;
                position: absolute;
                right: -100px;
                transition: all ease 0.5s;
                border-top: 0px solid;
                cursor: pointer;
            }

            .navbar-brand {
                padding: 0;
                margin-left: 10px !important;
            }

            a.menu {
                display: block !important;
                margin: 9px 2px;
                float: right;
                color: rgba(255, 102, 0, 0.98);
                border: 0px solid;
                background: none;
                font-size: 30px;
                width: 27px;
                position: relative;
                cursor: pointer;
            }

                a.menu:hover, a.menu:focus {
                    color: rgb(0, 4, 51);
                }

            .drop_menu1 {
                display: block;
                visibility: visible;
                width: 250px;
                height: 1000px;
                padding: 5px 30px;
                position: absolute;
                right: 0 !important;
                background-color: #ffffff !important;
                transition: all ease 0.5s;
                border-top: 0px solid;
                cursor: pointer;
            }
        }

        @media all and (max-width:430px) {
            .profile-head ul li {
                font-size: 12px !important;
            }

            .nav-menu li {
                width: 50%;
            }

            .bio-table > tbody > tr > td {
                font-size: 13px;
            }
        }

        .nav1 {
            padding-left: 0;
            margin-bottom: 0;
            list-style: none;
        }
    </style>

    <script type="text/javascript">
        //tab js//
        $(document).ready(function (e) {


            $('.form').find('input, textarea').on('keyup blur focus', function (e) {

                var $this = $(this),
          label = $this.prev('label');

                if (e.type === 'keyup') {
                    if ($this.val() === '') {
                        label.removeClass('active highlight');
                    } else {
                        label.addClass('active highlight');
                    }
                } else if (e.type === 'blur') {
                    if ($this.val() === '') {
                        label.removeClass('active highlight');
                    } else {
                        label.removeClass('highlight');
                    }
                } else if (e.type === 'focus') {

                    if ($this.val() === '') {
                        label.removeClass('highlight');
                    }
                    else if ($this.val() !== '') {
                        label.addClass('highlight');
                    }
                }

            });

            $('.tab a').on('click', function (e) {

                e.preventDefault();

                $(this).parent().addClass('active');
                $(this).parent().siblings().removeClass('active');
                target = $(this).attr('href');

                $('.tab-content > div').not(target).hide();

                $(target).fadeIn(600);

            });
            //canvas off js//
            $('#menu_icon').click(function () {
                if ($("#content_details").hasClass('drop_menu')) {
                    $("#content_details").addClass('drop_menu1').removeClass('drop_menu');
                }
                else {
                    $("#content_details").addClass('drop_menu').removeClass('drop_menu1');
                }


            });

            //search box js//


            $("#flip").click(function () {
                $("#panel").slideToggle("10000");
            });

            // sticky js//

            $(window).scroll(function () {
                if ($(window).scrollTop() >= 2000) {
                    $('nav').addClass('stick');
                }
                else {
                    $('nav').removeClass('stick');
                }
            });

        });


        function showPopup() {
            var popup = document.getElementById('popup');

            popup.style.display = 'block';
        }
        function Hide() {
            var popup = document.getElementById('popup');

            popup.style.display = 'none';
        }
</script>





    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Add Bootstrap JavaScript (jQuery is required) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="blog-style1 text-justify">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="">
      <div class='row'>
          <div class='col-sm-4'>
        <div class="sidebar_head" style="font-size:large;color:black;"><i class="fa fa-sitemap"></i><span><b> Who's Who</b></span></div>
        <br />
  
    <asp:Panel runat="server" ID="pnl_Whoswho"></asp:Panel>
   </div>
       
     
          <div class='col-sm-8'>
   <asp:Panel runat="server" ID="pnl_viewDetails">
       <asp:Repeater ID="rptDetails" runat="server" Visible="false">
           <ItemTemplate >
                                                      
      
           <div id='sticky' class='container' style='margin-top:30px;'>
               <div class='profile-head'>
                   <div class='col-md-3 col-sm-3 col-xs-8'>
                 <asp:Image runat="server" ID="imgupload" ImageUrl='<%# Eval("Photofilepath") %>'  AlternateText="Photo" style="border-width:2px; padding-top:6px; border-style:solid;height:240px;width:210px;" BorderWidth="2px"  />
                      
                       <h6></h6>

                   </div>
                   <div class='col-md-7 col-sm-7 col-xs-8'>
                       <h5>
                           <asp:Label ID="lbl_membernmae" runat="server" Text='<%# Eval("AdministrationMemberName") %>' ></asp:Label>
                       </h5>
                       <p>
                           <asp:Label ID="lbl_designation" runat="server" Text='<%# Eval("Designation") %>' ></asp:Label>
                       </p>
                       <ul>
                           <li><span class='fa fa-phone-square'></span>
                           <asp:Label ID="lbl_membermobilenumber" runat="server" Text='<%# Eval("ContactNo") %>' ></asp:Label>
                               </li>
                           <li><span class='fa fa-envelope-open'></span>
                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("Email") %>' ></asp:Label>
                               </li>
                           <li style='width: 400px'><span class='fa fa-home'></span>
                           <asp:Label ID="lbl_memberAddress" runat="server" Text='<%# Eval("Address") %>' ></asp:Label>
                               </li>

                           <li style='width: 200px'>
                              <%-- <asp:Label ID="lbl_ID" runat="server" Text='<%# Eval("pk") %>'></asp:Label>--%>
                             <%-- <asp:Button runat="server" ID="btnShowPopup" Text="Show Popup" OnClick="btnShowPopup_Click" />--%>
            
                               <asp:LinkButton ID="lnk_BIODATA" runat="server"   data-target="#myModal" CommandArgument = '<%# Eval("pk") %>' Text="Click Here View BIO Data" CssClass="btn btn-info btn-lg" OnClick="lnk_BIODATA_Click"></asp:LinkButton>
                               </li>
                           </ul>
                       </div>
                   </div>
               </div>
               <div  id="overlay"></div>
 
              </ItemTemplate>
           </asp:Repeater>
   </asp:Panel>
   </div></div>
    </div>
    </div></div></div></section>
  

   <%-- <asp:Panel runat="server" ID="pnl_biodata">--%>
    <%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>
         <div  id="popup" style="display: none;" >
            
           
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                   
                    <h4 class="modal-title" runat="server"  id="m_head" style="color: black!important"> BOIDATA</h4>
                </div>
                <div class="modal-body" runat="server">
                    <asp:Literal ID="lblID" runat="server" Text=""></asp:Literal>
                   <%-- <p runat="server"  id="p_biodata" style="color: black" ><%# Eval("pk") %></p>--%>
                </div>
                <div class="modal-footer">
                    <asp:Button type="button" ID="btn_Close" Text="Close" class="btn btn-default" runat="server" OnClick="btn_Close_Click" data-dismiss="modal"></asp:Button>
                </div>

                
    <!-- Popup content here -->
</div>
            </div>

        </div>
    
   
      <%--  </asp:Panel>--%>
</asp:Content>
