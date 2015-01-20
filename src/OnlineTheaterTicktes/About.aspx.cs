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
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Category a = CategoryDAO.Get(1);
        }
    }
}