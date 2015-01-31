using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class TestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(Request.QueryString["NickName"].ToString()!=String.Empty)
            //{
            //    Label1.Text = "Hi" + Request.QueryString["NickName"].ToString() + ". You're testing the Query String";

            //}
            if(Session["NickName"]!=null)
            {
                Label1.Text = "Hi" + Request.QueryString["NickName"].ToString() + ". You're testing the Session";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}