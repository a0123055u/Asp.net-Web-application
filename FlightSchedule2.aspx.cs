using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class FlightSchedule2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Response.Write(String.Format("You Activated a row command <br> Command Name:{0} <br> CommandArguement:{2}<br>Command Source:{1}", e.CommandName, e.CommandSource, e.CommandArgument));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
                Label1.Text = GridView1.SelectedRow.Cells[0].Text;
            else
                Label1.Text = "No selection Made";

        }
    }
}