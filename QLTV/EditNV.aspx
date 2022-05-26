<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditNV.aspx.cs" Inherits="QLTV.EditNV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maNV" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdating="FormView1_ItemUpdating">
            <EditItemTemplate>
                   <table>
                      <tr>
                         <td>
                            Mã nhân viên:
                        </td>
                        <td>
                <asp:Label ID="maNVLabel1" runat="server" Text='<%# Eval("maNV") %>' />
                        </td>
                    </tr>

                    <tr>
                    <td>
                         Giới tính:
                    </td>
                         <td>
                <asp:TextBox ID="gioiTinhNVTextBox" runat="server" Text='<%# Bind("gioiTinhNV") %>' />
                        </td>
                    </tr>

                    <tr>
                    <td>
                         Ngày sinh:
                    </td>
                    <td>
                <asp:TextBox ID="ngaysinhNVTextBox" runat="server" Text='<%# Bind("ngaysinhNV") %>' />
                    </td>
                    </tr>

                    <tr>
                    <td>
                          Địa chỉ:
                    </td>
                         <td>
                <asp:TextBox ID="diachiNVTextBox" runat="server" Text='<%# Bind("diachiNV") %>' />
                         </td>
                    </tr>

                    <tr>
                         <td>
                              Ngày vào làm:
                        </td>
                        <td>
                <asp:TextBox ID="ngayVaoLamTextBox" runat="server" Text='<%# Bind("ngayVaoLam") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td>
                          Sđt:
                        </td>
                         <td>
                <asp:TextBox ID="sdtNVTextBox" runat="server" Text='<%# Bind("sdtNV") %>' />
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

                     <tr>
                         <td>
                          userName:
                          </td>
                    <td>
                <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>' />
                    </td>
                    </tr>

                    <tr>
                    <td>
                            Password:
                    </td>
                    <td>
                <asp:TextBox ID="matKhauTextBox" runat="server" Text='<%# Bind("matKhau") %>' />
                    </td>
                    </tr>
                </table>  
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
     
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>"
           
            SelectCommand="SELECT * FROM [NHANVIEN]  WHERE [maNV] = @maNV" 
            UpdateCommand="UPDATE [NHANVIEN] SET [gioiTinhNV] = @gioiTinhNV, [ngaysinhNV] = @ngaysinhNV, [diachiNV] = @diachiNV, [ngayVaoLam] = @ngayVaoLam, [sdtNV] = @sdtNV, [anhNV] = @anhNV, [userName] = @userName, [matKhau] = @matKhau WHERE [maNV] = @maNV">
           
            <SelectParameters>
                <asp:QueryStringParameter Name="maNV" Type="Int32" QueryStringField="maNV" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="gioiTinhNV" Type="String" />
                <asp:Parameter Name="ngaysinhNV" Type="DateTime" />
                <asp:Parameter Name="diachiNV" Type="String" />
                <asp:Parameter Name="ngayVaoLam" Type="DateTime" />
                <asp:Parameter Name="sdtNV" Type="String" />
                <asp:Parameter Name="anhNV" Type="String" />
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="matKhau" Type="String" />
                <asp:Parameter Name="maNV" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    <a href="NhanVien.aspx">Quay lại</a>
</asp:Content>
