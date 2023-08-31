<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdministartionMembers.aspx.cs" Inherits="TSFA.Admin.AdministartionMembers" %>

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
                        <h3 class="page-title">Administration Members </h3>

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
                                        <div class="col-sm-4">
                                       
                                            <label>Adminitrative Type<span class="text-danger">*</span></label>
                                            <asp:DropDownList runat="server"  class="form-control select" ID="ddladministrationtype"></asp:DropDownList>
                                       

                                           
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>Administration Member Name<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txt_AdministrationMemberName" />

                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>Designantion<span class="text-danger">*</span></label><br />
                                                <asp:TextBox runat="server" class="form-control" ID="txtdesignation"></asp:TextBox>

                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>Department<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txtdepartment" />

                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>Mobile Number<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txtmobilenumber" />

                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>Email ID<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txtemailid" />

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
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Address<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txtaddress" TextMode="MultiLine" />

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                               <asp:FileUpload runat="server" ID="fu_photoupload" multiple="" accept="image/jpeg, image/png, image/gif," />
                                                <asp:Button Text="Upload" runat="server" CssClass="btn btn-primary btn-sm" ID="btn_photouploadupload" OnClick="btn_photouploadupload_Click" />
                                                <%-- <asp:Image ImageUrl="Images/right.svg" runat="server" ID="img_barcouncilIDuploadsucess" Visible="false" Height="20px" />--%>
                                                <asp:Image ID="img_photouploadupload" runat="server" Width="100px" Height="100px" Visible="false" CssClass="zoom" />
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <%--<div class="row">

                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Description<span class="text-danger">*</span></label>
                                                <asp:TextBox runat="server" class="form-control" ID="txt_description" TextMode="MultiLine" />
                                            </div>
                                        </div>
                                    </div>--%>
                                    <div class="submit-section">
                                        <asp:Button Text="Submit" runat="server" class="btn btn-primary submit-btn" ID="btn_submit" OnClick="btn_submit_Click" />

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
                                                    <asp:TemplateField HeaderText="AdministrationMemberID" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_AdministrationMemberID" runat="server" Text='<%# Eval("pk")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Administration Member Name">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_AdministrationMemberName" runat="server" Text='<%# Eval("AdministrationMemberName")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Designation">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_Description" runat="server" Text='<%# Eval("Designation")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Department">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_Department" runat="server" Text='<%# Eval("Department")%>'></asp:Label>
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
