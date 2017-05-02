<%@ Page Language="C#" MasterPageFile="~/Mobile.master" AutoEventWireup="true" CodeFile="MLogin.aspx.cs" Inherits="MLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="X-Large" 
        Text="Member Login" Font-Underline="True" ForeColor="#64C0D9"></asp:Label>

    <br />
    <br />
    <br />

    <asp:Label ID="Label1" runat="server" Text="Member ID"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp; <br /><br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox  ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Login" 
    onclick="Button1_Click1" CssClass="intabular" Height="32px" Width="80px" />
    <br />
    <br />
    <asp:Label ID="err" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
    <br />
    <br />
</asp:Content>



