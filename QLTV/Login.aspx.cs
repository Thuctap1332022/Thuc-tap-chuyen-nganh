using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace QLTV
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=ADMIN\SQLEXPRESS;Initial Catalog=QLTV_ThucTap;Integrated Security=True"))
            {
                sqlCon.Open();
                string query = "Select count(1) from NHANVIEN where userName=@userName and matKhau=@matKhau";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@userName", txtUserName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@matKhau", txtPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["userName"] = txtUserName.Text.Trim();
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lblErrorMessage.Visible = true;
                }
            }
        }
    }
}