<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NXB.aspx.cs" Inherits="QLTV.NXB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
           <h1 class="auto-style1">Quản lý NXB <a href="AddNXB.aspx">+</a> </h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="maNXB" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="maNXB" HeaderText="Mã NXB" ReadOnly="True" SortExpression="maNXB" />
                <asp:BoundField DataField="tenNXB" HeaderText="Tên NXB" SortExpression="tenNXB" />
                <asp:BoundField DataField="diaChiNXB" HeaderText="Địa chỉ NXB" SortExpression="diaChiNXB" />
                <asp:BoundField DataField="dienThoaiNXB" HeaderText="SĐT" SortExpression="dienThoaiNXB" />
                <asp:BoundField DataField="websiteNXB" HeaderText="WEBSITE" SortExpression="websiteNXB" />
                <asp:BoundField DataField="ghiChu" HeaderText="Ghi chú" SortExpression="ghiChu" />
                 <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"
                            OnClientClick="return confirm ('Bạn có chắc muốn xoá không?')"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <button><a href='EditNXB.aspx?maNXB=<%#Eval("maNXB")%>'>Edit</a></button>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" SelectCommand="SELECT * FROM [NHAXUATBAN]"></asp:SqlDataSource>
    </form>
</asp:Content>
