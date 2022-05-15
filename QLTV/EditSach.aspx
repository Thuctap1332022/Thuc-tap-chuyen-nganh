<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditSach.aspx.cs" Inherits="QLTV.EditSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maSach" DataSourceID="SqlDataSource1" DefaultMode="Edit">
            <EditItemTemplate>
                Mã sách:
                <asp:Label ID="maSachLabel1" runat="server" Text='<%# Eval("maSach") %>' />
                <br />
                Thể loại:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tenTL" DataValueField="maTL" SelectedValue='<%# Bind("maTL") %>' style="margin-left: 30px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" SelectCommand="SELECT * FROM [THELOAI]"></asp:SqlDataSource>
                <br />
                Tác giả:
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="tenTG" DataValueField="maTG" SelectedValue='<%# Bind("maTG") %>' style="margin-left: 33px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" SelectCommand="SELECT * FROM [TACGIA]"></asp:SqlDataSource>
                <br />
                NXB:
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="tenNXB" DataValueField="maNXB" SelectedValue='<%# Bind("maNXB") %>' style="margin-left: 50px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" SelectCommand="SELECT * FROM [NHAXUATBAN]"></asp:SqlDataSource>
                <br />
                Tên sách:
                <asp:TextBox ID="tenSachTextBox" runat="server" style="margin-left: 24px" Text='<%# Bind("tenSach") %>' />
                <br />
                Giá:
                <asp:TextBox ID="giaTextBox" runat="server" style="margin-left: 57px" Text='<%# Bind("gia") %>' />
                <br />
                Số lượng:
                <asp:TextBox ID="soLuongTextBox" runat="server" style="margin-left: 22px" Text='<%# Bind("soLuong") %>' />
                <br />
                Số lượng tồn:
                <asp:TextBox ID="soLuongTonTextBox" runat="server" Text='<%# Bind("soLuongTon") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
            SelectCommand="SELECT * FROM [SACH] WHERE [maSach] = @maSach" 
            UpdateCommand="UPDATE [SACH] SET [maTL] = @maTL, [maTG] = @maTG, [maNXB] = @maNXB, [tenSach] = @tenSach, [gia] = @gia, [soLuong] = @soLuong, [soLuongTon] = @soLuongTon WHERE [maSach] = @maSach">
              <SelectParameters>
                <asp:QueryStringParameter Name="maSach" Type="Int32" QueryStringField="maSach" />
        </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="maTL" Type="Int32" />
                <asp:Parameter Name="maTG" Type="Int32" />
                <asp:Parameter Name="maNXB" Type="Int32" />
                <asp:Parameter Name="tenSach" Type="String" />
                <asp:Parameter Name="gia" Type="Double" />
                <asp:Parameter Name="soLuong" Type="Int32" />
                <asp:Parameter Name="soLuongTon" Type="Int32" />
                <asp:Parameter Name="maSach" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
        <a href="Sach.aspx">Quay lại</a>
</asp:Content>
