<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="HomeNew.aspx.cs" Inherits="HomeNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .hometron {
            height: 15em;
        }

        .algoconborde {
            -webkit-text-fill-color: #0094ff;
            -webkit-text-stroke: 1px black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <a href="CatalogoNew.aspx">
                    <img class="d-block w-100" src="https://www.feedbackcasino.com/images/blog/electronic-arts.jpg" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h2 class="algoconborde" style="color: #0094ff">EA GAMES</h2>
                        <p style="color: #ffffff">Nuestro patrocinador</p>
                    </div>
                </a>
            </div>
            <div class="carousel-item">
                <a href="CatalogoNew.aspx">
                    <img class="d-block w-100" src="https://support.ogedge.com/hc/en-us/article_attachments/206630366/tw1FYLq.jpg" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h2 class="algoconborde" style="color: #0094ff">StarCraft 2</h2>
                        <p style="color: #ffffff">La evolucion del RTS</p>
                    </div>
                </a>
            </div>
            <div class="carousel-item">
                <a href="CatalogoNew.aspx">
                    <img class="d-block w-100" src="https://i.imgur.com/j09pffQ.png" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h2 class="algoconborde" style="color: #0094ff">MINECRAFT</h2>
                        <p style="color: #ffffff">Nuevos mods</p>
                    </div>
                </a>
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

    <div class="jumbotron bg-light d-flex justify-content-center mt-5 hometron">
        <div class="text-center align-self-center">
            <i class="fa fa-gamepad fa-5x"></i>
            <h1 class="mb-2 display-4">Huge Games</h1>
            <h5 class="mb-0 lead">Todos los juegos en un solo lugar</h5>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>