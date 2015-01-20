<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineTheatreTicktes.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Address: Blvd. Nicolae Balcescu No. 2, Bucharest 010051, Romania</h3>
    <h4>www.onlinetheatretickets.ro</h4>
    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script>
        function initialize() {
            var map;

            var latlng = new google.maps.LatLng(-34.397, 150.644);
            var myOptions = {
                zoom: 8,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            map = new google.maps.Map(document.getElementById("map"), myOptions);
            var marker = new google.maps.Marker
            (
                {
                    position: new google.maps.LatLng(-34.397, 150.644),
                    map: map,
                    title: 'Theatre Location'
                }
            );
            var infowindow = new google.maps.InfoWindow({
                content: 'Blvd. Nicolae Balcescu,<br/>Bucharest,<br/>Romania'
            });
            google.maps.event.addListener(marker, 'click', function () {
                infowindow.open(map, marker);
            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>

    <div class="content_principal">
        <div class="contact_left">
            <address>
                <abbr title="Phone">Phone:</abbr>
                (021) 334 382
                 <br />
                <abbr title="Mobile1">Telekom mobile number:</abbr>
                0722 345 345
                 <br />
                <abbr title="Mobile2">Orange mobile number:</abbr>
                0744 234 234
                <br />
            </address>

            <address>
                <h5><strong>General Manager:</strong></h5>
                <strong>Ion Caramitru</strong>
                <br />
                <abbr title="Phone">Phone:</abbr>
                0722 777 777
        <br />
                <abbr title="Email">E-mail:</abbr>
                ion.caramitru@theatre.com
        <br />
                <br />
                <h5><strong>Cultural and Communication Strategy Director:</strong></h5>
                <strong>Adriana Popescu</strong>
                <br />
                <abbr title="Phone">Phone:</abbr>
                0733 555 555
        <br />
                <abbr title="Email">E-mail:</abbr>
                adriana.popescu@theatre.com
        <br />
                <br />

                <h5><strong>Artistic Director:</strong></h5>
                <strong>Ilinca Tomoroveanu </strong>
                <br />
                <abbr title="Phone">Phone:</abbr>
                0744 888 888
        <br />
                <abbr title="Email">E-mail:</abbr>
                ilinca.tomoroveanu@theatre.com
        <br />
                <br />
                <strong>Support:</strong> <a href="mailto:support@theatre.com">support@theatre.com</a><br />
                <strong>Booking:</strong> <a href="mailto:booking@theatre.com">booking@theatre.com</a>
            </address>
        </div>
        <div class="contact_right">
            <div id="map"></div>
            <br />
            <br />
            <div class="transport">
                <h5><b>Transport Means:</b></h5>
                <img id="bus_image" src="Resources/bus.png">
                  &nbsp 90, 91, 120, 226, 336, 381
                <br />
                <img id="subway_image" src="Resources/subway.png" />
                  &nbsp Universitate M2, Izvor M1
            </div>
        </div>
        <div class="clear">&nbsp;</div>
    </div>
</asp:Content>
