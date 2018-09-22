<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BreakTheIsoWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/CustomStyle.css" rel="stylesheet" />
    <div class="jumbotron" style="margin-top:100px">
        <h1>BreakTheISO</h1>
        <p class="lead">Follow your dreams and ROCK ON!!!</p>
        <p><a href="About" class="btn btn-primary btn-lg">Our Story &raquo;</a></p>
    </div>
    
    <div class="row">
        <div class="row">
            <div class="col-md-12">
                <h2 id="frontTitle">Freshly added in Gallery</h2>
            </div>  
        </div>
        <div class ="row">
            <div class="col-md-4">
                <div class="thumbnail">
                  <a href="Resources/one.png">
                    <img class="rounded" src="Resources/one.png" alt="Lights" style="width:100%">
                    <div class="caption">
                      <p>Lorem ipsum...test</p>
                    </div>
                  </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                  <a href="Resources/three.png">
                    <img class="rounded" src="Resources/three.png" alt="Lights" style="width:100%">
                    <div class="caption">
                      <p>Lorem ipsum...</p>
                    </div>
                  </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                  <a href="Resources/four.png">
                    <img class="rounded" src="Resources/four.png" alt="Lights" style="width:100%">
                    <div class="caption">
                      <p>Lorem ipsum...</p>
                    </div>
                  </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              </ol>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100" style="height:auto" src="Resources/one.png" alt="First slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" style="height:auto" src="Resources/two.png" alt="Second slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" style="height:auto" src="Resources/three.png" alt="Third slide">
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
        </div>
    </div>

</asp:Content>
