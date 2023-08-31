<%@ Page Title="" Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="EventImagesView.aspx.cs" Inherits="TSFA.EventImagesView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
               .reimageSize {
width: 350px;
 height: 300px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="blog-style1 text-justify">

<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="item item1 text-center">
<div class="content pd_0px">
<h5 class="margin-15px-bottom mn"><a>Event Name: <asp:Label ID="lblName" runat="server" Text="" ></asp:Label></a></h5>
</div>
       <div class="row">
                <div class="col-lg-12" style="text-align: right">
                    <div class="form-group">
                        <asp:LinkButton runat="server" ID="btn_back" CssClass="btn btn-primary btn-sm" OnClick="btn_back_Click" ><i class="fa fa-solid fa fa-circle-left" aria-hidden="true"></i>Back</asp:LinkButton>
                    </div>
                </div>

            </div>
</div>
</div>
<div class="col-lg-12 col-md-12 col-sm-12">	
    
    <asp:Repeater runat="server" ID="rp_facilities">
        <ItemTemplate>
            <div class="col-lg-4" >
                <div  style="padding-top:5%">
                    <div >

                        <div class="item active" >
                            <img alt="" src='<%# Eval("ImageUrls")%>'   class="reimageSize" data-src='<%# Eval("ImageUrls")%>'></div>
                    </div>

                </div>
            </div>
           
        </ItemTemplate>
    </asp:Repeater>
    </div></div></div></section>
</asp:Content>
