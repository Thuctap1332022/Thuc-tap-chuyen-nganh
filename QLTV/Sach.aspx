<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sach.aspx.cs" Inherits="QLTV.Sach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
                <h1 class="auto-style1">Quản lý sách <a href="AddSach.aspx">+</a> </h1>
    <asp:GridView ID="FormView1" runat="server" AutoGenerateColumns="False" DataKeyNames="maSach" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="778px">
        <Columns>
            <asp:BoundField DataField="maSach" HeaderText="Mã sách" ReadOnly="True" SortExpression="maSach" />
            <asp:BoundField DataField="maTL" HeaderText="Mã thể loại" SortExpression="maTL" />
            <asp:BoundField DataField="maTG" HeaderText="Mã tác giả" SortExpression="maTG" />
            <asp:BoundField DataField="maNXB" HeaderText="Mã NXB" SortExpression="maNXB" />
            <asp:BoundField DataField="tenSach" HeaderText="Tên sách" SortExpression="tenSach" />
             <asp:TemplateField HeaderText="Ảnh">
                <ItemTemplate>
                    <asp:Image ID="imgs" runat="server" ImageUrl='<%#Eval("anhMinhHoa") %>'  Height="80px" Width="60px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="gia" HeaderText="Giá" SortExpression="gia" />
            <asp:BoundField DataField="soLuong" HeaderText="Số lượng" SortExpression="soLuong" />
            <asp:BoundField DataField="soLuongTon" HeaderText="Số lượng tồn" SortExpression="soLuongTon" />
             <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                            OnClientClick="return confirm ('Bạn có chắc muốn xoá không?')"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <button><a href='EditSach.aspx?maSach=<%#Eval("maSach")%>'>Edit</a></button>
                    </ItemTemplate>
                </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
            SelectCommand="SELECT * FROM [SACH]"
            DeleteCommand="DELETE FROM [SACH] WHERE [maSach] = @maSach" >
        
            <DeleteParameters>
                    <asp:Parameter Name="maSach" Type="Int32" />
                </DeleteParameters>        
        </asp:SqlDataSource>
    </form>
</asp:Content>
