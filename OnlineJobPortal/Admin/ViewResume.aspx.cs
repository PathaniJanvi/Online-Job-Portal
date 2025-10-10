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
    public partial class ViewResume : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
            if (Session["admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Register", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd__dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Register where RegisterId= '" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }
    }
}