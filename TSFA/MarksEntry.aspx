<%@ Page Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="MarksEntry.aspx.cs" Inherits="TSFA.MarksEntry" Title="Marks Entry" EnableEventValidation="false"%>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="wrapper">
<div class="container">
<div class="row">
<div class="title" align="center">
<br /></div>
<table align="center" style="border: 1px solid #000080;">
<tr>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td>
<td colspan="4" align="center">
<asp:Label ID="lblMarksEntry" runat="server" Text="Marks Entry" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td></tr>
<tr>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td>
<td colspan="4">&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td></tr>
<tr><td>&nbsp;</td>
<td><asp:Label ID="lblCourse" runat="server" Text="Course Name" Font-Bold="True"></asp:Label>
</td><td>&nbsp;</td>
<td><asp:DropDownList ID="ddlCourse" runat="server" Width="200px">
<asp:ListItem>Select</asp:ListItem>
<asp:ListItem>FRO</asp:ListItem>
<asp:ListItem>FSO</asp:ListItem>
<asp:ListItem>FBO</asp:ListItem></asp:DropDownList>
</td><td>&nbsp;</td>
<td><asp:Label ID="lblAssessment" runat="server" Text="Name of Assessment" Font-Bold="True"></asp:Label>
</td><td>&nbsp;</td>                       
<td><asp:DropDownList ID="ddlAssessment" runat="server" Width="200px" AutoPostBack="True">
<asp:ListItem>Select</asp:ListItem></asp:DropDownList>
</td><td>&nbsp;</td>
<td ><asp:Label ID="lblYear" runat="server" Text="Academic Year" Font-Bold="True"></asp:Label>
</td><td>&nbsp;</td>
<td><asp:DropDownList ID="ddlAcademicYear" runat="server" Width="200px" AutoPostBack="True">
<asp:ListItem>Select</asp:ListItem>
<asp:ListItem>2019-20</asp:ListItem>
<asp:ListItem>2020-21</asp:ListItem></asp:DropDownList>
</td><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>                       
<td>&nbsp;</td><td>&nbsp;</td>
<td >&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td>
<td><asp:Label ID="lblbachName" runat="server" Text="Bach Name" Font-Bold="True"></asp:Label></td>
<td>&nbsp;</td><td>
<asp:DropDownList ID="ddlBachName" runat="server" Width="200px" AutoPostBack="True">
<asp:ListItem>Select</asp:ListItem></asp:DropDownList>
</td><td>&nbsp;</td>
<td><asp:Label ID="lblTrimester" runat="server" Text="Trimester" Font-Bold="True"></asp:Label></td>
<td></td><td>
<asp:DropDownList ID="ddltrimester" runat="server" Width="200px" AutoPostBack="True">
<asp:ListItem>Select</asp:ListItem>
<asp:ListItem>I</asp:ListItem>
<asp:ListItem>II</asp:ListItem>
<asp:ListItem Value="EA">Extracurricular Activities</asp:ListItem></asp:DropDownList>
</td><td></td>
<td><asp:Label ID="lbltheory" runat="server" Text="Entry Type" Font-Bold="True"></asp:Label></td><td>&nbsp;</td>
<td>
<asp:DropDownList ID="ddlEntryType" runat="server" Width="200px" AutoPostBack="True">
<asp:ListItem>Select</asp:ListItem>
<asp:ListItem Value="0">Theory</asp:ListItem>
<asp:ListItem Value="1">Practical</asp:ListItem>
<asp:ListItem Value="EA">Extracurricular Activities</asp:ListItem>
</asp:DropDownList>
</td><td>&nbsp;</td>
</tr><tr><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr>
<tr><td>&nbsp;</td>
<td><asp:Label ID="lblfrm0" runat="server" Text="Student Name" Font-Bold="True"></asp:Label></td>
<td>&nbsp;</td><td>
<asp:DropDownList ID="ddlStudentName0" runat="server" Width="200px" AutoPostBack="True">
<asp:ListItem>Select</asp:ListItem></asp:DropDownList></td>
<td>&nbsp;</td><td>&nbsp;</td>
<td></td>
<td><asp:Button ID="BtnGetData" runat="server" Text="Get Data" Font-Bold="True" ForeColor="#CC0000" onclick="BtnGetData_Click" />
</td><td></td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr><tr><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr><tr><td>&nbsp;</td>
<td colspan="11" align="center">
<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" 
BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" Font-Bold="True" >
<Columns>
 <asp:TemplateField HeaderText = "Sl.No" >
<ItemTemplate>
<asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="Subject_Id" HeaderText="Subject Id"></asp:BoundField>
<asp:BoundField DataField="Subject_Name" HeaderText="Subjects"></asp:BoundField>
<asp:BoundField DataField="theory_Marks" HeaderText="Max Marks"></asp:BoundField>
<asp:TemplateField HeaderText="Marks Secured">
 <ItemTemplate>
 <asp:TextBox ID="TextBox1" runat="server" Width="100px"></asp:TextBox>
</ItemTemplate></asp:TemplateField>
</Columns>
<RowStyle BackColor="White" ForeColor="#330099" />
<FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
<PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
<SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
</asp:GridView>
<br />
</td><td>&nbsp;</td>
</tr><tr><td >&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>
<asp:Button ID="BtnSubmit" runat="server" Text="Submit" Font-Bold="True" ForeColor="#CC0000" />
</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr><tr><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr></table>
<br />
</div></div>
</div>
</asp:Content>
