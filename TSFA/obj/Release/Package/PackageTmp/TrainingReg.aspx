<%@ Page Language="C#" MasterPageFile="~/TSFA.Master" AutoEventWireup="true" CodeBehind="TrainingReg.aspx.cs" Inherits="TSFA.TrainingReg" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">
<!-- start: Container -->
<div class="container">
<!-- start: Row -->
<div class="row">
    <%--<h4>Application for NOC Non-Forest Land</h4>--%>
<div class="title" align="center">
<%--<h4>Application for NOC Non-Forest Land</h4>--%>
<br />
</div>
<table align="center" style="border: 1px solid #000080;">
<tr>
<td colspan="7" style="background-color: #3399FF; text-align: center;">
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td colspan="6"  align="center">
<asp:Label ID="lblRegistratin" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#993333" Text="Registration Form" Font-Size="Large"></asp:Label>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td >
<b>
<asp:Label ID="lblprograminfo" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#993333" Text="Program Information"></asp:Label></b>
</td>
<td>&nbsp;</td>                       
<td>&nbsp;</td>
<td>&nbsp;</td>
<td >&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td >&nbsp;</td>
<td >
<asp:Label ID="lblApplicantName" runat="server" Text="Program Name "></asp:Label>
</td>
<td>&nbsp;</td>                       
<td><asp:TextBox ID="txtProgramName" runat="server" Width="200px" MaxLength="300" ></asp:TextBox>
</td>
<td>&nbsp;</td>
<td >
<asp:Label ID="lblfname" runat="server" Text="Program No"></asp:Label>
</td>
<td><asp:TextBox ID="txtFatherName" runat="server" Width="200px" MaxLength="300" ></asp:TextBox>
</td></tr>
<tr><td ></td>
<td ><asp:Label ID="lblfrm" runat="server" Text="Program  From Date"></asp:Label></td>
<td ></td>
<td ><asp:TextBox ID="txtAge" runat="server" Width="200px" MaxLength="3" ></asp:TextBox>
</td><td ></td>
<td ><asp:Label ID="lbltodate" runat="server" Text="Program To Date"></asp:Label></td>
<td ><asp:TextBox ID="txtAge1" runat="server" Width="200px" MaxLength="3" ></asp:TextBox>
</td></tr>
<tr><td ></td>
<td ><asp:Label ID="lblreportedDate" runat="server" Text="Reported Date" ></asp:Label></td>
<td ></td>
<td ><asp:TextBox ID="txtAge0" runat="server" Width="200px" MaxLength="3" ></asp:TextBox>
</td><td ></td>
<td >&nbsp;</td>
<td >&nbsp;</td>
</tr>
<tr><td ></td><td colspan="6" ><b>
<asp:Label ID="lblApplicantDetails0" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#993333" Text="Personal Details"></asp:Label></b></td></tr>
<tr>
<td >&nbsp;</td>
<td ><asp:Label ID="lblName" runat="server" Text="Name" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtSurvey" runat="server" Width="200px"></asp:TextBox>
</td>
<td >&nbsp;</td>
<td ><asp:Label ID="lblsurname" runat="server" Text="Sur Name" ></asp:Label></td>
<td >
<asp:TextBox ID="txtSurvey0" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td ><asp:Label ID="lblName0" runat="server" Text="Father's Name" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtfather" runat="server" Width="200px"></asp:TextBox>
</td>
<td >&nbsp;</td>
<td ><asp:Label ID="lblgender" runat="server" Text="Gender" ></asp:Label></td>
<td >
<asp:DropDownList ID="ddlgender" runat="server" Width="200px">
<asp:ListItem>Select</asp:ListItem>
<asp:ListItem>Male</asp:ListItem>
<asp:ListItem>Female</asp:ListItem>
</asp:DropDownList>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td ><asp:Label ID="lbldob0" runat="server" Text="Date of Birth" ></asp:Label></td>
<td >&nbsp;</td>
<td ><asp:TextBox ID="txtdob0" runat="server" Width="200px"></asp:TextBox>
</td><td >&nbsp;</td>
<td ><asp:Label ID="lblcaste" runat="server" Text="Caste" ></asp:Label></td>
<td ><asp:DropDownList ID="ddlgender0" runat="server" Width="200px">
<asp:ListItem>Select</asp:ListItem>
<asp:ListItem>SC</asp:ListItem>
<asp:ListItem>ST</asp:ListItem>
<asp:ListItem>BC</asp:ListItem>
<asp:ListItem>Others</asp:ListItem>
</asp:DropDownList>
</td></tr>
<tr><td >&nbsp;</td>
<td ><asp:Label ID="lblcell" runat="server" Text="Home Contact No" ></asp:Label></td>
<td >&nbsp;</td>
<td ><asp:TextBox ID="txtdob1" runat="server" Width="200px"></asp:TextBox>
</td><td >&nbsp;</td>
<td ><asp:Label ID="lblcell0" runat="server" Text="Mobile No" ></asp:Label></td>
<td ><asp:TextBox ID="txtdob2" runat="server" Width="200px"></asp:TextBox>
</td></tr>
<tr>
<td >&nbsp;</td>
<td ><asp:Label ID="lblmailid" runat="server" Text="Mail Id" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob3" runat="server" Width="200px"></asp:TextBox>
</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
</tr>
<tr><td >&nbsp;</td>
<td ><asp:Label ID="lblemergency" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#993333" Text="Emergency Contact Details"></asp:Label></td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
</tr><tr>
<td >&nbsp;</td>
<td ><asp:Label ID="lblName1" runat="server" Text="Name" ></asp:Label></td>
<td>&nbsp;</td>
<td><asp:TextBox ID="txtNorth" runat="server" BorderStyle="Solid" Width="200px" BorderWidth="1px"></asp:TextBox>
</td>
<td>&nbsp;</td>
<td ><asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label></td>
<td><asp:TextBox ID="txtSouth" runat="server" BorderStyle="Solid" Width="200px" BorderWidth="1px"></asp:TextBox>
</td>
</tr>
<tr><td >&nbsp;</td>
<td ><asp:Label ID="lblrelation" runat="server" Text="East"></asp:Label></td>
<td>&nbsp;</td>
<td>
<asp:DropDownList ID="ddCat0" runat="server" Width="200px">
<asp:ListItem Value="0">Select</asp:ListItem>
<asp:ListItem>Father</asp:ListItem>
<asp:ListItem>Mother</asp:ListItem>
<asp:ListItem>Wife</asp:ListItem>
<asp:ListItem>Husband</asp:ListItem>
<asp:ListItem>Brother</asp:ListItem>
<asp:ListItem>Sister</asp:ListItem>
</asp:DropDownList>
</td>
<td>&nbsp;</td>
<td ><asp:Label ID="lblmobileno" runat="server" Text="Contact no"></asp:Label></td>
<td>
<asp:TextBox ID="txtWest" runat="server" BorderStyle="Solid" Width="200px" BorderWidth="1px"></asp:TextBox>
</td>
</tr>
<tr>
<td ></td>
<td >&nbsp;</td>
<td ></td>
<td >&nbsp;</td>
<td ></td>
<td >&nbsp;</td>
<td >&nbsp;</td>
</tr>
<tr>
<td >&nbsp;</td>
<td >
<asp:Label ID="lblemergency0" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#993333" Text="Office Details"></asp:Label></td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
</tr>
<tr>
<td ></td>
<td  ><asp:Label ID="lblName2" runat="server" Text="Name of The Office" ></asp:Label></td>
<td  ></td>
<td  >
<asp:TextBox ID="txtdob4" runat="server" Width="200px"></asp:TextBox>
</td>
<td  ></td>
<td  ><asp:Label ID="lblName3" runat="server" Text="Office Address" ></asp:Label></td>
<td  ><asp:TextBox ID="txtdob5" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td ><asp:Label ID="lblName4" runat="server" Text="Office Phone No" ></asp:Label></td>
<td >&nbsp;</td>
<td ><asp:TextBox ID="txtdob6" runat="server" Width="200px"></asp:TextBox>
</td><td >&nbsp;</td>
<td ><asp:Label ID="lblName5" runat="server" Text="Desiognation" ></asp:Label></td>
<td >
<asp:DropDownList ID="ddCat1" runat="server" Width="200px">
<asp:ListItem Value="0">Select</asp:ListItem>
<asp:ListItem>DRo</asp:ListItem>
<asp:ListItem>FSO</asp:ListItem>
<asp:ListItem>FBO</asp:ListItem>
<asp:ListItem>DPO</asp:ListItem>
<asp:ListItem>DEO</asp:ListItem>
</asp:DropDownList>
</td>
</tr>
<tr>
<td ></td>
<td  ><asp:Label ID="lblName6" runat="server" Text="Present Cadre" ></asp:Label></td>
<td  ></td>
<td  >
<asp:TextBox ID="txtdob7" runat="server" Width="200px"></asp:TextBox>
</td><td ></td>
<td  ><asp:Label ID="lblName7" runat="server" Text="Date of  Join Present Cadre" ></asp:Label></td>
<td  >
<asp:TextBox ID="txtdob8" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td  >&nbsp;</td>
<td >
<asp:Label ID="lblemergency1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#993333" Text="Education Details"></asp:Label></td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
</tr>
<tr>
<td >&nbsp;</td>
<td  align="center"><asp:Label ID="lblName19" runat="server" Text="SNo" Font-Underline="True" ForeColor="#993333" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:Label ID="lblName8" runat="server" Text="Qualificaton" Font-Underline="True" ForeColor="#993333" ></asp:Label></td>
<td >&nbsp;</td>
<td ><asp:Label ID="lblName9" runat="server" Text="Year of Pass" Font-Underline="True" ForeColor="#993333" ></asp:Label></td>
<td >
<asp:Label ID="lblName10" runat="server" Text="University/ Collage/ School Name" Font-Underline="True" ForeColor="#993333" ></asp:Label>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td  align="center">1</td>
<td >&nbsp;</td>
<td >
<asp:Label ID="lblName15" runat="server" Text="Post Graduation" Font-Underline="True" ForeColor="Blue" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob13" runat="server" Width="200px"></asp:TextBox>
</td>
<td >
<asp:TextBox ID="txtdob17" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td align="center">2</td>
<td >&nbsp;</td>
<td >
<asp:Label ID="lblName16" runat="server" Text="Degree" Font-Underline="True" ForeColor="Blue" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob14" runat="server" Width="200px"></asp:TextBox>
</td>
<td >
<asp:TextBox ID="txtdob18" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td align="center">3</td>
<td >&nbsp;</td>
<td >
<asp:Label ID="lblName17" runat="server" Text="Intermediate" Font-Underline="True" ForeColor="Blue" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob15" runat="server" Width="200px"></asp:TextBox>
</td>
<td >
<asp:TextBox ID="txtdob19" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td align="center">4</td>
<td >&nbsp;</td>
<td >
<asp:Label ID="lblName18" runat="server" Text="SSC" Font-Underline="True" ForeColor="Blue" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob16" runat="server" Width="200px"></asp:TextBox>
</td>
<td >
<asp:TextBox ID="txtdob20" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td></td>
<td  >
<asp:Label ID="lblemergency2" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#993333" Text="Last 5 Years Training Details"></asp:Label></td>
<td ></td>
<td ></td>
<td  ></td>
<td  ></td>
<td  ></td>
</tr>
<tr>
<td >&nbsp;</td>
<td align="center" >
<asp:Label ID="lblName20" runat="server" Text="SNo" Font-Underline="True" ForeColor="#993333" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:Label ID="lblName21" runat="server" Text="Training Name" Font-Underline="True" ForeColor="#993333" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:Label ID="lblName22" runat="server" Text="Place of Training" Font-Underline="True" ForeColor="#993333" ></asp:Label></td>
<td >
<asp:Label ID="lblName23" runat="server" Text="Date" Font-Underline="True" ForeColor="#993333" ></asp:Label></td>
</tr>
<tr>
<td >&nbsp;</td>
<td align="center">1</td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob21" runat="server" Width="200px"></asp:TextBox>
</td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob25" runat="server" Width="200px"></asp:TextBox>
</td>
<td >
<asp:TextBox ID="txtdob29" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td align="center">2</td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob22" runat="server" Width="200px"></asp:TextBox>
</td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob26" runat="server" Width="200px"></asp:TextBox>
</td>
<td >
<asp:TextBox ID="txtdob30" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td ></td>
<td align="center">3&nbsp;</td>
<td ></td>
<td >
<asp:TextBox ID="txtdob23" runat="server" Width="200px"></asp:TextBox>
</td>
<td  ></td>
<td  >
<asp:TextBox ID="txtdob27" runat="server" Width="200px"></asp:TextBox>
</td>
<td >
<asp:TextBox ID="txtdob31" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td ></td>
<td align="center">4</td>
<td ></td>
<td >
<asp:TextBox ID="txtdob24" runat="server" Width="200px"></asp:TextBox>
</td><td ></td>
<td >
<asp:TextBox ID="txtdob28" runat="server" Width="200px"></asp:TextBox>
</td>
<td >
<asp:TextBox ID="txtdob32" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td align="center">5</td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob33" runat="server" Width="200px"></asp:TextBox>
</td>
<td >&nbsp;</td>
<td >
<asp:TextBox ID="txtdob34" runat="server" Width="200px"></asp:TextBox>
</td>
<td >
<asp:TextBox ID="txtdob35" runat="server" Width="200px"></asp:TextBox>
</td>
</tr>
<tr>
<td >&nbsp;</td>
<td ><asp:Label ID="lblemergency3" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#993333" Text="Food Details"></asp:Label></td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
</tr>
<tr>
<td >&nbsp;</td>
<td ><asp:Label ID="lblName24" runat="server" Text="Food Type" ></asp:Label></td>
<td >&nbsp;</td>
<td >
<asp:DropDownList ID="ddCat2" runat="server" Width="200px">
<asp:ListItem Value="0">Select</asp:ListItem>
<asp:ListItem>Vegetarian</asp:ListItem>
<asp:ListItem>Non-Vegetarian</asp:ListItem>
</asp:DropDownList>
</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
</tr>
<tr>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
</tr>
<tr>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >
    <asp:Button ID="BtnSubmit" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="#CC0000" Text="Save" Width="120px" />
    </td>
<td >&nbsp;</td>
</tr>
<tr>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
<td >&nbsp;</td>
</tr>
</table>
<br />
<hr />
<br />
<div  align="center">
<br />
</div>
</div>
<!-- end: Row -->
</div>
<!-- end: Container -->
</div>
<!-- end: Wrapper  -->
</asp:Content>
