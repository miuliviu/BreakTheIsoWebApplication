<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlbumPreview.aspx.cs" Inherits="BreakTheIsoWebApplication.AlbumPreview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/CustomStyleAlbumPreview.css" rel="stylesheet" />

    <!--Album presentation Jumbo-->
    <div class="jumbotron jumbotron-fluid rounded" id="albumJumbo">
      <div class="container">
        <h1 class="display-4" style="text-shadow: 2px 2px 4px #000000;">Album - <%: Request.QueryString["album"].ToString() %></h1>
          <hr class="my-3" style="border-color:aliceblue"/>
        <p class="lead" style="text-shadow: 2px 2px 4px #000000;">ALBUM DESCRIPTION</p>
      </div>
    </div>

    <!--Photos Dynamic Generation from Album Directory-->
    <div class="row" id="imagesBox" runat="server">

    </div>

</asp:Content>
