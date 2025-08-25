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
    public partial class Contact : System.Web.UI.Page
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
            txtName.Text = "";
            txtEmail.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (btnSubmit.Text == "Send")
            {
                getcon();

                cmd = new SqlCommand("insert into Contact(Message,Name,Email,Subject) values('" + txtMessage.Text + "' , '" + txtName.Text + "' ,  '" + txtEmail.Text + "' , '" + txtSubject.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
            }
        }
    }
}