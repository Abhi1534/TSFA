<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="PageDetails.aspx.cs" Inherits="TSFA.Admin.PageDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="custom" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #ContentPlaceHolder1_grd_tablecontent {
            text-align: center;
        }

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

        table#ContentPlaceHolder1_grd_eventdata th {
            background: #cdcdcd;
            padding: 11px 2px;
            text-align: center;
        }

        table#ContentPlaceHolder1_grd_gettabledata th {
            background: #cdcdcd;
            padding: 11px 2px;
            text-align: center;
        }
        table#ContentPlaceHolder1_grd_tablecontent th {
            background: #cdcdcd;
            padding: 11px 2px;
            text-align: center;
        }
        

      
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="page-wrapper">
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="page-title">Menu Details</h3>

                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-5">
                </div>
                <div class="col-lg-6" style="text-align: right">
                    <div class="form-group">
                        <asp:LinkButton runat="server" ID="btn_add" CssClass="btn btn-primary btn-sm" Visible="true" OnClick="btn_add_Click"><i class="fa fa-plus" aria-hidden="true"></i>  Add New</asp:LinkButton>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12" style="text-align: right">
                    <div class="form-group">
                        <asp:LinkButton runat="server" ID="btn_back" CssClass="btn btn-primary btn-sm" OnClick="btn_back_Click" Visible="false"><i class="fa fa-solid fa fa-circle-left" aria-hidden="true"></i>Back</asp:LinkButton>
                    </div>
                </div>

            </div>
            <div class="alert alert-success" id="div_success" runat="server" visible="false">
                <strong>Success!</strong>.
            </div>
            <div class="alert alert-danger" runat="server" visible="false" id="div_exists">
                <strong>Menu Name Already Exists!</strong>
            </div>
            <div class="alert alert-danger" runat="server" visible="false" id="div_fail">
                <strong>Fail!</strong>
            </div>

            <!-- /Page Header -->

            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body custom-edit-service">
                            <div class="service-fields mb-3">
                                <asp:Panel runat="server" ID="pnl_entry" Visible="false">
                                    <div class="alert alert-danger" runat="server" id="div1">
                                        <asp:CheckBox Text="IsActive" runat="server" ID="ch_isactive" Checked="true" CssClass=".ch" />
                                    </div>
                                    <div class="row">

                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Menu Name<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txt_MenuName" required="" />

                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Menu Description<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txt_menudescription" required="" />

                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <asp:CheckBox Text="Is SubMenu" ID="chk_issubmenu" runat="server" AutoPostBack="true" OnCheckedChanged="chckmenu_SelectedIndexChanged" />
                                            </div>
                                        </div>
                                        <div class="col-lg-6" id="div_menudropdown" visible="false" runat="server">
                                            <div class="form-group">
                                                <label>Parent Menu Name<span class="text-danger">*</span></label>
                                                <asp:DropDownList runat="server" ID="ddlmenulist" CssClass="form-control select">
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Menu Header<span class="text-danger">*</span></label><br />
                                                <asp:TextBox runat="server" class="form-control" ID="txt_MenuHeader" required=""></asp:TextBox>

                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Content<span class="text-danger">*</span></label>
                                                <%--<asp:TextBox runat="server" class="form-control" ID="txt_Content" TextMode="MultiLine" />--%>
                                                <cc2:Editor
                                                    ID="txt_Description" runat="server" class="form-control" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <asp:CheckBox runat="server" ID="chckevents" Text="Has Events" AutoPostBack="true" OnCheckedChanged="chckevents_CheckedChanged" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12" runat="server" id="div_eventimages" visible="false">
                                            <div class="form-group">
                                                <label>Enter Event Name<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" ID="txtEventName" class="form-control"></asp:TextBox><br />
                                                <label>Upload Images/Videos<span class="text-danger">*</span></label>
                                                <asp:FileUpload runat="server" ID="fileupload" AllowMultiple="true" />
                                                <asp:Repeater ID="rptImage" runat="server">
                                                    <ItemTemplate>
                                                        <%--  <img alt="" src='images/<%#Eval("ImageUrl") %>' height="50px" width="50px" />--%>
                                                        <asp:Image runat="server" ID="imgupload" ImageUrl='<%# Eval("ImageUrl") %>' AlternateText="Photo" Width="100"
                                                            Height="100" BorderWidth="2px" CssClass="zoom" />
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                                <asp:Repeater ID="videoRepeater1" Visible="false" runat="server">
                                                    <ItemTemplate>
                                                        <%--<video src="../Sharepath/TSFA/6db00f6b-3bca-46a8-ba08-33e564ab03b6.mp4" controls="controls"  width="320" height="240" />--%>
                                                        <video src='<%# Eval("ImageUrl") %>' controls="controls" width="100" height="100" />
                                                    </ItemTemplate>
                                                </asp:Repeater>




                                            </div>
                                            <asp:Button ID="btnupload" runat="server" Text="Upload" OnClick="btnupload_Click" CssClass="btn btn-primary btn-sm" />
                                            <asp:Button ID="btnaddevent" runat="server" Text="Add Event" CssClass="btn btn-primary btn-sm" OnClick="btnaddevent_Click" />
                                            <br />
                                            <br />
                                            <br />
                                            <asp:GridView runat="server" ID="grd_eventdata" AutoGenerateColumns="false" Visible="false" Width="100%" GridLines="None" OnRowDataBound="grd_eventdata_RowDataBound">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Status" HeaderStyle-CssClass="gridHeadStyle"
                                                                    ItemStyle-CssClass="table-avatar" HeaderStyle-Width="4%">
                                                                    <ItemTemplate>
                                                                        <asp:Button class="btn btn-primary btn-sm" ID="btnEventDelete" runat="server" Text="Delete" OnClick="btnEventDelete_Click" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="SI NO">

                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Event Name">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_EventName" runat="server" Text='<%# Eval("EventName")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Download" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:HyperLink ID="lnk_url" runat="server" Text="View" Target="_blank" NavigateUrl='<%# Eval("ImageUrls")%>'></asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                </Columns>
                                            </asp:GridView>
                                            <br />
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <asp:CheckBox runat="server" ID="chcktables" AutoPostBack="true" OnCheckedChanged="chcktables_CheckedChanged" Text="Has Tables" />

                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <asp:CheckBox runat="server" Visible="false" ID="chkColumns" AutoPostBack="true" OnCheckedChanged="chkColumns_CheckedChanged" Text="Has Columns Change" />
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:CheckBox runat="server" Visible="false" ID="chkRows" AutoPostBack="true" OnCheckedChanged="chkRows_CheckedChanged" Text="Has Rows Add" />
                                            </div>
                                        </div>

                                    </div>
                                    <asp:Panel ID="pnlTbl" runat="server" Visible="false">
                                        <div class="row" id="div_tablescreation" visible="false" runat="server">
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <asp:Label runat="server" Text="Select Columns:"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:DropDownList runat="server" ID="ddlcolumnscount" CssClass="form-control select" AutoPostBack="true" OnSelectedIndexChanged="ddlcolumnscount_SelectedIndexChanged">
                                                        <asp:ListItem Text="--Select One--" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <br />
                                                </div>
                                            </div>
                                        </div>

                                        <asp:Panel ID="pnlHeader" runat="server" Visible="false">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Header Names:" ID="lblheaderstrt" Visible="false"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <%-- <asp:Panel runat="server" ID="pnl_header" Visible="false">--%>

                                                        <asp:TextBox runat="server" ID="txtheader1" class="form-control" Visible="false"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:DropDownList runat="server" ID="ddlheader1" CssClass="form-control select" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="ddlheader1_SelectedIndexChanged">
                                                            <asp:ListItem Text="--Select Column Type--" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="TextBox" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="FileUpload" Value="2"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:TextBox runat="server" ID="txtheader2" class="form-control" Visible="false"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:DropDownList runat="server" ID="ddlheader2" CssClass="form-control select" Visible="false" OnSelectedIndexChanged="ddlheader2_SelectedIndexChanged" AutoPostBack="true">
                                                            <asp:ListItem Text="--Select Column Type--" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="TextBox" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="FileUpload" Value="2"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:TextBox runat="server" ID="txtheader3" class="form-control" Visible="false"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:DropDownList runat="server" ID="ddlheader3" CssClass="form-control select" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="ddlheader3_SelectedIndexChanged">
                                                            <asp:ListItem Text="--Select Column Type--" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="TextBox" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="FileUpload" Value="2"></asp:ListItem>

                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:TextBox runat="server" ID="txtheader4" class="form-control" Visible="false"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:DropDownList runat="server" ID="ddlheader4" CssClass="form-control select" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="ddlheader4_SelectedIndexChanged">
                                                            <asp:ListItem Text="--Select Column Type--" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="TextBox" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="FileUpload" Value="2"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:TextBox runat="server" ID="txtheader5" class="form-control" Visible="false"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:DropDownList runat="server" ID="ddlheader5" CssClass="form-control select" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="ddlheader5_SelectedIndexChanged">
                                                            <asp:ListItem Text="--Select Column Type--" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="TextBox" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="FileUpload" Value="2"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:TextBox runat="server" ID="txtheader6" class="form-control" Visible="false"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:DropDownList runat="server" ID="ddlheader6" CssClass="form-control select" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="ddlheader6_SelectedIndexChanged">
                                                            <asp:ListItem Text="--Select Column Type--" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="TextBox" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="FileUpload" Value="2"></asp:ListItem>

                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <%--  </asp:Panel>--%>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <asp:Label ID="lblheader1" Visible="false" runat="server"></asp:Label>
                                                    <asp:TextBox runat="server" ID="txt_rowcontent1" class="form-control" Visible="false"></asp:TextBox>
                                                    <asp:FileUpload runat="server" ID="fup_fileupload1" Visible="false" AllowMultiple="true" />
                                                    <asp:Repeater ID="Repeater1" runat="server">
                                                        <ItemTemplate>
                                                            <%--  <img alt="" src='images/<%#Eval("ImageUrl") %>' height="50px" width="50px" />--%>
                                                            <asp:Image runat="server" ID="imgrow1" ImageUrl='<%# Eval("ImageUrl") %>' AlternateText="Photo" Width="100"
                                                                Height="100" BorderWidth="2px" CssClass="zoom" />
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                    <asp:Button runat="server" ID="btncontentupload1" Text="Upload" OnClick="btncontentupload1_Click" Visible="false" CssClass="btn btn-primary btn-sm" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <asp:Label runat="server" ID="lblheader2" Visible="false"></asp:Label><br />
                                                    <asp:TextBox runat="server" ID="txt_rowcontent2" class="form-control" Visible="false"></asp:TextBox>
                                                    <asp:FileUpload runat="server" ID="fup_fileupload2" Visible="false" AllowMultiple="true" />
                                                    <asp:Label ID="lblfileName2" runat="server" Text=""></asp:Label>
                                                    <asp:Repeater ID="Repeater2" runat="server">
                                                        <ItemTemplate>
                                                            <%--  <img alt="" src='images/<%#Eval("ImageUrl") %>' height="50px" width="50px" />--%>
                                                            <asp:Image runat="server" ID="imgrow2" ImageUrl='<%# Eval("ImageUrl") %>' AlternateText="Photo" Width="100" Visible="false"
                                                                Height="100" BorderWidth="2px" CssClass="zoom" />
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                    <asp:Button runat="server" ID="btncontentupload2" OnClick="btncontentupload2_Click" Text="Upload" Visible="false" CssClass="btn btn-primary btn-sm" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <asp:Label runat="server" ID="lblheader3" Visible="false"></asp:Label><br />
                                                    <asp:TextBox runat="server" ID="txt_rowcontent3" class="form-control" Visible="false"></asp:TextBox>
                                                    <asp:FileUpload runat="server" ID="fup_fileupload3" Visible="false" AllowMultiple="true" />
                                                    <asp:Label ID="lblfileName3" runat="server" Text=""></asp:Label>
                                                    <asp:Repeater ID="Repeater3" runat="server">
                                                        <ItemTemplate>
                                                            <%--  <img alt="" src='images/<%#Eval("ImageUrl") %>' height="50px" width="50px" />--%>
                                                            <asp:Image runat="server" ID="imgrow3" Visible="false" ImageUrl='<%# Eval("ImageUrl") %>' AlternateText="Photo" Width="100"
                                                                Height="100" BorderWidth="2px" CssClass="zoom" />
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                    <asp:Button runat="server" ID="btncontentupload3" OnClick="btncontentupload3_Click" Text="Upload" Visible="false" CssClass="btn btn-primary btn-sm" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <asp:Label runat="server" ID="lblheader4" Visible="false"></asp:Label><br />
                                                    <asp:TextBox runat="server" ID="txt_rowcontent4" class="form-control" Visible="false"></asp:TextBox>
                                                    <asp:FileUpload runat="server" ID="fup_fileupload4" Visible="false" AllowMultiple="true" />
                                                    <asp:Label ID="lblfileName4" runat="server" Text=""></asp:Label>
                                                    <asp:Repeater ID="Repeater4" runat="server">
                                                        <ItemTemplate>
                                                            <%--  <img alt="" src='images/<%#Eval("ImageUrl") %>' height="50px" width="50px" />--%>
                                                            <asp:Image Visible="false" runat="server" ID="imgrow4" ImageUrl='<%# Eval("ImageUrl") %>' AlternateText="Photo" Width="100"
                                                                Height="100" BorderWidth="2px" CssClass="zoom" />
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                    <asp:Button runat="server" ID="btncontentupload4" OnClick="btncontentupload4_Click" Text="Upload" Visible="false" CssClass="btn btn-primary btn-sm" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <asp:Label runat="server" ID="lblheader5" Visible="false"></asp:Label><br />
                                                    <asp:TextBox runat="server" ID="txt_rowcontent5" class="form-control" Visible="false"></asp:TextBox>
                                                    <asp:FileUpload runat="server" ID="fup_fileupload5" Visible="false" AllowMultiple="true" />
                                                    <asp:Label ID="lblfileName5" runat="server" Text=""></asp:Label>
                                                    <asp:Repeater ID="Repeater5" runat="server">
                                                        <ItemTemplate>
                                                            <%--  <img alt="" src='images/<%#Eval("ImageUrl") %>' height="50px" width="50px" />--%>
                                                            <asp:Image runat="server" Visible="false" ID="imgrow5" ImageUrl='<%# Eval("ImageUrl") %>' AlternateText="Photo" Width="100"
                                                                Height="100" BorderWidth="2px" CssClass="zoom" />
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                    <asp:Button runat="server" ID="btncontentupload5" OnClick="btncontentupload5_Click" Text="Upload" Visible="false" CssClass="btn btn-primary btn-sm" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <asp:Label runat="server" ID="lblheader6" Visible="false"></asp:Label><br />
                                                    <asp:TextBox runat="server" ID="txt_rowcontent6" class="form-control" Visible="false"></asp:TextBox>
                                                    <asp:FileUpload runat="server" ID="fup_fileupload6" Visible="false" AllowMultiple="true" />
                                                    <asp:Label ID="lblfileName6" runat="server" Text=""></asp:Label>
                                                    <asp:Repeater ID="Repeater6" runat="server">
                                                        <ItemTemplate>
                                                            <%--  <img alt="" src='images/<%#Eval("ImageUrl") %>' height="50px" width="50px" />--%>
                                                            <asp:Image runat="server" Visible="false" ID="imgrow6" ImageUrl='<%# Eval("ImageUrl") %>' AlternateText="Photo" Width="100"
                                                                Height="100" BorderWidth="2px" CssClass="zoom" />
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                    <asp:Button runat="server" ID="btncontentupload6" OnClick="btncontentupload6_Click" Text="Upload" Visible="false" CssClass="btn btn-primary btn-sm" />
                                                </div>
                                            </div>
                                        </div>


                                        <asp:GridView runat="server" ID="grd_tablecontent" AutoGenerateColumns="true" Visible="false" Width="100%" GridLines="None" OnRowDataBound="grd_tablecontent_RowDataBound">
                                      <Columns>  
                                            <asp:TemplateField HeaderText="Status" HeaderStyle-CssClass="gridHeadStyle"
                                                                    ItemStyle-CssClass="table-avatar" HeaderStyle-Width="4%">
                                                                    <ItemTemplate>
                                                                        <asp:Button class="btn btn-primary btn-sm" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Download" >
                                                        <ItemTemplate>
                                                            <asp:HyperLink ID="lnk_url" runat="server" Text="View" Target="_blank" NavigateUrl=""></asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                         
                                      </Columns>
                                              </asp:GridView>
                                    </asp:Panel>
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group" style="text-align: center">
                                                <asp:Button runat="server" ID="btnviewtable" Text="Add to Table" Visible="false" OnClick="btnviewtable_Click" CssClass="btn btn-primary btn-sm" />
                                                <asp:Button runat="server" ID="btnfinalsubmit" OnClick="btnfinalsubmit_Click" Text="Submit" CssClass="btn btn-primary btn-sm" />
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>




                                <div class="col-lg-12">
                                    <asp:Panel runat="server" ID="pnl_view" Visible="true">

                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <asp:GridView ID="grid_data" Visible="true" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="grid_data_PageIndexChanging" PageSize="10" AllowSorting="true"
                                                    Width="100%" GridLines="None"
                                                    EmptyDataText="No details" OnRowCommand="grid_data_RowCommand">
                                                    <EmptyDataRowStyle Height="100px" HorizontalAlign="Center" CssClass="datatable table table-hover table-center mb-0" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="SI NO">

                                                            <ItemTemplate>
                                                                <%# Container.DataItemIndex + 1%>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Menu Name">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnk_menuName" runat="server" Text='<%# Eval("MenuName")%>' CommandArgument="<%# Container.DataItemIndex %>" CommandName="lnk_menunameclick"></asp:LinkButton>

                                                                <asp:HiddenField ID="lbl_menuId" runat="server" Value='<%# Eval("ID")%>' />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Description">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl_Description" runat="server" Text='<%# Eval("Description")%>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>


                                                        <asp:TemplateField HeaderText="Is Active">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl_IsActive" runat="server" Text='<%# Eval("IsActive").ToString() == "1" ? "Yes" : "NO"%>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Action">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" CommandArgument="<%# Container.DataItemIndex %>" CommandName="lnk_menunameclick" ID="btn_Edit"><asp:image imageurl="../Images/edit.svg" runat="server" Height="20px" Width="20px" /></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </table>
                                        </div>

                                    </asp:Panel>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>





                <asp:Panel ID="pnl_tableheader" runat="server" Visible="false">
                </asp:Panel>



            </div>
            <div class="row" id="div_Privew" runat="server" visible="false">
                <div class="col-lg-12" style="text-align: right">
                    <div class="form-group">
                        <div class="submit-section">
                            <asp:Button Text="Preview" class="btn btn-primary btn-lg" runat="server" ID="btn_Preview" OnClick="btn_Preview_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
