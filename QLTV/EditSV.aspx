<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditSV.aspx.cs" Inherits="QLTV.EditSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="maSV" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdating="FormView1_ItemUpdating">
        <EditItemTemplate>
             <table>
                    <tr>
                         <td>
                             Mã SV:
                        </td>
                        <td>
                             <asp:Label ID="maSVLabel1" runat="server" Text='<%# Eval("maSV") %>' />
                        </td>
                    </tr>

                    <tr>
                    <td>
                        Họ tên:
                    </td>
                    <td>
                        <asp:TextBox ID="hotenSVTextBox" runat="server" Text='<%# Bind("hotenSV") %>' />
                    </td>
                    </tr>

                    <tr>
                    <td>
                         Giới tính:
                    </td>
                    <td>
                        <asp:TextBox ID="gioitinhSVTextBox" runat="server" Text='<%# Bind("gioitinhSV") %>' />
                    </td>
                    </tr>

                    <tr>
                    <td>
                        Ngày sinh:
                    </td>
                    <td>
                        <asp:TextBox ID="ngaySinhSVTextBox" runat="server" Text='<%# Bind("ngaySinhSV") %>' />
                    </td>
                    </tr>

                     <tr>
                    <td>
                         Lớp:
                    </td>
                    <td>
                     <asp:TextBox ID="lopSVTextBox" runat="server" Text='<%# Bind("lopSV") %>' />
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
                    </td>
                    </tr>
                </table>   
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
            SelectCommand="SELECT * FROM [SINHVIEN] WHERE [maSV] = @maSV" 
            UpdateCommand="UPDATE [SINHVIEN] SET [hotenSV] = @hotenSV, [gioitinhSV] = @gioitinhSV, [ngaySinhSV] = @ngaySinhSV, [lopSV] = @lopSV, [ngayLamThe] = @ngayLamThe, [NgayHetHan] = @NgayHetHan, [anhSV] = @anhSV WHERE [maSV] = @maSV">
               <SelectParameters>
                <asp:QueryStringParameter Name="maSV" Type="Int32" QueryStringField="maSV" />
        </SelectParameters>
          
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
     <a href="SinhVien.aspx">Quay lại</a>
</asp:Content>
