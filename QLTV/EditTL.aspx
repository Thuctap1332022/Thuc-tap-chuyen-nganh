<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditTL.aspx.cs" Inherits="QLTV.EditTL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maTL" DataSourceID="SqlDataSource1" DefaultMode="Edit">
            <EditItemTemplate>
                Mã thể loại:
                <asp:Label ID="maTLLabel1" runat="server" Text='<%# Eval("maTL") %>' />
                <br />
                Tên thể loại:
                <asp:TextBox ID="tenTLTextBox" runat="server" Text='<%# Bind("tenTL") %>' />
                <br />
                Ghi chú:
                <asp:TextBox ID="ghiChuTextBox" runat="server" Text='<%# Bind("ghiChu") %>' style="margin-left: 22px" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
         
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 

            SelectCommand="SELECT * FROM [THELOAI] WHERE [maTL] = @maTL" 
            UpdateCommand="UPDATE [THELOAI] SET [tenTL] = @tenTL, [ghiChu] = @ghiChu WHERE [maTL] = @maTL">
               <SelectParameters>
                <asp:QueryStringParameter Name="maTL" Type="Int32" QueryStringField="maTL" />
        </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="tenTL" Type="String" />
                <asp:Parameter Name="ghiChu" Type="String" />
                <asp:Parameter Name="maTL" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
          <a href="TheLoai.aspx">Quay lại</a>
</asp:Content>
