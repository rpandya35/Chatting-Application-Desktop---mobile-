<%@ Page Language="C#" MasterPageFile="~/MChat.master" AutoEventWireup="true" CodeFile="MChat.aspx.cs" Inherits="MChat" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="C_ID" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="P_Name" runat="server" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#6EBAC9" Text="Chat"></asp:Label>
        <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#6EBAC9" 
        PostBackUrl="~/MList.aspx">&lt;--  Home</asp:LinkButton>
    <br />
    <div style="width: 95%">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="Label2" runat="server" Text="1"></asp:Label>
            <asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick">
            </asp:Timer>
            <br />
            <div ID="" 
                style="overflow: auto; height: 300px; width: 95%; text-align: left; background-color: #41A7C3;" 
                align="left" class="intabular">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="White"></asp:Label>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
    <br />
    <br />
    <table width="90%">
        <tr>
            <td width="80%">
            <asp:TextBox ID="TextBox1" runat="server" Height="32px" TextMode="MultiLine" 
            Width="90%"></asp:TextBox>
            </td>
            <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            Width="100%" CssClass="intabular" Height="30px" />
            </td>
        </tr>
    </table>
        
&nbsp;&nbsp;
        
        <br />

</div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
</asp:Content>
