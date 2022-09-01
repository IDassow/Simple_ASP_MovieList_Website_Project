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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            lblLoginNameError.Text = String.Empty;
            lblLoginPassError.Text = String.Empty;

            if (txtUserName.Text.Equals(String.Empty))
            {
                lblLoginNameError.Text.Equals("Please enter your user name!");
            }

            else if (txtPassword.Text.Equals(String.Empty))
            {
                lblLoginPassError.Text.Equals("Please enter your password!");
            }

            else
            {
                //checks to see if the password matches the user in the database
                if (LoginCheck())
                {
                    Response.Redirect("Search.aspx");
                   
                }

            }
        }
        protected Boolean LoginCheck()
        {
            var ret = false;

            SqlCommand cmd;
            string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

           
            string sql2 = String.Format("SELECT[UserID] FROM[Users] WHERE([UserName] = '{0}')", txtUserName.Text);

            try
            {
                conn.Open();
                cmd = new SqlCommand(sql2, conn);
                string value = Convert.ToString(cmd.ExecuteScalar());
                cmd.Dispose();
                

                Session.Add("uid", value);

                ret = true;

            }
            catch (Exception ex)
            {
                //handle error
                Response.Write("Error: " + ex.ToString());
            }
            finally
            {
                conn.Close();
            }

            return ret;
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registeration.aspx");
        }
    }
}