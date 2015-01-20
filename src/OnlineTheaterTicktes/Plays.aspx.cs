using DatabaseEntities;
using DatabaseEntities.DAO;
using System;
using System.Web.UI;

namespace OnlineTheatreTicktes
{
    public partial class Plays : Page
    {
        public Event currentEvent = EventDAO.Get(1);

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Tab1_Click(object sender, EventArgs e)
        {

        }
        protected void Tab2_Click(object sender, EventArgs e)
        {

        }
        protected void Tab3_Click(object sender, EventArgs e)
        {

        }
    }
}