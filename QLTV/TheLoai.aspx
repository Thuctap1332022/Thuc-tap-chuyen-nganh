<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TheLoai.aspx.cs" Inherits="QLTV.TheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
                        <h1 class="auto-style1">Quản lý thể loại <a href="AddTL.aspx">+</a> </h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="maTL" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="maTL" HeaderText="Mã thể loại" ReadOnly="True" SortExpression="maTL" />
            <asp:BoundField DataField="tenTL" HeaderText="Tên thể loại" SortExpression="tenTL" />
            <asp:BoundField DataField="ghiChu" HeaderText="Ghi chú" SortExpression="ghiChu" />
            <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                            OnClientClick="return confirm ('Bạn có chắc muốn xoá không?')"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <button><a href='EditTL.aspx?maTL=<%#Eval("maTL")%>'>Edit</a></button>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>"
            SelectCommand="SELECT * FROM [THELOAI]"
            DeleteCommand="DELETE FROM [THELOAI] WHERE [maTL] = @maTL" InsertCommand="INSERT INTO [THELOAI] ([maTL], [tenTL], [ghiChu]) VALUES (@maTL, @tenTL, @ghiChu)" UpdateCommand="UPDATE [THELOAI] SET [tenTL] = @tenTL, [ghiChu] = @ghiChu WHERE [maTL] = @maTL">
         <DeleteParameters>
                <asp:Parameter Name="maTL" Type="Int32" />
         </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="maTL" Type="Int32" />
                <asp:Parameter Name="tenTL" Type="String" />
                <asp:Parameter Name="ghiChu" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tenTL" Type="String" />
                <asp:Parameter Name="ghiChu" Type="String" />
                <asp:Parameter Name="maTL" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        </form>
      
</asp:Content>
