<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShareMap.aspx.cs" Inherits="ShareMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
.google-maps {
    position: relative;
    padding-bottom:100%;
    height: 0;
    overflow: hidden;
}
.google-maps iframe {
    position:absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class='row'>
       <div class='col-md-12'>
          <div class="google-maps" id="map">
              <iframe  width="800" height="450" frameborder="0" style="border:0"></iframe>
          </div>
       </div>
     </div>

    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 23.7386467, lng: 121.0466129 },
                zoom: 8
            });
        }
    </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBIxGBfo6qsxTByA78hREN-jwllyO6Kc2Q&callback=initMap"  async defer></script>

</asp:Content>

