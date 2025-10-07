using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.Admin
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void clear()
        {
            txtunm.Text = "";
            txtpass.Text = "";
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (btnRegister.Text == "Register")
            {
                getcon();

                cmd = new SqlCommand("insert into AdminRegister(UserName,PassWord) values('" + txtunm.Text + "' , '" + txtpass.Text + "' )", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("AdminLogin.aspx");
                

            }
        }
    }
}