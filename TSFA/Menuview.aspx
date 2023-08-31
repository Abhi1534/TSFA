<%@ Page Title="" Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="Menuview.aspx.cs" Inherits="TSFA.Menuview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .reimageSize {
            width: 350px;
            height: 300px;
        }

        .mapouter {
            position: relative;
            text-align: right;
            height: 350px;
            width: 100%;
        }

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

    <div class="container">
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
              <%--  <p><strong>::TELANGANA STATE FOREST ACADEMY (TSFA):: </strong></p>--%>

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
                                <div class="col-lg-6">
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
                                                    <%--   <asp:ListItem Value="0" Text="Select Type" Enabled="true"></asp:ListItem>
                                                        <asp:ListItem Value="1" Text="Sales" Enabled="true"></asp:ListItem>
                                                        <asp:ListItem Value="2" Text="Marketing" Enabled="true"></asp:ListItem>
                                                        <asp:ListItem Value="3" Text="Services" Enabled="true"></asp:ListItem>--%>
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


                                </div>

                                <div class="col-lg-6">
                                    <div class="row">
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
                        </div>


                    </asp:Panel>

                    <!-- start contact detail -->

                    <br />
                    <br />
                    <asp:Panel ID="pnlMap" runat="server" Height="600px">
                        <%--<div class="col-12">--%>
                        <%--<iframe height="350" src="https://www.google.com/maps/d/embed?mid=1AxBz4Wey88oUgKKWKNh_qREvAafgNvaH" width="100%"></iframe>--%>

                        <%--<div class="mapouter">--%>
                        <div class="gmap_canvas">
                            <iframe width="100%" height="350" id="gmap_canvas"
                                src="https://maps.google.com/maps?q=T.S.Forest%20Academy%2C%20Dulapally%2C%20Hyderabad%2C%20Telangana&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="1"
                                scrolling="Yes" marginheight="1" marginwidth="1"></iframe>
                            <a href="#">TSFA</a>
                        </div>
                        <%--</div>--%>
                        <br />
                    </asp:Panel>
                </div>

                <br />



                <%--      <asp:Repeater ID="imagesuploadRepeater" Visible="false" runat="server">
                                                    <ItemTemplate >
                                                      
                                                        <asp:Image runat="server" ID="imgupload" ImageUrl='<%# Eval("ImageUrls") %>'  AlternateText="Photo" style="border-width:2px; padding-top:6px; border-style:solid;height:320px;width:240px;" BorderWidth="2px"  />
                                                    </ItemTemplate>
                                                </asp:Repeater>  --%>

                <div class="col-md-12">
                    <div class="row">
                        <asp:Repeater runat="server" ID="imagesuploadRepeater" Visible="false">
                            <ItemTemplate>
                                <div class="col-lg-4">
                                    <div>


                                        <div class="reimageSize">

                                            <div class="item active">
                                                <img alt="" src='<%# Eval("ImageUrls")%>' class="reimageSize" data-src='<%# Eval("ImageUrls")%>'>
                                            </div>

                                        </div>

                                        <div class="details text-center">
                                            <h4><a href="EventImagesView.aspx?ID=<%# Eval("ID")%>&MenuID=<%# Eval("MenuMasterID")%>"><%# Eval("EventName")%></a></h4>
                                        </div>
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>


                        <br />
                        <br />
                        <asp:Repeater ID="videoRepeater" Visible="false" runat="server">
                            <ItemTemplate>
                                <video src='<%# Eval("ImageUrls") %>' controls="controls" width="320" height="240" />
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div>
                            <asp:Panel runat="server" ID="pnl_table"></asp:Panel>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
