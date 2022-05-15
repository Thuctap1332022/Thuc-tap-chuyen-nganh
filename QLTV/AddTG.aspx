<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddTG.aspx.cs" Inherits="QLTV.AddTG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maTG" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            
            <InsertItemTemplate>
                Mã tác giả:
                <asp:TextBox ID="maTGTextBox" runat="server" style="margin-left: 3px" Text='<%# Bind("maTG") %>' />
                <br />
                Tên tác giả:
                <asp:TextBox ID="tenTGTextBox" runat="server" Text='<%# Bind("tenTG") %>' />
                <br />
                Ghi chú:
                <asp:TextBox ID="ghiChuTextBox" runat="server" style="margin-left: 19px" Text='<%# Bind("ghiChu") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
           
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>"
            InsertCommand="INSERT INTO [TACGIA] ([maTG], [tenTG], [ghiChu]) VALUES (@maTG, @tenTG, @ghiChu)" >
            <InsertParameters>
                <asp:Parameter Name="maTG" Type="Int32" />
                <asp:Parameter Name="tenTG" Type="String" />
                <asp:Parameter Name="ghiChu" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
         <a href="TacGia.aspx">Quay lại</a>
</asp:Content>
