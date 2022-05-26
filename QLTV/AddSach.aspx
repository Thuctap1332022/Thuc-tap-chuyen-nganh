<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddSach.aspx.cs" Inherits="QLTV.AddSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="maSach" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="FormView1_ItemInserting">

            <InsertItemTemplate>
                <table>
                      <tr>
                         <td>
                            Mã sách:
                        </td>
                        <td>
                             <asp:TextBox ID="maSachTextBox" runat="server" Text='<%# Bind("maSach") %>' />
                        </td>
                    </tr>

                    <tr>
                    <td>
                         Thể loại:
                    </td>
                    <td>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tenTL" DataValueField="maTL" SelectedValue='<%# Bind("maTL") %>'>
                             </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" SelectCommand="SELECT * FROM [THELOAI]"></asp:SqlDataSource>
                    </td>
                    </tr>

                    <tr>
                    <td>
                         Tác giả:
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="tenTG" DataValueField="maTG" SelectedValue='<%# Bind("maTG") %>'>
                          </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" SelectCommand="SELECT * FROM [TACGIA]"></asp:SqlDataSource>
                    </td>
                    </tr>

                    <tr>
                    <td>
                         NXB:
                    </td>
                         <td>
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="tenNXB" DataValueField="maNXB" SelectedValue='<%# Bind("maNXB") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLTV_ThucTapConnectionString %>" SelectCommand="SELECT * FROM [NHAXUATBAN]"></asp:SqlDataSource>
                         </td>
                    </tr>

                    <tr>
                         <td>
                             Tên sách:
                        </td>
                        <td>
                             <asp:TextBox ID="tenSachTextBox" runat="server" Text='<%# Bind("tenSach") %>'/>
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
                          Giá:
                     </td>
                       <td>
                        <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>'/>
                     </td>
                    </tr>

                     <tr>
                         <td>
                          Số lượng:
                          </td>
                    <td>
                          <asp:TextBox ID="soLuongTextBox" runat="server" Text='<%# Bind("soLuong") %>'/>
                    </td>
                    </tr>

                    <tr>
                    <td>
                           Tồn kho:
                    </td>
                    <td>
                        <asp:TextBox ID="soLuongTonTextBox" runat="server" Text='<%# Bind("soLuongTon") %>' />
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
            InsertCommand="INSERT INTO [SACH] ([maSach], [maTL], [maTG], [maNXB], [tenSach], [anhMinhHoa], [gia], [soLuong], [soLuongTon]) VALUES (@maSach, @maTL, @maTG, @maNXB, @tenSach, @anhMinhHoa, @gia, @soLuong, @soLuongTon)" 
            SelectCommand="SELECT * FROM [SACH]" >

            <InsertParameters>
                <asp:Parameter Name="maSach" Type="Int32" />
                <asp:Parameter Name="maTL" Type="Int32" />
                <asp:Parameter Name="maTG" Type="Int32" />
                <asp:Parameter Name="maNXB" Type="Int32" />
                <asp:Parameter Name="tenSach" Type="String" />
                <asp:Parameter Name="anhMinhHoa" Type="String" />
                <asp:Parameter Name="gia" Type="Double" />
                <asp:Parameter Name="soLuong" Type="Int32" />
                <asp:Parameter Name="soLuongTon" Type="Int32" />
            </InsertParameters>       
           
        </asp:SqlDataSource>
    </form>
    <a href="Sach.aspx">Quay lại</a>
</asp:Content>
