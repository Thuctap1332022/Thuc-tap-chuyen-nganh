<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditNXB.aspx.cs" Inherits="QLTV.EditNXB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="maNXB" DataSourceID="SqlDataSource1" DefaultMode="Edit">
        <EditItemTemplate>
            Mã NXB:
            <asp:Label ID="maNXBLabel1" runat="server" Text='<%# Eval("maNXB") %>' />
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
            <asp:TextBox ID="dienThoaiNXBTextBox" runat="server" style="margin-left: 25px" Text='<%# Bind("dienThoaiNXB") %>' />
            <br />
            Web:
            <asp:TextBox ID="websiteNXBTextBox" runat="server" style="margin-left: 22px" Text='<%# Bind("websiteNXB") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
       
        </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
                SelectCommand="SELECT * FROM [NHAXUATBAN] WHERE [maNXB] = @maNXB" 
                UpdateCommand="UPDATE [NHAXUATBAN] SET [tenNXB] = @tenNXB, [ghiChu] = @ghiChu, [diaChiNXB] = @diaChiNXB, [dienThoaiNXB] = @dienThoaiNXB, [websiteNXB] = @websiteNXB WHERE [maNXB] = @maNXB">
        <SelectParameters>
                <asp:QueryStringParameter Name="maNXB" Type="Int32" QueryStringField="maNXB" />
        </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tenNXB" Type="String" />
                    <asp:Parameter Name="ghiChu" Type="String" />
                    <asp:Parameter Name="diaChiNXB" Type="String" />
                    <asp:Parameter Name="dienThoaiNXB" Type="String" />
                    <asp:Parameter Name="websiteNXB" Type="String" />
                    <asp:Parameter Name="maNXB" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <a href="NXB.aspx">Quay lại</a>
    </form>
</asp:Content>
