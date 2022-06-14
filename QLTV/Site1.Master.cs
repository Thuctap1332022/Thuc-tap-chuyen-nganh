using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLTV
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserDetail.Text = "Xin chào " + Session["userName"];
            if (Session["userName"] == null)
                Response.Redirect("Login.aspx");
        }
    }
}