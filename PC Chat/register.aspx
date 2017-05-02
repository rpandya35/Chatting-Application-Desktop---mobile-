<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>


        <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="X-Large" 
        Text="Register" Font-Underline="True" ForeColor="#64BFDC"></asp:Label>
    <br />
        <br />
    <br />
    &nbsp;
    <asp:Label ID="Label2" runat="server" Text="ID  :-"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Password  :-"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Mobile Number  :-"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Enter Valid Mobile Number" ControlToValidate="TextBox3" 
        ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Email ID  :-"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ErrorMessage="Enter Valid Email ID" ControlToValidate="TextBox5" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label8" runat="server" Text="Image  :-"></asp:Label>
&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Upload" onclick="Button3_Click" />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="145px" Width="145px" />
        <br />
        <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
        Text="Submit" CssClass="intabular" Height="32px" Width="80px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" 
            CssClass="intabular" Height="32px" Width="80px" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;
    <br />


</div>

</asp:Content>