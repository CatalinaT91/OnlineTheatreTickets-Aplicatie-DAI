<%@ Page Title="Current Play" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CurrentPlay.aspx.cs" Inherits="OnlineTheatreTicktes.CurrentPlay" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        .Initial {
            display: block;
            padding: 4px 18px 4px 18px;
            float: left;
            background: url("Resources/InitialImage.png") no-repeat right top;
            color: Black;
            font-weight: bold;
        }

            .Initial:hover {
                color: White;
                background: url("Resources/SelectedButton.png") no-repeat right top;
            }

        .Clicked {
            float: left;
            display: block;
            background: url("Resources/SelectedButton.png") no-repeat right top;
            padding: 4px 18px 4px 18px;
            color: Black;
            font-weight: bold;
            color: White;
        }
    </style>
    <div class="play">
        <div class="playImage">
            <img id="imgPlayDetails1" src="Resources/1.jpg" />
        </div>

        <div class="playInfo">
            <div class="playBuy">
                <asp:Button ID="btnBuyPlayTickets" runat="server" Text=" Buy Tickets " OnClick="BuyTickets" />

            </div>
            <div class="playTitle">
               <%Response.Write(this.currentEvent.Play.Name); %>
            </div>

            <div class="playAuthor">
                  <%Response.Write(this.currentEvent.Play.Author.FirstName + " " + this.currentEvent.Play.Author.LastName); %>
            </div>
            <div class="vote">
                <asp:RadioButtonList ID="rbtLstRating" runat="server" 
                RepeatDirection="Horizontal" RepeatLayout="Table">
                <asp:ListItem Text="Excellent" Value="5"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="4"></asp:ListItem>
                <asp:ListItem Text="Good" Value="3"></asp:ListItem>
                <asp:ListItem Text="Fair" Value="2"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="1"></asp:ListItem>
            </asp:RadioButtonList>
                  <asp:Button ID="btnRate" runat="server" Text=" Rate it! " OnClick="RateClick" /> 
                <div style="clear:both">&nbsp;</div>         
            </div>
            <div class="rating">
                <span><asp:Label ID="lblRating" runat="server" /></span><img id="imgRating" src="Resources/rating.jpg" />
            </div>
            <div class="playScript">
                 <%Response.Write("Director: " + this.currentEvent.Play.Director.FirstName + " " + this.currentEvent.Play.Director.LastName); %>
            </div>

            <div class="playPrice">
                  <%Response.Write("Date: " + this.currentEvent.DateTime.Date.DayOfWeek + ", " + this.currentEvent.DateTime.Date.ToShortDateString() + " at " + this.currentEvent.DateTime.TimeOfDay.ToString() + "<br/>"); %>
                  <%Response.Write("Theatre Ballroom: " + this.currentEvent.Theatre.TheatreName + "<br/>"); %>
                  <%Response.Write("Duration: " + (int)this.currentEvent.Play.Duration / 60 + "h" + ((int)this.currentEvent.Play.Duration % 60 == 0 ? "" : this.currentEvent.Play.Duration%60 + "min") + "<br/>"); %>
                  <div class="price"><%Response.Write("Price: " + this.currentEvent.SeatPrice + "<br/>"); %></div>
            </div>
            <div class="playDescription">
                <%Response.Write(" &nbsp &nbsp &nbsp &nbsp" + this.currentEvent.Play.About + "<br/><br/>"); %> 
                <%var cast = "<br/>";
                  IList<DatabaseEntities.Acting> actings = DatabaseEntities.DAO.ActingDAO.FromPlay(currentEvent.Play);
                  foreach (DatabaseEntities.Acting acting in actings) 
                  { 
                      cast += " &nbsp &nbsp &nbsp &nbsp"+ acting.Actor.FirstName + " " + acting.Actor.LastName + "<br/>";
                  } %>
                <%Response.Write(" &nbsp &nbsp &nbsp &nbspCast:<br/>" + cast); %> 
            </div>
            <div class="playComment">
                <div class="playcommentsbox">
                   <asp:Label ID="lblComments" runat="server" />
                <div class="new_comment_box">
                    <asp:TextBox TextMode="MultiLine" ID="new_comment_body" runat="server"  />
                    <asp:Button ID="new_comment_button" OnClick="AddCommentClick" Text="Comment" runat="server" />
                </div>
                </div>
                
            </div>
           
        </div>
    <div style="clear:both">&nbsp;</div>
    </div>
</asp:Content>
