<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditSV.aspx.cs" Inherits="QLTV.EditSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maSV" DataSourceID="SqlDataSource1" DefaultMode="Edit">
            <EditItemTemplate>
                Mã SV:
                <asp:Label ID="maSVLabel1" runat="server" Text='<%# Eval("maSV") %>' />
                <br />
                Họ tên:
                <asp:TextBox ID="hotenSVTextBox" runat="server" style="margin-left: 40px" Text='<%# Bind("hotenSV") %>' />
                <br />
                Giới tính:
                <asp:TextBox ID="gioitinhSVTextBox" runat="server" style="margin-left: 28px" Text='<%# Bind("gioitinhSV") %>' />
                <br />
                Ngày sinh:
                <asp:TextBox ID="ngaySinhSVTextBox" runat="server" style="margin-left: 20px" Text='<%# Bind("ngaySinhSV") %>' />
                <br />
                Lớp:
                <asp:TextBox ID="lopSVTextBox" runat="server" style="margin-left: 54px" Text='<%# Bind("lopSV") %>' />
                <br />
                Ngày làm thẻ:
                <asp:TextBox ID="ngayLamTheTextBox" runat="server" Text='<%# Bind("ngayLamThe") %>' />
                <br />
                Ngày hết hạn:
                <asp:TextBox ID="NgayHetHanTextBox" runat="server" Text='<%# Bind("NgayHetHan") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
           
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
            SelectCommand="SELECT * FROM [SINHVIEN] WHERE [maSV] = @maSV" 
            UpdateCommand="UPDATE [SINHVIEN] SET [hotenSV] = @hotenSV, [gioitinhSV] = @gioitinhSV, [ngaySinhSV] = @ngaySinhSV, [lopSV] = @lopSV, [ngayLamThe] = @ngayLamThe, [NgayHetHan] = @NgayHetHan WHERE [maSV] = @maSV">
        <SelectParameters>
                <asp:QueryStringParameter Name="maSV" Type="Int32" QueryStringField="maSV" />
        </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="hotenSV" Type="String" />
                <asp:Parameter Name="gioitinhSV" Type="String" />
                <asp:Parameter Name="ngaySinhSV" Type="DateTime" />
                <asp:Parameter Name="lopSV" Type="String" />
                <asp:Parameter Name="ngayLamThe" Type="DateTime" />
                <asp:Parameter Name="NgayHetHan" Type="DateTime" />
                <asp:Parameter Name="maSV" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    <a href="SinhVien.aspx">Quay lại</a>
</asp:Content>
