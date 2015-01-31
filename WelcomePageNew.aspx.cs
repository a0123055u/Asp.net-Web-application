using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WelcomePageNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblFooter.Text = DateTime.Now.Day.ToString() + "-" + months[DateTime.Now.Month] + "-" + DateTime.Now.Year;
            }
            if(Request.Cookies["NickName"]!=null)
            {
                lblUserName.Text = Request.Cookies["NickName"].Value;
            }
        }
                private string[] months = { "", "jan", "Feb", "Mar", "Apr", "may", "jun", "july", "Aug", "Sept", "Oct", "Nov", "Dec" };

                protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
                {

                }

                protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
                {


                }

                protected void Button1_Click(object sender, EventArgs e)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["NickName"].Value = Nick.Text;
                        Response.Cookies["NickName"].Value = DateTime.Now.AddDays(1).ToString();
                        lblUserName.Text = "Welcome  " + Nick.Text;
                        Response.Redirect("TestPage.aspx?NickName=" + Nick.Text);
                    }
                    else
                    {
                        if (Request.Cookies["NickName"] != null)
                        {
                            Response.Cookies["NickName"].Expires = DateTime.Now.AddDays(-1);
                        }
                    }
                    Session["NickName"] = Nick.Text;
                    Response.Redirect("TestPage.aspx?NickName=" + Nick.Text);
                }
       
    }
}