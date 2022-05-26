<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="QLTV.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
            <div>
                <br />
                <asp:Label ID="lblUserDetail" runat="server" Text=""></asp:Label>
                <br />
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" /> 
            </div>   
        </form>    
</asp:Content>
