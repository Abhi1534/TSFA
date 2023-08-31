<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="MenuPreview.aspx.cs" Inherits="TSFA.Admin.MenuPreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
     
     .gmap_canvas {
         overflow: hidden;
         background: none !important;
         height: 350px;
         width: 100%;
     }

        #imgupload {
            padding-top: 6px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th {
            padding: 8px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            border: 1px solid #dee2e6;
            background: #cdcdcd;
        }

        td {
            padding: 8px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            border: 1px solid #dee2e6;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="blog-style1 text-justify">
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="row">
            <div class="col-lg-12" style="text-align: right">
                <div class="form-group">
                    <asp:LinkButton runat="server" ID="btn_back" CssClass="btn btn-primary btn-sm" OnClick="btn_back_Click"><i class="fa fa-solid fa fa-circle-left" aria-hidden="true"></i>Back</asp:LinkButton>
                </div>
            </div>

        </div>
        <div class="container" style="padding-left: 11%">
            <div class="row">

                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="item item1 text-center">
                        <div class="content pd_0px">
                            <h5 class="margin-15px-bottom mn"><a>
                                <asp:Label runat="server" ID="lblPagename"> </asp:Label></a></h5>
                        </div>
                    </div>

                </div>

                <div class="col-lg-12 col-md-12 col-sm-12">
                    <p><strong>::TELANGANA STATE FOREST ACADEMY (TSFA):: </strong></p>



                    <br />
                    <p runat="server" id="p_paragraph"></p>

                    <div id="div_Contact" class="contact-info-box padding-30px-left sm-no-padding" runat="server" visible="false">


                        <div class="alert alert-success" id="div_success" runat="server" visible="false">
                            <strong>Success!</strong>.
                        </div>
                        <div class="alert alert-danger" runat="server" visible="false" id="div_fail">
                            <strong>fail!</strong>
                        </div>


                        <asp:Panel runat="server" ID="pnl_entry" Visible="false">

                            <%--  <div class="contact-form-box margin-30px-top">--%>
                            <div class="col-md-12">
                                <div class="row">
                                   <%-- <div class="col-lg-6">
                                        <div class="row">


                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

                                                <div class="form-group">

                                                    <label>Name<span class="text-danger">*</span></label>
                                                    <asp:TextBox runat="server" class="form-control" ID="txt_name" placeholder="Name " />

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
                                                    <asp:TextBox runat="server" class="form-control" ID="txt_email" placeholder="Email" />

                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="form-group">
                                                    <label>Category<span class="text-danger">*</span></label>
                                                    <asp:DropDownList runat="server" ID="ddlcategory" class="form-control">
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

                                        <div class="row">
                                            <div class="col-lg-12" style="text-align: right">
                                                <div class="form-group">
                                                    <div class="submit-section">
                                                        <asp:Button Text="Submit" runat="server" class="btn btn-primary submit-btn" ID="btn_submit" OnClick="btn_submit_Click" />

                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                    </div>--%>

                                    <div class="col-lg-6">
                                        <div id="div_ContactUsData" runat="server" visible="false">
                                            <div id="div_Paragrah" runat="server">
                                                <div class="form-group">
                                                    <p runat="server" id="p_ContactUs"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>

                        <!-- start contact detail -->
                    </div>



                    <%--<div class="col-lg-6" id="div_ContactUsData" runat="server" visible="false" >
    <div class="contact-info-box padding-30px-left sm-no-padding" id="div_Paragrah" runat="server" > 
        
    <div runat="server" id="p_ContactUs" visible="false"></div></div>--%>
                    <%--<div class="contact-info-box padding-30px-left sm-no-padding">
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
</div>--%>

                    <!-- end contact detail -->
                    <%-- </div>--%>
                
                <asp:Repeater ID="imagesuploadRepeater" Visible="false" runat="server"  >
                    <ItemTemplate>
 
                        <asp:Image runat="server" class="modelImage" ID="imgupload" ImageUrl='<%# Eval("ImageUrls") %>' AlternateText="Photo" Style="border-width: 2px; padding-top: 6px; border-style: solid!important; height: 300px; width: 400px;" BorderWidth="2px" /><br />
                  
                            </ItemTemplate>
                </asp:Repeater>


                <br />
                <br />

                <asp:Repeater ID="videoRepeater" Visible="false" runat="server">
                    <ItemTemplate>

                        <video src='<%# Eval("ImageUrls") %>' controls="controls" width="320" height="240" />
                    </ItemTemplate>
                </asp:Repeater>
                <br />
                <asp:Panel runat="server" ID="pnl_table"></asp:Panel>


                
    </div>
</div>          
</div>

    </section>
</asp:Content>
