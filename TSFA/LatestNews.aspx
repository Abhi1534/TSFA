<%@ Page Title="Latest News" Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="LatestNews.aspx.cs" Inherits="TSFA.LatestNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="item item1 text-center">
                    <div class="content pd_0px">
                        <h5 class="margin-15px-bottom mn"><a>Latest News</a></h5>
                    </div>
                </div>
            </div>
            <table class="table table-hover">
                <th>Sl.No.</th>
                <th>Date</th>
                <th>Description</th>
                <th>Download</th>

                <asp:Repeater runat="server" ID="rp_latestnews">
                    <ItemTemplate>
                        <tr>
                            <td scope="row"><%# Container.ItemIndex + 1%></td>
                            <td><%# Eval("LatestNewsDate", "{0:dd-MM-yyyy}")%></td>
                            <td><%# Eval("LatestNewsName")%></td>
                            <td><a href='<%# Eval("Docpath")%>'><i class="fa fa-download"></i></a></td>
                        </tr>

                    </ItemTemplate>
                </asp:Repeater>


            </table>

        </div>
    </div>

</asp:Content>
