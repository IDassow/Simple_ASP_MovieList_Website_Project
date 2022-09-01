using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//SQL
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Final_Assignment_440
{
    public partial class WatchList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void btnToSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("search.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }
    }
}