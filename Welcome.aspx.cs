using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Welccome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblFooter.Text = DateTime.Now.Day.ToString() + "-" + months[DateTime.Now.Month] + "-" + DateTime.Now.Year;
            }
        }
        private string[] months = { "", "jan", "Feb", "Mar", "Apr", "may", "jun", "july", "Aug", "Sept", "Oct", "Nov", "Dec" };
    }
}