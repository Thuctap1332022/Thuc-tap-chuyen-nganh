<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddSV.aspx.cs" Inherits="QLTV.AddSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maSV" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="FormView1_ItemInserting">

            <InsertItemTemplate>
                <table>
                    <tr>
                         <td>
                             Mã SV:
                        </td>
                        <td>
                            <asp:TextBox ID="maSVTextBox" runat="server" Text='<%# Bind("maSV") %>'/>
                        </td>
                    </tr>

                    <tr>
                    <td>
                        Họ tên:
                    </td>
                    <td>
                        <asp:TextBox ID="hotenSVTextBox" runat="server" Text='<%# Bind("hotenSV") %>'/>
                    </td>
                    </tr>

                    <tr>
                    <td>
                         Giới tính:
                    </td>
                    <td>
                        <asp:TextBox ID="gioitinhSVTextBox" runat="server" Text='<%# Bind("gioitinhSV") %>'/>
                    </td>
                    </tr>

                    <tr>
                    <td>
                        Ngày sinh:
                    </td>
                    <td>
                        <asp:TextBox ID="ngaySinhSVTextBox" runat="server" Text='<%# Bind("ngaySinhSV") %>'/>
                    </td>
                    </tr>

                     <tr>
                    <td>
                         Lớp:
                    </td>
                    <td>
                      <asp:TextBox ID="lopSVTextBox" runat="server" Text='<%# Bind("lopSV") %>'/>
                    </td>
                    </tr>

                    <tr>
                    <td>
                          Ngày làm thẻ:
                    </td>
                    <td>
                      <asp:TextBox ID="ngayLamTheTextBox" runat="server" Text='<%# Bind("ngayLamThe") %>' />
                    </td>
                    </tr>

                    <tr>
                    <td>
                          Ngày hết hạn:
                    </td>
                    <td>
                      <asp:TextBox ID="NgayHetHanTextBox" runat="server" Text='<%# Bind("NgayHetHan") %>' />
                    </td>
                    </tr>

                    <tr>
                    <td>
                          Ảnh:
                    </td>
                    <td>
                      <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                    </tr>
                </table>   
            </InsertItemTemplate>
        </asp:FormView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
            InsertCommand="INSERT INTO [SINHVIEN] ([maSV], [hotenSV], [gioitinhSV], [ngaySinhSV], [lopSV], [ngayLamThe], [NgayHetHan], [anhSV]) VALUES (@maSV, @hotenSV, @gioitinhSV, @ngaySinhSV, @lopSV, @ngayLamThe, @NgayHetHan, @anhSV)"
            SelectCommand="SELECT * FROM [SINHVIEN]">
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
            
        </asp:SqlDataSource>
    </form>
     <a href="SinhVien.aspx">Quay lại</a>
</asp:Content>
