<%@ Page Title="" Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="Administratorview.aspx.cs" Inherits="TSFA.Administratorview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

        .image img {
            height: 285px;
        }

        .singel-teachers .cont {
            bottom: -30px !important;
            /*width: 90% !important;*/
            padding: 10px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>


            <asp:Panel runat="server" ID="pnl_viewDetails"></asp:Panel>
    </section>

    <br />
    <br /><br />
</asp:Content>
