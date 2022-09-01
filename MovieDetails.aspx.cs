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
    public partial class MovieDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uid"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnAddToWL_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            DateTime now = DateTime.Now;

            try
            {
                string connString =
                ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(connString);

                string query = String.Format("INSERT INTO [WatchListUsers]  ([User_Id], [Movie_Id], [DateAdded]) VALUES ('{0}', '{1}', '{2}')",
                                                                Session["uid"].ToString(), Request.QueryString["m"], now);
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                

                // this will query your database and return the result to your datatable
                
                Response.Write("Saved To WatchList");
            }
            catch (Exception ex)
            {
                Response.Write("Error occurred: " + ex.Message); // handle error here
            }
            finally
            {
                conn.Close();
            }
           

            
        }

        protected void btnBackToSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("search.aspx");
        }

        protected void btnGoToWL_Click(object sender, EventArgs e)
        {
            Response.Redirect("watchlist.aspx");
        }
    }
}