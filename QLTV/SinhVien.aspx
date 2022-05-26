<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SinhVien.aspx.cs" Inherits="QLTV.SinhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server" style="width: 715px">

    <h1 class="auto-style1">Quản lý sinh viên <a href="AddSV.aspx">+</a> </h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="maSV" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="maSV" HeaderText="Mã SV" ReadOnly="True" SortExpression="maSV" />
            <asp:BoundField DataField="hotenSV" HeaderText="Họ tên" SortExpression="hotenSV" />
            <asp:BoundField DataField="gioitinhSV" HeaderText="Giới tính" SortExpression="gioitinhSV" />
            <asp:BoundField DataField="ngaySinhSV" HeaderText="Ngày sinh" SortExpression="ngaySinhSV" />
            <asp:BoundField DataField="lopSV" HeaderText="Lớp" SortExpression="lopSV" />
            <asp:BoundField DataField="ngayLamThe" HeaderText="Ngày làm thẻ" SortExpression="ngayLamThe" />
            <asp:BoundField DataField="NgayHetHan" HeaderText="Ngày hết hạn" SortExpression="NgayHetHan" />
            <asp:TemplateField HeaderText="Ảnh">
                <ItemTemplate>
                    <asp:Image ID="imgs" runat="server" ImageUrl='<%#Eval("anhSV") %>'  Height="80px" Width="60px" />
                </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                            OnClientClick="return confirm ('Bạn có chắc muốn xoá không?')"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
             <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <button><a href='EditSV.aspx?maSV=<%#Eval("maSV")%>'>Edit</a></button>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" DeleteCommand="DELETE FROM [SINHVIEN] WHERE [maSV] = @maSV" InsertCommand="INSERT INTO [SINHVIEN] ([maSV], [hotenSV], [gioitinhSV], [ngaySinhSV], [lopSV], [ngayLamThe], [NgayHetHan], [anhSV]) VALUES (@maSV, @hotenSV, @gioitinhSV, @ngaySinhSV, @lopSV, @ngayLamThe, @NgayHetHan, @anhSV)" SelectCommand="SELECT * FROM [SINHVIEN]" UpdateCommand="UPDATE [SINHVIEN] SET [hotenSV] = @hotenSV, [gioitinhSV] = @gioitinhSV, [ngaySinhSV] = @ngaySinhSV, [lopSV] = @lopSV, [ngayLamThe] = @ngayLamThe, [NgayHetHan] = @NgayHetHan, [anhSV] = @anhSV WHERE [maSV] = @maSV">
            <DeleteParameters>
                <asp:Parameter Name="maSV" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="maSV" Type="Int32" />
                <asp:Parameter Name="hotenSV" Type="String" />
                <asp:Parameter Name="gioitinhSV" Type="String" />
                <asp:Parameter Name="ngaySinhSV" Type="DateTime" />
                <asp:Parameter Name="lopSV" Type="String" />
                <asp:Parameter Name="ngayLamThe" Type="DateTime" />
                <asp:Parameter Name="NgayHetHan" Type="DateTime" />
                <asp:Parameter Name="anhSV" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="hotenSV" Type="String" />
                <asp:Parameter Name="gioitinhSV" Type="String" />
                <asp:Parameter Name="ngaySinhSV" Type="DateTime" />
                <asp:Parameter Name="lopSV" Type="String" />
                <asp:Parameter Name="ngayLamThe" Type="DateTime" />
                <asp:Parameter Name="NgayHetHan" Type="DateTime" />
                <asp:Parameter Name="anhSV" Type="String" />
                <asp:Parameter Name="maSV" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
