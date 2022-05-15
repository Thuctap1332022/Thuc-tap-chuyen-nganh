<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddNV.aspx.cs" Inherits="QLTV.AddNV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maNV" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="FormView1_ItemInserting">
            <InsertItemTemplate>
                Mã nhân viên:
                <asp:TextBox ID="maNVTextBox" runat="server" Text='<%# Bind("maNV") %>' />
                <br />
                Giới tính:
                <asp:TextBox ID="gioiTinhNVTextBox" runat="server" style="margin-left: 26px" Text='<%# Bind("gioiTinhNV") %>' />
                <br />
                Ngày sinh:
                <asp:TextBox ID="ngaysinhNVTextBox" runat="server" style="margin-left: 18px" Text='<%# Bind("ngaysinhNV") %>' />
                <br />
                Địa chỉ:
                <asp:TextBox ID="diachiNVTextBox" runat="server" OnTextChanged="diachiNVTextBox_TextChanged" style="margin-left: 36px" Text='<%# Bind("diachiNV") %>' />
                <br />
                Ngày vào làm:
                <asp:TextBox ID="ngayVaoLamTextBox" runat="server" Text='<%# Bind("ngayVaoLam") %>' />
                <br />
                SĐT:
                <asp:TextBox ID="sdtNVTextBox" runat="server" style="margin-left: 52px" Text='<%# Bind("sdtNV") %>' />
                <br />
                Mật khẩu:
                <asp:TextBox ID="matKhauTextBox" runat="server" style="margin-left: 23px" Text='<%# Bind("matKhau") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>     
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
            InsertCommand="INSERT INTO [NHANVIEN] ([maNV], [gioiTinhNV], [ngaysinhNV], [diachiNV], [ngayVaoLam], [sdtNV], [matKhau]) VALUES (@maNV, @gioiTinhNV, @ngaysinhNV, @diachiNV, @ngayVaoLam, @sdtNV, @matKhau)" 
            SelectCommand="SELECT * FROM [NHANVIEN]" 
            UpdateCommand="UPDATE [NHANVIEN] SET [gioiTinhNV] = @gioiTinhNV, [ngaysinhNV] = @ngaysinhNV, [diachiNV] = @diachiNV, [ngayVaoLam] = @ngayVaoLam, [sdtNV] = @sdtNV, [matKhau] = @matKhau WHERE [maNV] = @maNV">
            <InsertParameters>
                <asp:Parameter Name="maNV" Type="Int32" />
                <asp:Parameter Name="gioiTinhNV" Type="String" />
                <asp:Parameter Name="ngaysinhNV" Type="DateTime" />
                <asp:Parameter Name="diachiNV" Type="String" />
                <asp:Parameter Name="ngayVaoLam" Type="DateTime" />
                <asp:Parameter Name="sdtNV" Type="String" />
                <asp:Parameter Name="matKhau" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
    <a href="NhanVien.aspx">Quay lại</a>
</asp:Content>
