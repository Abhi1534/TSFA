<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FacilityMaster.aspx.cs" Inherits="TSFA.Admin.FacilityMaster" %>

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
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="page-title">Facilities</h3>

                    </div>
                </div>
            </div>



            <div class="row">

                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:TextBox runat="server" class="form-control" placeholder="Search here" ID="txt_search" Visible="true" OnTextChanged="txt_search_TextChanged" />
                        <cc1:AutoCompleteExtender ClientIDMode="Static" EnableCaching="false" ServiceMethod="SearchText" MinimumPrefixLength="1"
                            CompletionInterval="100" CompletionSetCount="10" TargetControlID="txt_search" ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false">
                        </cc1:AutoCompleteExtender>
                    </div>
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
            <div class="alert alert-danger" runat="server" visible="false" id="div_fail">
                <strong>fail!</strong>
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

                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>Facility Name<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txtfacilityname" />

                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Description<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txtdescription" TextMode="MultiLine" />

                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>From Date:<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txtfromdate" TextMode="Date"  required=""  />
                                                <%--<cc1:CalendarExtender ID="cEfromDate" runat="server" TargetControlID="txtfromdate"
                                                    Format="dd/MM/yyyy" PopupPosition="TopRight"></cc1:CalendarExtender>--%>

                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>To Date:<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txttodate" TextMode="Date" required="" />
                                               <%-- <cc1:CalendarExtender ID="cEtoDate" runat="server" TargetControlID="txttodate"
                                                    Format="dd/MM/yyyy" PopupPosition="TopRight"></cc1:CalendarExtender>--%>

                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="form-group">
                                                    <label>Files<span class="text-danger">*</span></label>
                                                </div>

                                                <%--</asp:Label>--%>
                                                <asp:FileUpload ID="ctrlphotoupload" data-max-size="2048" runat="server" Width="50%" CssClass="txtbox" AllowMultiple="true"
                                                    EnableViewState="true" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button runat="server" ID="btnphotoupload" Text="Upload" OnClick="btnupload_Click"
                            CausesValidation="false" />
                                                <asp:Label runat="server" ID="lbluploadwardphoto" Text="" />
                                                <%--<asp:LinkButton ID="href_wardphotofilename" runat="server" OnClick="DownloadFile"></asp:LinkButton>--%>
                                                <asp:LinkButton runat="server" ID="lnk_removeward" Text="Remove" OnClick="lnk_removeward_Click"
                                                    Visible="false" CausesValidation="false" />
                                                <asp:HiddenField ID="ctrlphotouploadfilename" runat="server" Value="" />
                                                <br />
                                                <asp:Repeater ID="rptImage" runat="server" OnItemDataBound="rptImage_ItemDataBound">
                                                    <ItemTemplate>
                                                        <%--  <img alt="" src='images/<%#Eval("ImageUrl") %>' height="50px" width="50px" />--%>
                                                        <asp:Image runat="server" ID="imgwardphoto" ImageUrl='<%# Eval("ImageUrl") %>' AlternateText="Photo" Width="100"
                                                            Height="100" BorderWidth="2px" CssClass="zoom" />
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="submit-section">
                                        <asp:Button Text="Save" runat="server" class="btn btn-primary submit-btn" ID="btn_submit" OnClick="btn_submit_Click" />

                                    </div>
                                </asp:Panel>
                                <asp:Panel runat="server" ID="pnl_view" Visible="true">

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
                                                    <asp:TemplateField HeaderText="Facility Name">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_FacilityName" runat="server" Text='<%# Eval("facilityName")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Description">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_Description" runat="server" Text='<%# Eval("Description")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="From Date">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_fromdate" runat="server" Text='<%# Eval("FromDate","{0:dd/MM/yyyy}")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="To Date">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_todate" runat="server" Text='<%# Eval("ToDate","{0:dd/MM/yyyy}")%>'></asp:Label>
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

                                </asp:Panel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</asp:Content>

