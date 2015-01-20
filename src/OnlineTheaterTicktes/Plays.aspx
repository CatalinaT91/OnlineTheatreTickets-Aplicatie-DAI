<%@ Page Title="Play" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Plays.aspx.cs" Inherits="OnlineTheatreTicktes.About" %>

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
            <div class="playTitle">
               <%Response.Write(this.currentEvent.Play.Name); %>
            </div>

            <div class="playAuthor">
                <asp:Label ID="lblPlayAuthor" runat="server" Text="de Francis Veber" />
            </div>

            <div class="playScript">
                <asp:Label ID="lblScript" runat="server" Text="Script: xyz" />
            </div>

            <div class="playScenography">
                <asp:Label ID="lblScenography" runat="server" Text="Scenography: xyz" />
            </div>

            <div class="playTranslator">
                <asp:Label ID="lblTranslator" runat="server" Text="Translated by: xyz" />
            </div>

            <div class="playPrice">
                <asp:Label ID="lblPrice" runat="server" Text="Price cat. 1: 50RON; Price cat. 2: 25RON" />
            </div>
            <div class="playDescription">
                <asp:Label ID="lblPlayDescription" runat="server" Text="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?" />
            </div>
            <table width="80%" align="center">
                <tr>
                    <td>
                        <asp:Button Text="Tab 1" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server" />
                        <asp:Button Text="Tab 2" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server" />
                        <asp:Button Text="Tab 3" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server" />
                        <asp:MultiView ID="MainView" runat="server">
                            <asp:View ID="View1" runat="server">
                                <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                    <tr>
                                        <td>
                                            <h3>
                                                <span>View 1 </span>
                                            </h3>
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                    <tr>
                                        <td>
                                            <h3>View 2
                                            </h3>
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                    <tr>
                                        <td>
                                            <h3>View 3
                                            </h3>
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
            </table>
        </div>

    </div>
</asp:Content>
