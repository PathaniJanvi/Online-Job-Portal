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
    public partial class NewJob : System.Web.UI.Page
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
            txtJobTitle.Text = "";
            txtNoOfPost.Text = "";
            txtDescription.Text = "";
            txtQualification.Text = "";
            txtExperience.Text = "";
            txtSpecialization.Text = "";
            txtLastDate.Text = "";
            txtSalary.Text = "";
            ddlJobType.Text = "";
            txtCompany.Text = "";
            txtWebsite.Text = "";
            txtEmail.Text = "";
            txtAddress.Text = "";
            ddlCountry.Text = "";
            txtState.Text = "";
           
        }
        void imgupload()
        {
            if (fuCompanyLogo.HasFile)
            {
                fnm = "../CompanyLogo/" + fuCompanyLogo.FileName;
                fuCompanyLogo.SaveAs(Server.MapPath(fnm));
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (btnAdd.Text == "Add Job")
            {
                getcon();
                imgupload();
                cmd = new SqlCommand("insert into AddNewJob(Title,NoOfPost,Description,Qualification,Experience,Specialization,LastDate,Salary,JobType,CompanyName,CompanyLogo,Website,Email,Address,Country,State) values('" + txtJobTitle.Text + "' , '" + txtNoOfPost.Text + "' ,  '" + txtDescription.Text + "','"+ txtQualification .Text+ "','"+ txtExperience .Text+ "', '"+ txtSpecialization.Text+ "','"+ txtLastDate .Text+ "','"+ txtSalary.Text+ "','"+ ddlJobType.Text+ "','"+ txtCompany.Text+ "','" + fnm + "' ,'" + txtWebsite.Text + "', '" + txtEmail.Text + "', '" + txtAddress.Text + "' , '" + ddlCountry.Text + "','"+ txtState.Text+ "')", con);
                cmd.ExecuteNonQuery();
                clear();
                //clear();


            }
        }
    }
}