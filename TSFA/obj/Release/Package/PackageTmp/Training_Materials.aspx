<%@ Page Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="Training_Materials.aspx.cs" Inherits="TSFA.Training_Materials" Title="Training Materials" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css"> 
    
.panel-heading {
  position: relative;
  border-color: #16A085;
}
.panel-heading[data-toggle="collapse"]:after {
  font-family: 'Glyphicons Halflings';
  content: "\e072"; /* "play" icon */
  position: absolute;
  color: #2890ed;
  font-size: 18px;
  line-height: 22px;
  right: 20px;
  top: calc(50% - 10px);

  /* rotate "play" icon from > (right arrow) to down arrow */
  -webkit-transform: rotate(-90deg);
  -moz-transform:    rotate(-90deg);
  -ms-transform:     rotate(-90deg);
  -o-transform:      rotate(-90deg);
  transform:         rotate(-90deg);
}
.panel-heading[data-toggle="collapse"].collapsed:after {
  /* rotate "play" icon from > (right arrow) to ^ (up arrow) */
  -webkit-transform: rotate(90deg);
  -moz-transform:    rotate(90deg);
  -ms-transform:     rotate(90deg);
  -o-transform:      rotate(90deg);
  transform:         rotate(90deg);
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
<h5 class="margin-15px-bottom mn"><a> Reading Materials/ Notes </a></h5>
</div>
</div>
</div>
<div class="col-lg-12 col-md-12 col-sm-12">	

<br /> 
<p><a href="Documents/Training Materials/Forest Botany Notes-converted.pdf"> Forest Botany </a></p>
<p><a href="Documents/Training Materials/Forest Management-Working Plan.pdf"> Forest Management and Working Plan </a></p>
<p><a href="Documents/Training Materials/Forest Protection.pdf"> Forest Protection </a></p>
<p><a href="Documents/Training Materials/Geology Notes.pdf"> Geology and Soil Science </a></p>
<p><a href="Documents/Training Materials/IT-FSO-TSFA.pdf"> Inforamtion Technology </a></p>
<p><a href="Documents/Training Materials/Research Notes.pdf"> Research</a></p>
<p><a href="Documents/Training Materials/Social Forestry Notes.pdf"> Social Forestry </a></p>
<p><a href="Documents/Training Materials/Utilization notes-.pdf"> Forest Utilization</a></p>
</div>          
</section>


</asp:Content>
