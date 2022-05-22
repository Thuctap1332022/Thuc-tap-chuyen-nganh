<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TacGia.aspx.cs" Inherits="QLTV.TacGia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
          <h1 class="auto-style1">Quản lý tác giả <a href="AddTG.aspx">+</a> </h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="maTG" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="maTG" HeaderText="Mã tác giả" ReadOnly="True" SortExpression="maTG" />
                <asp:BoundField DataField="tenTG" HeaderText="Tên tác giả" SortExpression="tenTG" />
                <asp:BoundField DataField="ghiChu" HeaderText="Ghi chú" SortExpression="ghiChu" />
                 <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                            OnClientClick="return confirm ('Bạn có chắc muốn xoá không?')"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <button><a href='EditTG.aspx?maTG=<%#Eval("maTG")%>'>Edit</a></button>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" SelectCommand="SELECT * FROM [TACGIA]" DeleteCommand="DELETE FROM [TACGIA] WHERE [maTG] = @maTG" InsertCommand="INSERT INTO [TACGIA] ([maTG], [tenTG], [ghiChu]) VALUES (@maTG, @tenTG, @ghiChu)" UpdateCommand="UPDATE [TACGIA] SET [tenTG] = @tenTG, [ghiChu] = @ghiChu WHERE [maTG] = @maTG">
            <DeleteParameters>
                <asp:Parameter Name="maTG" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="maTG" Type="Int32" />
                <asp:Parameter Name="tenTG" Type="String" />
                <asp:Parameter Name="ghiChu" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tenTG" Type="String" />
                <asp:Parameter Name="ghiChu" Type="String" />
                <asp:Parameter Name="maTG" Type="Int32" />
            </UpdateParameters>
          </asp:SqlDataSource>
    </form>
</asp:Content>
