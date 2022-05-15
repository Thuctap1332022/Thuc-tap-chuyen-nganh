<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditTG.aspx.cs" Inherits="QLTV.EditTG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maTG" DataSourceID="SqlDataSource1" DefaultMode="Edit">
            <EditItemTemplate>
                Mã tác giả:
                <asp:Label ID="maTGLabel1" runat="server" Text='<%# Eval("maTG") %>' />
                <br />
                Tên tác giả:
                <asp:TextBox ID="tenTGTextBox" runat="server" Text='<%# Bind("tenTG") %>' />
                <br />
                Ghi chú:
                <asp:TextBox ID="ghiChuTextBox" runat="server" style="margin-left: 19px" Text='<%# Bind("ghiChu") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            
        </asp:FormView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
             SelectCommand="SELECT * FROM [TACGIA] WHERE [maTG] = @maTG" 
             UpdateCommand="UPDATE [TACGIA] SET [tenTG] = @tenTG, [ghiChu] = @ghiChu WHERE [maTG] = @maTG">
             <SelectParameters>
                <asp:QueryStringParameter Name="maTG" Type="Int32" QueryStringField="maTG" />
        </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="tenTG" Type="String" />
                 <asp:Parameter Name="ghiChu" Type="String" />
                 <asp:Parameter Name="maTG" Type="Int32" />
             </UpdateParameters>
        </asp:SqlDataSource>
    </form>
             <a href="TacGia.aspx">Quay lại</a>
</asp:Content>
