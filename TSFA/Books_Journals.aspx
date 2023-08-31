<%@ Page Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="Books_Journals.aspx.cs" Inherits="TSFA.Books_Journals" Title="Books & Journals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="blog-style1 text-justify">

<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="item item1 text-center">
<div class="content pd_0px">
<h5 class="margin-15px-bottom mn"><a> Books & Journals </a></h5>
</div>
</div>
</div>
<div class="col-lg-12 col-md-12 col-sm-12">	
<div class="table table-hover">
  <table class="table">
    <thead>
      <tr>
        <th scope="col">Sl.No.</th>
        <th scope="col">Description</th>
        <th scope="col">Download</th>
       </tr>
    </thead>
    <tbody>
    
      <tr>
        <th scope="row">1</th>
        <td>Initiatives and Innovations By Telangana State Forest Department 2019 </td>
        <td><a href="Documents/Books_Journals/Initiatives and Innovations By Telangana State Forest Department 2019.pdf"> <i class="fa fa-download"></i></a></td>
      </tr>

      <tr>
        <th scope="row">2</th>
        <td>Trees of Telangana State Forest Academy by FRO Trainees</td>
        <td><a href="Documents/Books_Journals/Trees of Forest Academy by FRO Trainees (5th batch) Final (10-08-18).pdf"> <i class="fa fa-download"></i></a></td>
        </tr>
      <tr>
        <th scope="row">3</th>
        <td>Feathered Friends of Forest Academy Dulapally,Hyd</td>
        <td><a href="Documents/Books_Journals/Feathered_Friends_of_Forest_Academy_Dulapally_Hyd_190215.pdf"> <i class="fa fa-download"></i></a></td>
        </tr>
      <tr>
        <th scope="row">4</th>
        <td> Feathered Friends of Forest Academy Campus</td>
        <td><a href="Documents/Books_Journals/20x30PosterHi_Feathered Friends of Forest Academy Campus.JPG"> <i class="fa fa-download"></i></a></td>
      </tr>
      <tr>
        <th scope="row">5</th>
        <td> Forest Academy Nursery_Karadeepika Telugu Book </td>
        <td><a href="Documents/Books_Journals/Forest Academy Nursery_Karadeepika Book Final.pdf"> <i class="fa fa-download"></i></a></td>
        </tr>
      <tr>
        <th scope="row">6</th>
        <td>National Level workshop on Gender Mainstreaming of Forest Frontline Staff (2008)</td>
        <td><a href="Documents/Books_Journals/NL workshop gender staff book.pdf"> <i class="fa fa-download"></i></a></td>
        </tr>
               
    </tbody>
  </table>
</div>

 </div>
</div>
</div>          
</section>

</asp:Content>
