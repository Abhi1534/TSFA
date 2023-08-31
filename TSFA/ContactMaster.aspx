<%@ Page Title="" Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="ContactMaster.aspx.cs" Inherits="TSFA.ContactMaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .ch {
            padding-left: 10px;
        }
    </style>
    <style>
        table#ContentPlaceHolder1_grid_data th.gridHeadStyle, tr td {
            border: 1px solid #dee2e6;
            padding: 10px;
            text-align: center;
        }

        th.gridHeadStyle {
            background: #cdcdcd;
        }

        table#ContentPlaceHolder1_grid_data th {
            background: #cdcdcd;
            padding: 11px 2px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
    </asp:ScriptManager>
    <div class="page-wrapper">
        <div class="content container-fluid">
          
            <!-- Page Header -->
            <div class="page-header">
                <div class="row" style="padding-left:15px">
                      <p><strong>::TELANGANA STATE FOREST ACADEMY (TSFA):: </strong> </p> 
                    <div class="col-sm-12">
                        <h3 class="page-title">Contact Us</h3>

                    </div>
                </div>
            </div>



         
            <div class="alert alert-success" id="div_success" runat="server" visible="false">
                <strong>Success!</strong>.
            </div>
            <div class="alert alert-danger" runat="server" visible="false" id="div_fail">
                <strong>fail!</strong>
            </div>

            <!-- /Page Header -->

            <div class="row" style="margin-left:20px">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body custom-edit-service">
                            <div class="service-fields mb-3">
                                <asp:Panel runat="server" ID="pnl_entry" Visible="false">
                                
                                    <div class="contact-form-box margin-30px-top">
                                        <div class="col-lg-6">
                                    <div class="row">


                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

                                           <div class="form-group">

                                                <label>Name<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txt_name" placeholder="Name "/>

                                            </div>
                                        </div>

                                      
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

                                               <div class="form-group">

                                                    <label>Contact Number<span class="text-danger">*</span></label>
                                                    <asp:TextBox runat="server" class="form-control" ID="txt_contactno" placeholder="Contact Number" />

                                                </div>
                                            </div>

                                     

                                    </div>
                                    <div class="row">
                                       <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="form-group">
                                                <label>Email<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txt_email" placeholder="Email"/>

                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="form-group">
                                                <label>Category<span class="text-danger">*</span></label>
                                                <asp:DropDownList runat="server" ID="ddlcategory"  class="form-control">
                                                     <asp:ListItem Value="0" Text="Select Type" Enabled="true"></asp:ListItem>
                                                    <asp:ListItem Value="1" Text="Sales" Enabled="true"></asp:ListItem>
                                                    <asp:ListItem Value="2" Text="Marketing" Enabled="true"></asp:ListItem>
                                                    <asp:ListItem Value="3" Text="Services" Enabled="true"></asp:ListItem>
                                                </asp:DropDownList>

                                            </div>
                                        </div>
                                    </div>

                                     <div class="row">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>Message<span class="text-danger">*</span></label>
                                                    <asp:TextBox runat="server" class="form-control" ID="txt_msg" TextMode="MultiLine" placeholder="Message" />

                                                </div>
                                            </div>

                                        </div>

                                <div class="row" >
                          <div class="col-lg-12" style="text-align: right">
                    <div class="form-group">
              <div class="submit-section">
                                        <asp:Button Text="Submit" runat="server" class="btn btn-primary submit-btn" ID="btn_submit" OnClick="btn_submit_Click" />

                                    </div>
                                                </div>
                                  </div>
                                    </div>    

                                 
                                            </div>


                                     <!-- start contact detail -->

<div class="col-lg-6" >
<div class="contact-info-box padding-30px-left sm-no-padding">
<div class="row">
<div class="col-12">
<div class="contact-info-section no-padding-top margin-10px-top">
<h4>Get in Touch</h4>
<p>You can get in touch with TSFA at the following address</p>
</div>
</div>

<div class="col-12">
<div class="contact-info-section">
<ul class="list-style-1 no-margin-bottom">
	<li>
	<p><i class="fa fa-user-circle" aria-hidden="true"></i><strong>CCF/Director</strong><br />
	TELANGANA STATE FOREST ACADEMY<br />
	Dulapally, Hyderabad – 500 100<br />
	Telangana</p>
	</li>
	<li><p><i class="fa fa-phone-square" aria-hidden="true"></i> <strong>Phone : </strong> 040-29704894</p>	</li>
	<li><p><i class="fa fa-fax" aria-hidden="true"></i><strong>Fax : </strong>040-29704894</p></li>
	<li><p><i class="fa fa-envelope-o" aria-hidden="true"></i> <strong>Email : </strong>tsfa.hyd@gmail.com</p></li>
</ul>
</div>
</div>
</div>
</div>
</div>
<!-- end contact detail -->
                                        </div>
                                </asp:Panel>
                                <%--<asp:Panel runat="server" ID="pnl_view" Visible="true">

                                    <div class="table-responsive">
                                        <table class="table mb-0">
                                            <asp:GridView ID="grid_data" Visible="true" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" AllowSorting="true"
                                                Width="100%" GridLines="None"
                                                EmptyDataText="No details" OnRowCommand="grid_data_RowCommand">
                                                <EmptyDataRowStyle Height="100px" HorizontalAlign="Center" CssClass="datatable table table-hover table-center mb-0" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="SI NO">

                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="galleryname">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_galleryname" runat="server" Text='<%# Eval("galleryname")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>



                                                    <asp:TemplateField HeaderText="From Date:">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_FromDate" runat="server" Text='<%# Eval("FromDate")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="To Date:">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_ToDate" runat="server" Text='<%# Eval("ToDate")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>



                                                    <asp:TemplateField HeaderText="Is Active">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_IsActive" runat="server" Text='<%# Eval("IsActive")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Action">
                                                        <ItemTemplate>
                                                            <asp:LinkButton runat="server" CommandArgument='<%# Eval("pk")%>' CommandName="Btn_EditCommand" ID="btn_Edit"><asp:image imageurl="../Images/edit.svg" runat="server" Height="20px" Width="20px" /></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </table>
                                    </div>

                                </asp:Panel>--%>


                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-12">
<%--<iframe height="350" src="https://www.google.com/maps/d/embed?mid=1AxBz4Wey88oUgKKWKNh_qREvAafgNvaH" width="100%"></iframe>--%>

<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="350" id="gmap_canvas" 
src="https://maps.google.com/maps?q=T.S.Forest%20Academy%2C%20Dulapally%2C%20Hyderabad%2C%20Telangana&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="1"
 scrolling="Yes" marginheight="1" marginwidth="1"></iframe><a href="#">TSFA</a></div>
 <style>.mapouter{position:relative;text-align:right;height:350px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:350px;width:100%;}</style></div>
</div>
            <br />
        </div>


    </div>
</asp:Content>
