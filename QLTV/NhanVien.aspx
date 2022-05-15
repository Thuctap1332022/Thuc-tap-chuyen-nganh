<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NhanVien.aspx.cs" Inherits="QLTV.NhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <h1 class="auto-style1">Quản lý nhân viên <a href="AddNV.aspx">+</a> </h1>
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="maNV" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="maNV" HeaderText="Mã NV" ReadOnly="True" SortExpression="maNV" />
                <asp:BoundField DataField="gioiTinhNV" HeaderText="Giới tính" SortExpression="gioiTinhNV" />
                <asp:BoundField DataField="ngaysinhNV" HeaderText="Ngày sinh" SortExpression="ngaysinhNV" />
                <asp:BoundField DataField="diachiNV" HeaderText="Địa chỉ" SortExpression="diachiNV" />
                <asp:BoundField DataField="ngayVaoLam" HeaderText="Ngày vào làm" SortExpression="ngayVaoLam" />
                <asp:BoundField DataField="sdtNV" HeaderText="SĐT" SortExpression="sdtNV" />
                <asp:BoundField DataField="matKhau" HeaderText="Mật khẩu" SortExpression="matKhau" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                            OnClientClick="return confirm ('Bạn có chắc muốn xoá không?')"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <button><a href='EditNV.aspx?maNV=<%#Eval("maNV")%>'>Edit</a></button>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" DeleteCommand="DELETE FROM [NHANVIEN] WHERE [maNV] = @maNV" InsertCommand="INSERT INTO [NHANVIEN] ([maNV], [gioiTinhNV], [ngaysinhNV], [diachiNV], [ngayVaoLam], [sdtNV], [matKhau]) VALUES (@maNV, @gioiTinhNV, @ngaysinhNV, @diachiNV, @ngayVaoLam, @sdtNV, @matKhau)" SelectCommand="SELECT * FROM [NHANVIEN]" UpdateCommand="UPDATE [NHANVIEN] SET [gioiTinhNV] = @gioiTinhNV, [ngaysinhNV] = @ngaysinhNV, [diachiNV] = @diachiNV, [ngayVaoLam] = @ngayVaoLam, [sdtNV] = @sdtNV, [matKhau] = @matKhau WHERE [maNV] = @maNV">
            <DeleteParameters>
                <asp:Parameter Name="maNV" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="maNV" Type="Int32" />
                <asp:Parameter Name="gioiTinhNV" Type="String" />
                <asp:Parameter Name="ngaysinhNV" Type="DateTime" />
                <asp:Parameter Name="diachiNV" Type="String" />
                <asp:Parameter Name="ngayVaoLam" Type="DateTime" />
                <asp:Parameter Name="sdtNV" Type="String" />
                <asp:Parameter Name="matKhau" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="gioiTinhNV" Type="String" />
                <asp:Parameter Name="ngaysinhNV" Type="DateTime" />
                <asp:Parameter Name="diachiNV" Type="String" />
                <asp:Parameter Name="ngayVaoLam" Type="DateTime" />
                <asp:Parameter Name="sdtNV" Type="String" />
                <asp:Parameter Name="matKhau" Type="String" />
                <asp:Parameter Name="maNV" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
