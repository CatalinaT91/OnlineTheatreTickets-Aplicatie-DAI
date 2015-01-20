using DatabaseEntities;
using DatabaseEntities.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTheatreTicktes
{
    public partial class _Default : Page
    {
        public IList<Event> showsList = EventDAO.GetAllStartingFromToday();
        public IList<Play> playsList = PlayDAO.GetAll();
        public Event currentEvent;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.PopulatePlaysList();
        }

        public void BuyTicketsClick(object sender, EventArgs e)
        {
            int ticketsNo = int.Parse(txtTicketsNo.Text.ToString());
            Event selectedEvent = EventDAO.FromPlayAndDate(ddSelectPlay.SelectedValue, DateTime.Parse(txtSelectPlayDate.Text.ToString()))[0];


            if (AreTicketsAvailable(selectedEvent, ticketsNo))
            {

            }
            else 
            {
                string script = "alert(\"There are no available tickets to this event!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
        }

        public bool AreTicketsAvailable(Event show, int ticketsNo) 
        {
            return (show.Theatre.SeatsNo - show.Tickets.Count) >= ticketsNo;
        }

        private void PopulatePlaysList()
        {
            foreach (Play play in playsList)
                ddSelectPlay.Items.Add(play.Name);
        }

        protected void CalendarDayRender(object sender, DayRenderEventArgs e)
        {
            if (calendarPlays.SelectedDate != null && calendarPlays.SelectedDate.Year == DateTime.Now.Year)
            {
                DateTime date = calendarPlays.SelectedDate;
                IList<Event> events = EventDAO.FromDate(date);

                lblPlaysFromDate.Text = string.Empty;
                lblPlaysFromDate.BackColor = System.Drawing.Color.Transparent;
                if (events != null && events.Count == 0)
                    lblPlaysFromDate.Text = "No events for today!";
                else
                {
                    foreach (Event show in events)
                    {
                        lblPlaysFromDate.Text += show.Play.Name + ": " + show.DateTime.TimeOfDay.ToString() + "<br />";
                    }
                }
            }
        }

        protected void SeeDetails(object sender, EventArgs e) 
        {
            Button button = (Button)sender;
            string ceva = button.CommandArgument;
            Response.Redirect("CurrentPlay.aspx");
        }

        public string GetEventId(object show)
        {
            return ((Event)show).Id.ToString();
        }
    }
}