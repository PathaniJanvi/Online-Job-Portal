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
    public partial class JobDetails : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

            getcon();
            fill();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fill()
        {
            da = new SqlDataAdapter("select * from AddNewJob where JobId = '" + Request.QueryString["id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            DataList2.DataSource = ds;
            DataList2.DataBind();
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "lbApplyJob")
            {
                if (Session["admin"] != null)
                {

                    getcon();
                    da = new SqlDataAdapter("Select * from Register where UserName='" + Session["admin"] + "'", con);
                    ds = new DataSet();
                    da.Fill(ds);
                    int RegisterId = Convert.ToInt32(ds.Tables[0].Rows[0][0]);

                    int JobId = Convert.ToInt32(Request.QueryString["id"]);


                    cmd = new SqlCommand("insert into ApplyJob(RegisterId,JobId) values('"+RegisterId+"','"+JobId+"')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Job Apply successfully')</script>");

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}