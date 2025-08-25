using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace OnlineJobPortal.User
{
    public partial class Register : System.Web.UI.Page
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
            txtUserName.Text = "";
            txtPassword.Text = "";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (btnRegister.Text == "Register")
            {
                getcon();

                cmd = new SqlCommand("insert into Register(UserName,PassWord,FullName,Address,MobileNumber,Email) values('" + txtUserName.Text + "' , '" + txtPassword.Text + "' ,  '" + txtFullName.Text + "' , '" + txtAddress.Text + "', '" + txtMobile.Text + "' , '" + txtEmail.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
            }
        }
    }
}