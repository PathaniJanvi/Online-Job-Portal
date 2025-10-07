using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.User
{
    public partial class Profile : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        
        PagedDataSource pg;
        int row = 3, p, i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            filllist();
            //if (Session["admin"] != null)

            //{
            //    ds = new DataSet();
            //    da = new SqlDataAdapter("select * from Register where UserName='" + Session["admin"] + "'", con);
            //    da.Fill(ds);
            //    int RegisterId = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            //    String s = ds.Tables[0].Rows[0][0].ToString();

            //}
            //else
            //{
            //    Response.Redirect("Login.aspx");
            //}
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void filllist()
        {
            getcon();

            // //da = new SqlDataAdapter("select * from Register", con);
            // //ds = new DataSet();
            // //da.Fill(ds);
            if (Session["admin"] != null)

            {
                ds = new DataSet();
                da = new SqlDataAdapter("select * from Register where UserName='" + Session["admin"] + "'", con);
                da.Fill(ds);
                int RegisterId = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
                String s = ds.Tables[0].Rows[0][0].ToString();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }

           row = ds.Tables[0].Rows.Count;
           pg = new PagedDataSource();

            pg.AllowPaging = true;
            //pg.PageSize = 3;
           //pg.CurrentPageIndex = Convert.ToInt32(ViewState["jid"]);

           pg.DataSource = ds.Tables[0].DefaultView;
           DataList1.DataSource = pg;
           DataList1.DataBind();

        }
    }
}