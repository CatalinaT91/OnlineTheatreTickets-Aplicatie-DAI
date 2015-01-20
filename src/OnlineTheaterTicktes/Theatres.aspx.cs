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
    public partial class Theatres : Page
    {
        public IList<Theatre> theatresList = TheatreDAO.GetAll();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StartImageButton_Click(object sender, EventArgs e)
        {
            Server.Transfer("Seats.aspx", true);
        }
    }
}