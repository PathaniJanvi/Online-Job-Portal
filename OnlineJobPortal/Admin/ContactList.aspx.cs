using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace OnlineJobPortal.Admin
{
    public partial class ContactList : System.Web.UI.Page
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
            fillgrid(); 
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        //void select()
        //{
        //    getcon();


        //    da = new SqlDataAdapter("select * from Contact where ContactId='" + ViewState["id"] + "'", con);

        //    ds = new DataSet();
        //    da.Fill(ds);

        //    //Paring

        //    //txtMessage.Text = ds.Tables[0].Rows[0][1].ToString();
        //    //txtName.Text = ds.Tables[0].Rows[0][2].ToString();
        //    //txtEmail.Text = ds.Tables[0].Rows[0][3].ToString();
        //    //txtSubject.Text = ds.Tables[0].Rows[0][4].ToString();
        //}
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from Contact", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Contact where ContactId= '" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

    }
}