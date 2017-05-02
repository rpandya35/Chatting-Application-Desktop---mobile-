<%@ Page Language="C#" MasterPageFile="~/Chat.master" AutoEventWireup="true" CodeFile="ChatC.aspx.cs" Inherits="ChatC" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="width: 80%; background-color: #218CD3;" class="tabular">
        <br />
        <table width="90%">
            <tr>
                <td width="70%" align="left" style="margin: 5px; padding: 5px; border-color: #FFFFFF">
                    <div style="background-color: #FFFFFF" class="tabular" align="left">
                        <div style="padding-left: 5px;">
                            <asp:Label ID="Label1" runat="server" Text="Hi how are you ?" ForeColor="#196BA1"></asp:Label>
                        </div>
                        <div align="right" style="padding-right: 5px;">
                            <asp:Label ID="Label2" runat="server" Text="18:00  2016/11/01 " Font-Size="X-Small" ForeColor="#196BA1"></asp:Label>
                        </div>
                    </div>
                </td>
            </tr>

             <tr>
                <td width="70%" align="right" style="margin: 5px; padding: 5px; border-color: #FFFFFF">
                    <div style="background-color: #FFFFFF" class="tabular" align="left">
                        <div align="right" style="padding-right: 5px;">
                            <asp:Label ID="Label3" runat="server" Text="Hi how are you ?" ForeColor="#196BA1"></asp:Label>
                        </div>
                        <div style="padding-left: 5px;">
                            <asp:Label ID="Label4" runat="server" Text="18:00  2016/11/01 " Font-Size="X-Small" ForeColor="#196BA1"></asp:Label>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <br />
</asp:Content>