<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="QLTV.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
            <div>
                <br />
                <h2><asp:Label ID="lblUserDetail" runat="server" Text="">    
                </asp:Label>
                   đến với chương trình quản lý thư viện được xây dựng bởi nhóm 6:</h2>
                   <h2>Bùi Thị Hà</h2>
                   <h2>Thị Mai Phương</h2>
                   <h2>Trần Hoài Sơn</h2>
                   <h2>Nguyễn Tài Tiến</h2>
                <br />
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" Height="30px" Width="71px" />
            </div>   
        </form>    
</asp:Content>
