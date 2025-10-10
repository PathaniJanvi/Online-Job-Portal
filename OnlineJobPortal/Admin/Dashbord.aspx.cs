using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.Admin
{
    public partial class Dashbord : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }

            if (!IsPostBack)
            {
                Users();
                Jobs();
                AppliedJobs();
                ContactCount();
            }

        }
        private void Users()
        {
            con = new SqlConnection(s);
            da = new SqlDataAdapter("SELECT COUNT(*) FROM Register", con);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["Register"] = ds.Tables[0].Rows[0][0].ToString();
            }
            else
            {
                Session["Register"] = "0";
            }

        }
        private void Jobs()
        {
            con = new SqlConnection(s);
            da = new SqlDataAdapter("SELECT COUNT(*) FROM AddNewJob", con);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["AddNewJob"] = ds.Tables[0].Rows[0][0].ToString();
            }
            else
            {
                Session["AddNewJob"] = "0";
            }
        }
        private void AppliedJobs()
        {
            con = new SqlConnection(s);
            da = new SqlDataAdapter("SELECT COUNT(*) FROM ApplyJob", con);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["ApplyJob"] = ds.Tables[0].Rows[0][0].ToString();
            }
            else
            {
                Session["ApplyJob"] = "0";
            }

        }
        private void ContactCount()
        {
            con = new SqlConnection(s);
            da = new SqlDataAdapter("SELECT COUNT(*) FROM Contact", con);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["Contact"] = ds.Tables[0].Rows[0][0].ToString();
            }
            else
            {
                Session["Contact"] = "0";
            }

        }
    }
}