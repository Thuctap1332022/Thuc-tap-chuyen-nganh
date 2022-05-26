<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NhanVien.aspx.cs" Inherits="QLTV.NhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <h1 class="auto-style1">Quản lý nhân viên <a href="AddNV.aspx">+</a> </h1>
        <p class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="maNV" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="maNV" HeaderText="Mã NV" ReadOnly="True" SortExpression="maNV" />
                    <asp:BoundField DataField="gioiTinhNV" HeaderText="Giới tính" SortExpression="gioiTinhNV" />
                    <asp:BoundField DataField="ngaysinhNV" HeaderText="Ngày Sinh" SortExpression="ngaysinhNV" />
                    <asp:BoundField DataField="diachiNV" HeaderText="Địa chỉ" SortExpression="diachiNV" />
                    <asp:BoundField DataField="ngayVaoLam" HeaderText="Ngày vào" SortExpression="ngayVaoLam" />
                    <asp:BoundField DataField="sdtNV" HeaderText="SĐT" SortExpression="sdtNV" />
                    <asp:TemplateField HeaderText="Ảnh">
                    <ItemTemplate>
                        <asp:Image ID="imgs" runat="server" ImageUrl='<%#Eval("anhNV") %>' Height="80px" Width="60px" />
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                    <asp:BoundField DataField="matKhau" HeaderText="Password" SortExpression="matKhau" />
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
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
                DeleteCommand="DELETE FROM [NHANVIEN] WHERE [maNV] = @maNV" 
                InsertCommand="INSERT INTO [NHANVIEN] ([maNV], [gioiTinhNV], [ngaysinhNV], [diachiNV], [ngayVaoLam], [sdtNV], [anhNV], [userName], [matKhau]) VALUES (@maNV, @gioiTinhNV, @ngaysinhNV, @diachiNV, @ngayVaoLam, @sdtNV, @anhNV, @userName, @matKhau)" 
                SelectCommand="SELECT * FROM [NHANVIEN]" UpdateCommand="UPDATE [NHANVIEN] SET [gioiTinhNV] = @gioiTinhNV, [ngaysinhNV] = @ngaysinhNV, [diachiNV] = @diachiNV, [ngayVaoLam] = @ngayVaoLam, [sdtNV] = @sdtNV, [anhNV] = @anhNV, [userName] = @userName, [matKhau] = @matKhau WHERE [maNV] = @maNV">
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
                    <asp:Parameter Name="anhNV" Type="String" />
                    <asp:Parameter Name="userName" Type="String" />
                    <asp:Parameter Name="matKhau" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="gioiTinhNV" Type="String" />
                    <asp:Parameter Name="ngaysinhNV" Type="DateTime" />
                    <asp:Parameter Name="diachiNV" Type="String" />
                    <asp:Parameter Name="ngayVaoLam" Type="DateTime" />
                    <asp:Parameter Name="sdtNV" Type="String" />
                    <asp:Parameter Name="anhNV" Type="String" />
                    <asp:Parameter Name="userName" Type="String" />
                    <asp:Parameter Name="matKhau" Type="String" />
                    <asp:Parameter Name="maNV" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
       
    </form>
</asp:Content>
