<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddNXB.aspx.cs" Inherits="QLTV.AddNXB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maNXB" DataSourceID="SqlDataSource1" DefaultMode="Insert">

            <InsertItemTemplate>
                Mã NXB:
                <asp:TextBox ID="maNXBTextBox" runat="server" style="margin-left: 3px" Text='<%# Bind("maNXB") %>' />
                <br />
                Tên NXB:
                <asp:TextBox ID="tenNXBTextBox" runat="server" Text='<%# Bind("tenNXB") %>' />
                <br />
                Ghi chú:
                <asp:TextBox ID="ghiChuTextBox" runat="server" style="margin-left: 4px" Text='<%# Bind("ghiChu") %>' />
                <br />
                Địa chỉ:
                <asp:TextBox ID="diaChiNXBTextBox" runat="server" style="margin-left: 9px" Text='<%# Bind("diaChiNXB") %>' />
                <br />
                SĐT:
                <asp:TextBox ID="dienThoaiNXBTextBox" runat="server" style="margin-left: 24px" Text='<%# Bind("dienThoaiNXB") %>' />
                <br />
                Web:
                <asp:TextBox ID="websiteNXBTextBox" runat="server" style="margin-left: 22px" Text='<%# Bind("websiteNXB") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>           
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
            InsertCommand="INSERT INTO [NHAXUATBAN] ([maNXB], [tenNXB], [ghiChu], [diaChiNXB], [dienThoaiNXB], [websiteNXB]) VALUES (@maNXB, @tenNXB, @ghiChu, @diaChiNXB, @dienThoaiNXB, @websiteNXB)" >
            <InsertParameters>
                <asp:Parameter Name="maNXB" Type="Int32" />
                <asp:Parameter Name="tenNXB" Type="String" />
                <asp:Parameter Name="ghiChu" Type="String" />
                <asp:Parameter Name="diaChiNXB" Type="String" />
                <asp:Parameter Name="dienThoaiNXB" Type="String" />
                <asp:Parameter Name="websiteNXB" Type="String" />
            </InsertParameters>

        </asp:SqlDataSource>
        <a href="NXB.aspx">Quay lại</a>
    </form>
</asp:Content>
