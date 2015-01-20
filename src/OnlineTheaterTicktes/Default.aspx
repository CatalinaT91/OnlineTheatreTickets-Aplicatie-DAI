<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineTheatreTicktes._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mainLeft">
        <div class="mainLeftUp">
            <div class="mainLeftUpinner">
                <!-- inner div start -->
                <div class="classSelectPlay">
                    <asp:Label ID="lblSelectPlay" runat="server" Text="Select Play:" />
                    <asp:DropDownList ID="ddSelectPlay" runat="server">
                    </asp:DropDownList>
                </div>
                <div class="classSelectDate">
                    <asp:Label ID="lblSelectDate" runat="server" Text="Select Date:" />
                    <asp:TextBox ID="txtSelectPlayDate" runat="server"  />
                    <img src="Resources/calender.png" />

                    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
                    <script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
                    <script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
                    <link href="Content/calendar-blue.css" rel="stylesheet" type="text/css" />
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $("#<%=txtSelectPlayDate.ClientID %>").dynDateTime({
                                showsTime: true,
                                ifFormat: "%Y/%m/%d %H:%M",
                                daFormat: "%l;%M %p, %e %m, %Y",
                                align: "BR",
                                electric: false,
                                singleClick: false,
                                displayArea: ".siblings('.dtcDisplayArea')",
                                button: ".next()"
                            });
                        });
                    </script>
                </div>
                <div class="classSelectTicketsNo">
                    <asp:Label ID="lblSelectTicketsNo" runat="server" Text="No. of tickets:" />
                    <asp:TextBox ID="txtTicketsNo" runat="server" Text="0" Height="22px" MaxLength="2" TextMode="Number" Width="41px"></asp:TextBox>
                    <cc1:NumericUpDownExtender ID="numTicketsNo" runat="server"
                        TargetControlID="txtTicketsNo"
                        Width="120"
                        RefValues=""
                        ServiceDownMethod=""
                        ServiceUpMethod=""
                        TargetButtonDownID=""
                        TargetButtonUpID=""
                        Minimum="1"
                        Maximum="100" />
                </div>
                <div class="classBuyTickets">
                    <asp:Button ID="btnBuyTickets" OnClick="BuyTicketsClick" Text="Buy Tickets" runat="server" />
                </div>
                <!-- inner div close -->
            </div>
        </div>
        <div class="mainLeftDown">
            <div class="classCalendar">
                <asp:Calendar ID="calendarPlays" DayNameFormat="Short" runat="server" ondayrender="CalendarDayRender">
                    <WeekendDayStyle BackColor="#f5f5f5" ForeColor="#ff0000" />
                    <DayHeaderStyle ForeColor="Gray" Font-Bold="false" />
                    <TodayDayStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"
                         />
                </asp:Calendar>
            </div>
            <div class="classCalendarRight" style="background-image: url(../Resources/letter.png);height:196px;width:285px;"">
                <asp:Label ID="lblPlaysFromDate" runat="server" Font-Bold="true"/>
            </div>
            <div style="clear: both">&nbsp;</div>
        </div>
        <div class="leftPoster">
            <img id="imgPoster1" src="Resources/poster.jpg" />
            <img id="imgPoster2" src="Resources/poster2.jpg" />
        </div>
    </div>

    <div class="mainRight">
        <div class="mainContent">
            <div class="contentTitle">
                <asp:Label ID="lblContentTitle" runat="server" Text="Available Plays" />
            </div>
            <div class="contentPlay">
                <div class="playdatefather">
                   <% 
                       var init_date = showsList[0].DateTime;  %>
                    <div class="contentPlayDate">
                        <div class="contentPlayDayOfWeek1">
                            <% Response.Write(showsList[0].DateTime.DayOfWeek.ToString()); %>,
                        </div>
                        <div class="contentPlayCompleteDate1">
                              <% Response.Write(showsList[0].DateTime.Date.ToShortDateString()); %>
                        </div>
                    </div> 
                    <% foreach (var show in showsList)
                       {
                           currentEvent = show;
                           var this_date = show.DateTime;
                           if (this_date.Date.CompareTo(init_date.Date) != 0)
                           {
                               init_date = this_date;
                            %>
                        <div class="contentPlayDate">
                            <div class="contentPlayDayOfWeek1">
                                <% Response.Write(show.DateTime.DayOfWeek.ToString()); %>,
                            </div>
                            <div class="contentPlayCompleteDate1">
                                 <% Response.Write(show.DateTime.Date.ToShortDateString()); %>
                            </div>
                        </div>
                          
                    <%    
                           }    
                    %>                              
                        <div class="contentInfo">
                            <div class="contentPlayImg">
                                <img id="imgPlay2" src="Resources/tnb2.jpg" />
                            </div>
                            <div class="contentPlayDetails">
                                <div class="contentPlayTitle">
                                     <% Response.Write(show.Play.Name); %>
                                </div>
                                <div class="contentPlayAuthor">
                                      <% Response.Write(show.Play.Author.FirstName + " " + show.Play.Author.LastName); %>
                                </div>
                                     
                                <div class="contentPlayImgSeparator">
                                    <a class="linkclass" href='/CurrentPlay.aspx?id=<% Response.Write(show.Id.ToString()); %>'>see details</a>
                                    <img id="imgPlaySeparator" src="Resources/line.png" />
                                </div>
                            </div>
                            <div style="clear: both">&nbsp;</div>
                        </div>
                        <% } %>
                        <div style="clear: both">&nbsp;</div>
                </div>
             <div></div>
            <div style="clear: both">&nbsp;</div>
        </div>
    </div>
    </div>

</asp:Content>
