<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddTL.aspx.cs" Inherits="QLTV.AddTL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maTL" DataSourceID="SqlDataSource1" DefaultMode="Insert">
          
            <InsertItemTemplate>
                Mã thể loại:
                <asp:TextBox ID="maTLTextBox" runat="server" style="margin-left: 3px" Text='<%# Bind("maTL") %>' />
                <br />
                Tên thể loại:
                <asp:TextBox ID="tenTLTextBox" runat="server" Text='<%# Bind("tenTL") %>' />
                <br />
                Ghi chú:
                <asp:TextBox ID="ghiChuTextBox" runat="server" style="margin-left: 22px" Text='<%# Bind("ghiChu") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
            InsertCommand="INSERT INTO [THELOAI] ([maTL], [tenTL], [ghiChu]) VALUES (@maTL, @tenTL, @ghiChu)" >
            <InsertParameters>
                <asp:Parameter Name="maTL" Type="Int32" />
                <asp:Parameter Name="tenTL" Type="String" />
                <asp:Parameter Name="ghiChu" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
      <a href="TheLoai.aspx">Quay lại</a>
</asp:Content>
