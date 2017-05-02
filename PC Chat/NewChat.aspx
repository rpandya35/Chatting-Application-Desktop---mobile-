<%@ Page Language="C#" MasterPageFile="~/Chat.master" AutoEventWireup="true" CodeFile="NewChat.aspx.cs" Inherits="NewChat" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#6EBAC9" Text="Chat"></asp:Label>
    <br />
    <asp:Label ID="C_ID" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="P_Name" runat="server" Visible="False"></asp:Label>
        <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#6EBAC9" 
        PostBackUrl="~/List.aspx">&lt;--  Home</asp:LinkButton>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="Label2" runat="server" Text="1" Visible="False"></asp:Label>
            <br />
            <div ID="" 
                style="overflow: auto; height: 300px; width: 95%; text-align: left; background-color: #41A7C3;" 
                class="intabular">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="White"></asp:Label>
            </div>
            <asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick">
            </asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" TextMode="MultiLine" 
            Width="438px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            Width="75px" CssClass="intabular" Height="30px" />
        <br />
    <br />
    <br />

</div>
</asp:Content>