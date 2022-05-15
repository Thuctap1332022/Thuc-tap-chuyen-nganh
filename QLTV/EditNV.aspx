<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditNV.aspx.cs" Inherits="QLTV.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maNV" DataSourceID="SqlDataSource1" DefaultMode="Edit">
            <EditItemTemplate>
                Mã NV:
                <asp:Label ID="maNVLabel1" runat="server" Text='<%# Eval("maNV") %>' />
                <br />
                Giới tính:
                <asp:TextBox ID="gioiTinhNVTextBox" runat="server" style="margin-left: 32px" Text='<%# Bind("gioiTinhNV") %>' />
                <br />
                Ngày sinh:
                <asp:TextBox ID="ngaysinhNVTextBox" runat="server" style="margin-left: 24px" Text='<%# Bind("ngaysinhNV") %>' />
                <br />
                Địa chỉ:
                <asp:TextBox ID="diachiNVTextBox" runat="server" style="margin-left: 42px" Text='<%# Bind("diachiNV") %>' />
                <br />
                Ngày vào làm:
                <asp:TextBox ID="ngayVaoLamTextBox" runat="server" style="margin-left: 4px" Text='<%# Bind("ngayVaoLam") %>' />
                <br />
                SĐT:
                <asp:TextBox ID="sdtNVTextBox" runat="server" style="margin-left: 56px" Text='<%# Bind("sdtNV") %>' />
                <br />
                Mật khẩu:
                <asp:TextBox ID="matKhauTextBox" runat="server" style="margin-left: 26px" Text='<%# Bind("matKhau") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>"
            SelectCommand="SELECT * FROM [NHANVIEN] WHERE [maNV] = @maNV" 
            UpdateCommand="UPDATE [NHANVIEN] SET [gioiTinhNV] = @gioiTinhNV, [ngaysinhNV] = @ngaysinhNV, [diachiNV] = @diachiNV, [ngayVaoLam] = @ngayVaoLam, [sdtNV] = @sdtNV, [matKhau] = @matKhau WHERE [maNV] = @maNV">
            <SelectParameters>
                <asp:QueryStringParameter Name="maNV" Type="Int32" QueryStringField="maNV" />
             </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="maNV" Type="Int32" />
            </DeleteParameters>
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
    <a href="NhanVien.aspx">Quay lại</a>
</asp:Content>
