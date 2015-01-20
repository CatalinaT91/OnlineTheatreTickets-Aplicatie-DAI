<%@ Page Title="About us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OnlineTheatreTicktes.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="about">
        <h2><%: Title %></h2>
        <h3>Online Theatre Tickets Booking</h3>
        <p>This platform represents an online environment for theatre amateurs, offering the possibility of tickets booking, plays searching with descriptions and reviews, allowing the theatre amateurs to view the list with the list with the available plays and seats. Furthermore, they can find interesting information about the play's theme, distribution and actors. </p>

        <div class="theatre_pictures_left">
            <img id="tnb1" src="Resources/tnb1.jpg" />
        </div>
         <div class="theatre_pictures_right">
            <img id="tnb2" src="Resources/tnb2.jpg" />
        </div>
    </div>
</asp:Content>
