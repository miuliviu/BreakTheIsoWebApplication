<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="BreakTheIsoWebApplication.Gallery" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/CustomStyleGallery.css" rel="stylesheet" />

    <!--Gallery presentation Jumbo-->
    <div class="jumbotron jumbotron-fluid rounded" id="galleryJumbo">
      <div class="container">
        <h1 class="display-4" style="text-shadow: 2px 2px 4px #000000;">Gallery</h1>
          <hr class="my-3" style="border-color:aliceblue"/>
        <p class="lead" style="text-shadow: 2px 2px 4px #000000;">Here you will find all our albums that you can expolore and humble</p>
      </div>
    </div>

    <!--Albums Title-->
    <div class="row w-100">
        <div class="col-md-12">
            <h2 id="frontTitle" class="text-center">Albums</h2>
        </div>
    </div>

    <hr class="my2"/>

    <!--Albums dynamic generation-->
    <div class="row" id="albumBox" runat="server">

    </div>

</asp:Content>
