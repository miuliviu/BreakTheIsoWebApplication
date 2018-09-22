<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BreakTheIsoWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/CustomStyle.css" rel="stylesheet" />
    <div class="jumbotron">
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
                    <img src="Resources/one.png" alt="Lights" style="width:100%">
                    <div class="caption">
                      <p>Lorem ipsum...test</p>
                    </div>
                  </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                  <a href="Resources/three.png">
                    <img src="Resources/three.png" alt="Lights" style="width:100%">
                    <div class="caption">
                      <p>Lorem ipsum...</p>
                    </div>
                  </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                  <a href="Resources/four.png">
                    <img src="Resources/four.png" alt="Lights" style="width:100%">
                    <div class="caption">
                      <p>Lorem ipsum...</p>
                    </div>
                  </a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
