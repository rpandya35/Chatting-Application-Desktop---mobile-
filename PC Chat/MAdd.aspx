<%@ Page Language="C#" MasterPageFile="~/Mobile.master" AutoEventWireup="true" CodeFile="MAdd.aspx.cs" Inherits="MAdd" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

    <br />
    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#64C0D9" Text="Add Contacts"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Horizontal" Width="70%" 
        onrowcommand="GridView1_RowCommand">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#64C0D9" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />

        <Columns>
          <asp:TemplateField HeaderText ="Add">
            <ItemTemplate>
                <asp:LinkButton ID="Add" runat ="server" CommandArgument='<%#Eval("Name")%>' Text ="Add" CommandName ="Add" ></asp:LinkButton>
            </ItemTemplate>
          </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />

</div>
</asp:Content>