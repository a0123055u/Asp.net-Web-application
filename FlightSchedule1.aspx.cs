using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class FlightSchedule1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //AeroLionDatasetTableAdapters.flight_ScheduleTableAdapter ta = new AeroLionDatasetTableAdapters.flight_ScheduleTableAdapter();
            //AeroLionDataset.flight_ScheduleDataTable dt = new AeroLionDataset.flight_ScheduleDataTable();
            //ta.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}