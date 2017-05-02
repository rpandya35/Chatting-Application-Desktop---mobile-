<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="Login.aspx.cs" Inherits="member_login" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="X-Large" 
        Text="Member Login" Font-Underline="True" ForeColor="#64C0D9"></asp:Label>

    <br />
    <br />
    <br />

    <asp:Label ID="Label1" runat="server" Text="Member ID  :"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" CssClass="tabular" Font-Size="Large" Width="250px"></asp:TextBox>&nbsp;&nbsp;&nbsp; <br /><br />
    <asp:Label ID="Label2" runat="server" Text="Password  :"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox  ID="TextBox2" runat="server" TextMode="Password" CssClass="tabular" Font-Size="Large" Width="250px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Login" 
    onclick="Button1_Click1" CssClass="intabular" Height="40px" Width="140px" BackColor="White" BorderColor="#196BA1" />
    <br />
    <br />
    Don&#39;t Have an Account ?&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#64C0D9" 
        PostBackUrl="~/register.aspx">Click Here</asp:LinkButton>
    <br />
    <br />
    <br />
</asp:Content>



