<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddSV.aspx.cs" Inherits="QLTV.AddSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maSV" DataSourceID="SqlDataSource1" DefaultMode="Insert">
           
            <InsertItemTemplate>
                Mã SV:
                <asp:TextBox ID="maSVTextBox" runat="server" style="margin-left: 34px" Text='<%# Bind("maSV") %>' />
                <br />
                Họ tên:
                <asp:TextBox ID="hotenSVTextBox" runat="server" style="margin-left: 36px" Text='<%# Bind("hotenSV") %>' />
                <br />
                Giới tính:
                <asp:TextBox ID="gioitinhSVTextBox" runat="server" style="margin-left: 25px" Text='<%# Bind("gioitinhSV") %>' />
                <br />
                Ngày sinh:
                <asp:TextBox ID="ngaySinhSVTextBox" runat="server" style="margin-left: 18px" Text='<%# Bind("ngaySinhSV") %>' />
                <br />
                Lớp:
                <asp:TextBox ID="lopSVTextBox" runat="server" style="margin-left: 55px" Text='<%# Bind("lopSV") %>' />
                <br />
                Ngày làm thẻ:
                <asp:TextBox ID="ngayLamTheTextBox" runat="server" Text='<%# Bind("ngayLamThe") %>' />
                <br />
                Ngày hết hạn:
                <asp:TextBox ID="NgayHetHanTextBox" runat="server" Text='<%# Bind("NgayHetHan") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
           
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
            InsertCommand="INSERT INTO [SINHVIEN] ([maSV], [hotenSV], [gioitinhSV], [ngaySinhSV], [lopSV], [ngayLamThe], [NgayHetHan]) VALUES (@maSV, @hotenSV, @gioitinhSV, @ngaySinhSV, @lopSV, @ngayLamThe, @NgayHetHan)" >
            <InsertParameters>
                <asp:Parameter Name="maSV" Type="Int32" />
                <asp:Parameter Name="hotenSV" Type="String" />
                <asp:Parameter Name="gioitinhSV" Type="String" />
                <asp:Parameter Name="ngaySinhSV" Type="DateTime" />
                <asp:Parameter Name="lopSV" Type="String" />
                <asp:Parameter Name="ngayLamThe" Type="DateTime" />
                <asp:Parameter Name="NgayHetHan" Type="DateTime" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
     <a href="SinhVien.aspx">Quay lại</a>
</asp:Content>
