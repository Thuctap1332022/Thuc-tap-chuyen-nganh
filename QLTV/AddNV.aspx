<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddNV.aspx.cs" Inherits="QLTV.AddNV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">

    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maNV" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="FormView1_ItemInserting">
         
            <InsertItemTemplate>
                 <table>
                      <tr>
                         <td>
                            Mã nhân viên:
                        </td>
                        <td>
                            <asp:TextBox ID="maNVTextBox" runat="server" Text='<%# Bind("maNV") %>' />
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
                                            <asp:TextBox ID="diachiNVTextBox" runat="server" Text='<%# Bind("diachiNV") %>'/>

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
                        <asp:TextBox ID="matKhauTextBox" runat="server" Text='<%# Bind("matKhau") %>' Height="22px" />
                    </td>
                    </tr>
                </table>  
               <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
           
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" 
            InsertCommand="INSERT INTO [NHANVIEN] ([maNV], [gioiTinhNV], [ngaysinhNV], [diachiNV], [ngayVaoLam], [sdtNV], [anhNV], [userName], [matKhau]) VALUES (@maNV, @gioiTinhNV, @ngaysinhNV, @diachiNV, @ngayVaoLam, @sdtNV, @anhNV, @userName, @matKhau)" 
            SelectCommand="SELECT * FROM [NHANVIEN]" >
            
            <InsertParameters>
                <asp:Parameter Name="maNV" Type="Int32" />
                <asp:Parameter Name="gioiTinhNV" Type="String" />
                <asp:Parameter Name="ngaysinhNV" Type="DateTime" />
                <asp:Parameter Name="diachiNV" Type="String" />
                <asp:Parameter Name="ngayVaoLam" Type="DateTime" />
                <asp:Parameter Name="sdtNV" Type="String" />
                <asp:Parameter Name="anhNV" Type="String" />
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="matKhau" Type="String" />
            </InsertParameters>
          
        </asp:SqlDataSource>
    </form>
    <a href="NhanVien.aspx">Quay lại</a>
</asp:Content>
