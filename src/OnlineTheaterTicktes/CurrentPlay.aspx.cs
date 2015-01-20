using DatabaseEntities;
using DatabaseEntities.DAO;
using DatabaseEntities.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTheatreTicktes
{
    public partial class CurrentPlay : Page
    {

        public Event currentEvent = EventDAO.Get(string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["id"]) ? 1 : Convert.ToInt32(HttpContext.Current.Request.QueryString["id"]));

        protected void Page_Load(object sender, EventArgs e)
        {
            Event currentEvent = EventDAO.Get(string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["id"]) ? 1 : Convert.ToInt32(HttpContext.Current.Request.QueryString["id"]));
            DisplayRating();
            DisplayComments();
        }

        private void DisplayRating()
        {
            IList<Review> reviews = ReviewDAO.FromPlay((int)currentEvent.Play.Id);

            int rating = 0, count = 0;
            foreach (Review review in reviews)
            {
                if (review.ReviewMark >= 0)
                {
                    rating += review.ReviewMark;
                    count++;
                }
            }
            if (count == 0)
            {
                lblRating.Text = "-";
            }
            else
            {
                lblRating.Text = ((float)rating / count).ToString("0.00"); ;
            }
        }

        private void DisplayComments() 
        {   
            IList<Review> reviews = ReviewDAO.FromPlay((int)currentEvent.Play.Id);

            string text = "";
            foreach (Review review in reviews) 
            {
                if (!string.IsNullOrEmpty(review.ReviewText)) 
                    text += review.Customer.FirstName + " " + review.Customer.LastName + " said: " + review.ReviewText + "</br></br>";
            }
            lblComments.Text = text;
        }
        
        protected void BuyTickets(object sender, EventArgs e)
        {
            Button button = (Button)sender;
        }

        public void AddCommentClick(object sender, EventArgs e)
        {
            Random randomizer = new Random();
            int x = randomizer.Next(4);

            if (x == 0)
            {
                string script = "alert(\"Please login in order to add comments!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            else
            {
                if (String.IsNullOrEmpty(new_comment_body.Text))
                {
                    string script = "alert(\"You cannot add empty comments!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                else
                {
                    Customer customer = new Customer() { FirstName = "Ion", LastName = "Popescu", Username = "ion.popescu", Password = "1234" };
                    CustomerDAO.Save(customer);
                    Review review = new Review()
                    {
                        Customer = customer,
                        Play = currentEvent.Play,
                        ReviewText = new_comment_body.Text.ToString()
                    };
                    ReviewDAO.Save(review);
                    new_comment_body.Text = "";
                    DisplayComments();
                }
            }
        }

        public void RateClick(object sender, EventArgs e)
        {
            Random randomizer = new Random();
            int x = randomizer.Next(4);

            if (x == 0)
            {
                string script = "alert(\"Please login in order to add play reviews!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            else
            {
                if (rbtLstRating.SelectedIndex < 0)
                {
                    string script = "alert(\"Please select your rating!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                else
                {
                    Customer customer = new Customer() { FirstName = "Ion", LastName = "Popescu", Username = "ion.popescu", Password = "1234" };
                    CustomerDAO.Save(customer);
                    Review review = new Review()
                    {
                        Customer = customer,
                        Play = currentEvent.Play,
                        ReviewMark = 10 - 2 * rbtLstRating.SelectedIndex
                    };
                    ReviewDAO.Save(review);
                    DisplayRating();
                }
            }
        }
    }
}