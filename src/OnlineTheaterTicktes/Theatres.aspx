<%@ Page Title="Theatre Ballrooms" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Theatres.aspx.cs" Inherits="OnlineTheatreTicktes.Theatres" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="theatresTitle">
        <asp:Label ID="lblTheatresTitle" runat="server" Text="Theatre Balls" />
    </div>

    <% foreach (var theatre in theatresList)
       { %>
    <div class="theatreBallroom1">
        <div class="theatreBallroomName1">
            <% Response.Write(theatre.TheatreName); %>
        </div>
        <div class="theatreBallroom1">
            <div class="theatresBallroomDescription1">
                <% Response.Write(theatre.About); %>,
            </div>
            <div class="theatreBallroomImage1">
                <asp:ImageButton ID="ImageButton1" ImageUrl="Resources/theatre1.jpg" runat="server" OnClick="StartImageButton_Click" />
            </div>
        </div>
        <div class="theatreBallroomImgSeparator1">
            <img id="imgTheatreBallroomImgSeparator1" src="Resources/line.png" />
        </div>
    </div>
    <%    }   %>
</asp:Content>
