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
    public partial class Registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnJoin_Click(object sender, EventArgs e)
        {
            lblEmailError.Text = String.Empty;
            lblPasswordError.Text = String.Empty;
            lblPasswordConfirmError.Text = String.Empty;
            lblUserNameError.Text = String.Empty;

            if (!txtEmail.Text.Contains("@"))
            {               
                lblEmailError.Text = "Please enter a valid email address";
                return;
            }

            if (txtUserName.Text.Equals(String.Empty))
            {          
                lblUserNameError.Text = "Please enter a unique user name";
            }

            //The entered "password" value must have at least 6 characters
            if (txtPassword.Text.Length < 6)
            {            
                lblPasswordError.Text = "Please use at least 6 characters";
                return;
            }

            //The password value must match the "confirm password" value
            if (!txtPassword.Text.Equals(txtPasswordConfirm.Text))
            {
                lblPasswordConfirmError.Text = "Confirm does not match password";
                return;
            }
            if (AddNewUser())
            {
                Response.Redirect("Search.aspx");
            }
        }
        private Boolean AddNewUser()
        {
            bool ret = false;

            SqlConnection conn = null;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(connString);
                var sql = String.Format(
                    "INSERT INTO [Users] ([UserName], [Email], [Password]) VALUES " +
                    "('"+ txtUserName.Text +
                    "', '" + txtEmail.Text + 
                    "', '" + txtPassword.Text + "')"
                    );

                string sql2 = String.Format(
                    "SELECT[UserID] FROM[Users] WHERE([UserName] = '{0}')",
                    txtUserName.Text);


                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                cmd.ExecuteNonQuery();

                //save new ID
                cmd = new SqlCommand(sql2, conn);
                string value = Convert.ToString(cmd.ExecuteScalar());
                cmd.Dispose();

                //create session parameter
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
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}