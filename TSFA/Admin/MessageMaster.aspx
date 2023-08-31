<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="MessageMaster.aspx.cs" Inherits="TSFA.Admin.MessageMaster" %>

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
                        <h3 class="page-title">Message</h3>

                    </div>
                </div>
            </div>


            <%--    <div class="row">
                <div class="col-sm-8">
                    <asp:Label runat="server" ID="lblselect" Text="Select Administration Member Name:" Font-Bold="true"></asp:Label>
                    <br />
                    <asp:DropDownList runat="server" ID="ddlAdministrationMemberName" OnSelectedIndexChanged="ddlAdministrationMemberName_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    <asp:HiddenField runat="server" ID="hdnAdministrationMemberName_fk" />
                    <br />
                    <br />

                </div>
            </div>--%>

            <div class="row">

                <%-- <div class="col-lg-5">
                    <div class="form-group">
                        <asp:TextBox runat="server" class="form-control" placeholder="Search here" ID="txt_search" Visible="false" OnTextChanged="txt_search_TextChanged" />
                        <cc1:AutoCompleteExtender ClientIDMode="Static" EnableCaching="false" ServiceMethod="SearchText" MinimumPrefixLength="1"
                            CompletionInterval="100" CompletionSetCount="10" TargetControlID="txt_search" ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false">
                        </cc1:AutoCompleteExtender>
                    </div>
                </div>--%>
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
                                                <label>Guest Name<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txt_GuestName" />

                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>Guest Designation<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txt_designation"  />

                                            </div>
                                        </div>
                                  
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:Label ID="lblfromdate" runat="server" Visible="true" Text="From Date: "></asp:Label>
                                                <asp:TextBox ID="txtfromdate" runat="server" Class="form-control" TextMode="Date"></asp:TextBox>

                                            
                                            </div>

                                        </div>

                                        <div class="col-lg-4">
                                            <asp:Label ID="lbltodate" runat="server" Visible="true" Text="To Date: "></asp:Label>
                                            <asp:TextBox ID="txttodate" runat="server" Class="form-control" TextMode="Date"></asp:TextBox>


                                        </div>
                                    </div>
                                    <br />  
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Description<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txtdescription" TextMode="MultiLine" />

                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                  <label>Guest Photo<span class="text-danger">*</span></label>
                                                <br />
                                                <asp:FileUpload runat="server" ID="fu_photoupload" multiple="" accept="image/jpeg, image/png, image/gif," />
                                                <asp:Button Text="Upload" runat="server" CssClass="btn btn-primary btn-sm" ID="btn_photouploadupload" OnClick="btn_photouploadupload_Click" />
                                                <%-- <asp:Image ImageUrl="Images/right.svg" runat="server" ID="img_barcouncilIDuploadsucess" Visible="false" Height="20px" />--%>
                                                <asp:Image ID="img_photouploadupload" runat="server" Width="100px" Height="100px" Visible="false"  />

                                            </div>
                                        </div>
                                    </div>

                                    <div class="submit-section">
                                        <asp:Button Text="Submit" runat="server" class="btn btn-primary submit-btn" ID="btn_submit" OnClick="btn_submit_Click" />

                                    </div>
                                </asp:Panel>
                                <asp:Panel runat="server" ID="pnl_view" Visible="true">

                                    <div class="table-responsive">
                                        <table class="table mb-0">
                                            <asp:GridView ID="grid_data" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" AllowSorting="true"
                                                Width="100%" GridLines="None"
                                                EmptyDataText="No details" OnRowCommand="grid_data_RowCommand">
                                                <EmptyDataRowStyle Height="100px" HorizontalAlign="Center" CssClass="datatable table table-hover table-center mb-0" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="SI NO">

                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    
                                                    <asp:TemplateField HeaderText="pk" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_pk" runat="server" Text='<%# Eval("pk")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Guest Name">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_GuestName" runat="server" Text='<%# Eval("GuestName")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                     <asp:TemplateField HeaderText="Guest Designation">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_Guestdesignation" runat="server" Text='<%# Eval("Guestdesignation")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                 <%--   <asp:TemplateField HeaderText="Description">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_desc" runat="server" Text='<%# Eval("Description")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>--%>

                                                    <asp:TemplateField HeaderText="From Date">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_frmdate" runat="server" Text='<%# Eval("FromDate")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="To Date">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_todate" runat="server" Text='<%# Eval("ToDate")%>'></asp:Label>
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
