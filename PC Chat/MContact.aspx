<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Mobile.master" CodeFile="MContact.aspx.cs" Inherits="MContact" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

    <br />
    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#64C0D9" Text="Contacts"></asp:Label>
    <br />
        <br />
    <br />
        <asp:Label ID="Label2" runat="server" Text="Name  :-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
        <br />
        <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" CellPadding="6" 
        ForeColor="Black" GridLines="None" Width="60%" 
        onrowcommand="GridView1_RowCommand" AutoGenerateColumns="False">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#64C0D9" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />

        <Columns>
            <asp:ImageField HeaderText="Image" DataImageUrlField="Image1">
            <ItemStyle Width="33%"></ItemStyle>
            </asp:ImageField>
            
            <asp:BoundField HeaderText="Name" DataField="Name1">
            <ItemStyle Width="33%"></ItemStyle>
            </asp:BoundField>

            <asp:TemplateField HeaderText ="Chat">
                <ItemTemplate>
                    <asp:LinkButton ID="Chat" runat ="server" ForeColor="Black"  CommandArgument='<%#Eval("Name1")%>' Text ="Chat" CommandName ="Chat" ></asp:LinkButton>
                    <ItemStyle Width="33%"></ItemStyle>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" CellPadding="6" 
        ForeColor="Black" GridLines="None" Width="60%"  ShowHeader="false"
        onrowcommand="GridView2_RowCommand" AutoGenerateColumns="False">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle  BackColor="White" ForeColor="White"/>
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle Font-Underline="False" Wrap="False" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />

        <Columns>
            <asp:ImageField HeaderText="Image" DataImageUrlField="Image2">
            <ItemStyle Width="33%"></ItemStyle>
            </asp:ImageField>

            <asp:BoundField HeaderText="Name" DataField="Name2">
            <ItemStyle Width="33%"></ItemStyle>
            </asp:BoundField >
            
            <asp:TemplateField HeaderText ="Chat">
                <ItemTemplate>
                    <asp:LinkButton ID="Chat0" runat ="server" ForeColor="Black" CommandArgument='<%#Eval("Name2")%>' Text ="Chat" CommandName ="Chat" ></asp:LinkButton>
                    <ItemStyle Width="33%"></ItemStyle>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />

</div>
</asp:Content>