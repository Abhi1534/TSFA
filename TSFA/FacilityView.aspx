<%@ Page Title="" Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="FacilityView.aspx.cs" Inherits="TSFA.FacilityView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="blog-style1 text-justify">

<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="item item1 text-center">
<div class="content pd_0px">
<h5 class="margin-15px-bottom mn"><a>Facility Name: <asp:Label ID="lblName" runat="server" Text="" ></asp:Label></a></h5>
</div>
</div>
</div>
<div class="col-lg-12 col-md-12 col-sm-12">
    
    <asp:Repeater runat="server" ID="rp_facilities">
        <ItemTemplate>
            <div class="col-xs-12 col-sm-7 col-md-4" style="height: 400px; width: 400px">
                <div id="carousel-example-generic12" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">

                        <div class="item active">
                            <img alt="" src='<%# Eval("Imgfilepath")%>' height="400px" class="modelImage" data-src='<%# Eval("Imgfilepath")%>'></div>
                    </div>

                </div>
            </div>

        </ItemTemplate>
    </asp:Repeater>
    </div></div></div></section>
</asp:Content>
