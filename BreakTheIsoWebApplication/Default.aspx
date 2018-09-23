<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BreakTheIsoWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/CustomStyle.css" rel="stylesheet" />

    <!--Presentation Jumbotron for Home Page-->
    <div class="jumbotron d-flex justify-content-center flex-wrap" style="margin-top:100px">
        <div class="col-md-4 d-flex justify-content-center align-items-center">
            <img class="rounded ml-100" src="Resources/logo-home-alb.png" alt="logoJumbotron" style="width: 300px;height: 150;">
         </div>
        <div class="col-md-8">
            <div class="row pt-1 ml-1">
                <p class="h3" style="color:aliceblue">Our motto?</p>
            </div>
            <div class="row pt-1 ml-1">
                <p class="lead">Follow your dreams until the end of your life!</p>
            </div>
            <hr class="my-2" style="border-color:azure"/>
            <div class="row pt-2">
                <p><a href="About" class="btn btn-primary btn-lg" style="border:0px;">Discover our Story &raquo;</a></p>
            </div>
        </div>
    </div>
    
    <!--Fresh Photos added to Gallery-->
    <div class="row">
        <div class="row w-100">
            <div class="col-md-12">
                <h2 id="frontTitle" class="text-center">Freshly added to Gallery</h2>
            </div>  
        </div>
        <div class ="row border border-secondary rounded pt-4 mb-3">
            <div class="col-md-4">
                <div class="thumbnail">
                  <a href="Resources/one.png" data-toggle="modal" data-target="#myModal0">
                    <img class="rounded" src="Resources/one.png" alt="Lights" style="width:100%" >
                    <div class="caption">
                      <p>Lorem ipsum...test</p>
                    </div>
                  </a>
                </div>
                <div class="modal fade" id="myModal0">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <img src="Resources/one.png" alt="test">
                            </div>
                            <div class="modal-footer d-flex justify-content-center align-content-center">
                                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                  <a href="Resources/three.png" data-toggle="modal" data-target="#myModal1">
                    <img class="rounded" src="Resources/three.png" alt="Lights" style="width:100%">
                    <div class="caption">
                      <p>Lorem ipsum...</p>
                    </div>
                  </a>
                </div>
                <div class="modal fade" id="myModal1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <img src="Resources/three.png" alt="test">
                            </div>
                            <div class="modal-footer d-flex justify-content-center align-content-center">
                                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                  <a href="Resources/four.png" data-toggle="modal" data-target="#myModal2">
                    <img class="rounded" src="Resources/four.png" alt="Lights" style="width:100%">
                    <div class="caption">
                      <p>Lorem ipsum...</p>
                    </div>
                  </a>
                </div>
                <div class="modal fade" id="myModal2">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <img src="Resources/four.png" alt="test">
                            </div>
                            <div class="modal-footer d-flex justify-content-center align-content-center">
                                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Photo Carousel of random photos from gallery-->
        <div class="row w-100 d-flex justify-content-center align-content-center text-center">
            <div class="col-md-12">
                <h2>Take a look into our Gallery!</h2>
            </div> 
        </div>
        <div class="row">
            <div id="carouselExampleIndicators" class="carousel slide border border-dark" data-ride="carousel">
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
