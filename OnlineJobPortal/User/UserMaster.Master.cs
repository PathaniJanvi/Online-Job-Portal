using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.User
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    if (Session["user"] != null)
            //    {
            //        lbRegisterorProfile.Text = "Profile";
            //        lbLoginorLogout.Text = "Logout";
            //    }
            //    else
            //    {
            //        lbRegisterorProfile.Text = "Register";
            //        lbLoginorLogout.Text = "Login";
            //    }
            //}

        }

        //protected void lbLoginorLogout_Click(object sender, EventArgs e)
        //{
        //    if (Session["user"] == null)
        //    {
        //        Response.Redirect("Login.aspx");
        //    }
        //    else
        //    {
        //        Session.Abandon();
        //        Response.Redirect("Logout.aspx");
        //    }
        //}

        //protected void lbRegisterorProfile_Click(object sender, EventArgs e)
        //{
        //    if (Session["user"] != null)
        //    {
        //        Response.Redirect("Profile.aspx"); 
        //    }
        //    else
        //    {
        //        Response.Redirect("Register.aspx");
        //    }
        //}
    }
}