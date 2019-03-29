<%-- 
    Document   : index
    Created on : 13/03/2019, 02:34:20 PM
    Author     : jorge
--%>

<%
    if(Boolean.valueOf(request.getParameter("logout"))){
        session.setAttribute("id", null);
        session.setAttribute("nombre", null);
        session.setAttribute("email", null );
        session.setAttribute("direccion", null);
        session.setAttribute("perfil", null);
        session = null;
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/principal.js" type="text/javascript"></script>
       
        <link href="css/principal.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css" integrity="sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y" crossorigin="anonymous">
    </head>
    <body>

        <nav class="navbar  fixed-top  navbar-expand-lg navbar-dark bg-custom bgTransparente">
            <a class="navbar-brand logo" href="#" ><img src="img/logo.png" alt=""/>Pizzas Tony's</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarNav">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item active">
                        <a class="nav-link" href="#">INICIO <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#menu">MENU</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contacto">CONTACTO</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="carrito.jsp">
                            <div id="car">
                                <i class="fas fa-shopping-cart"></i>
                                <div>6</div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item">
                        <%
                            if(session != null && session.getAttribute("nombre") != null){
                                
                        %>
                        <a class="nav-link" href="profile.jsp"><i class="far fa-user"></i><%= session.getAttribute("nombre") %></a>
                        <%}else{%>
                        <a class="nav-link" href="login.jsp"><i class="far fa-user"></i>Login</a>
                        <%}%>
                    </li>
                    <li class="nav-item">
                    <%
                            if(session != null && session.getAttribute("nombre") != null){
                                
                        %>
                        <a class="nav-link" href="index.jsp?logout=true">Salir</a>
                        <%}%>
                    </li>
                </ul>
            </div>
        </nav>


        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="http://wallpapertop.net/wp-content/uploads/2018/02/Pizza%20UHD%20Wallpaper.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="http://wallpapertop.net/wp-content/uploads/2018/02/Pizza%20UHD%20Wallpaper.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="http://wallpapertop.net/wp-content/uploads/2018/02/Pizza%20UHD%20Wallpaper.jpg" class="d-block w-100" alt="...">
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

        <div class="container-fluid" id="menu">
            <div class="row">
                <div class="col-md-5">&nbsp;</div>
                <div class="col-md-2 titulo"> Menu </div>
                <div class="col-md-5">&nbsp;</div>
            </div>
            <% for (int i = 0; i < 3; i++) {%>
            <div class="row">
                <% for (int j = 0; j < 3; j++) {%>
                <div class="col-md-4">

                    <div class="p-card">
                        <img src="http://wallpapertop.net/wp-content/uploads/2018/02/Pizza%20UHD%20Wallpaper.jpg"  alt="...">
                        <div class="p-card-info">
                            <div class="p-card-info-head">
                                <h2>Mexicana</h2>
                                <p>Precio: 150.00</p>
                                <a>AÑADIR COMPRA</a>
                            </div>
                            <div class="p-card-info-body">
                                <p>Preparada con los mejores 
                                    ingredientes la pizza mexicana
                                    posee uno de los mejores toques.</p>

                                <p>bla bla bla bla blabla bla bla bla bla
                                    bla bla bla bla bla
                                    bla bla bla bla blabla bla bla bla bla
                                    bla bla bla bla blabla bla bla bla bla</p>


                                <p>bla bla bla bla blabla bla bla bla bla
                                    bla bla bla bla bla</p>

                                <p>bla bla bla bla bla
                                    bla bla bla bla blabla bla bla bla bla</p>
                            </div>
                        </div>
                    </div>

                </div>
                <%}%>
            </div>
            <%}%>
            <div class="row">
                <div class="col-md-5">&nbsp;</div>
                <div class="col-md-2">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>

                <div class="col-md-5">&nbsp;</div>
            </div>
        </div>


            <div class="container-fluid" id="contacto">
            <div class="row">
                <div class="col-md-5">&nbsp;</div>
                <div class="col-md-2 titulo"> Contacto </div>
                <div class="col-md-5">&nbsp;</div>
            </div>

            <div class="row" style="margin-bottom: 50px;">
                <div class="col-md-1">&nbsp;</div>
                <div class="col-md-10">
                    <p>En Pizzas Tony’s estamos para ofrecerle las mejores pizzas y al mejor precio. Por ello aceptamos y agradecemos su valiosa opinión y/o 
                        sugerencias.</p> 

                    <p>Siguenos en nuestras redes sociales para enterarte de todas nuestras promociones.</p>
                </div>
                <div class="col-md-1">&nbsp;</div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <form>
                        <div class="col-auto">
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text"><i class="fas fa-user"></i></div>
                                </div>
                                <input type="text" class="form-control" id="txtNombre" placeholder="Nombre Completo">
                            </div>
                        </div>
                        <div class="col-auto">
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text"><i class="far fa-building"></i></div>
                                </div>
                                <input type="text" class="form-control" id="txtDireccion" placeholder="Direccion">
                            </div>
                        </div>
                        <div class="col-auto">
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text"><i class="far fa-envelope"></i></div>
                                </div>
                                <input type="email" class="form-control" id="txtEmail" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-auto">
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text"><i class="fas fa-phone"></i></div>
                                </div>
                                <input type="phone" class="form-control" id="txtDireccion" placeholder="Telefono">
                            </div>
                        </div>
                        <div class="col-auto">
                            <textarea style="height: 125px;" class="form-control" id="txtComentario" placeholder="Comentario"></textarea>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-primary rounded-pill" style="float:right; margin-right: 30px; width: 100px;">Enviar</button>
                    </form>

                </div>
                <div class="col-md-6">
                    
                    <div id="map"></div>
                </div>
            </div>

        </div>

        <div class="container-fluid bg-green">
            <div class="row">
                <div class="col-md-8">&nbsp;</div>
                <div class="col-md-3">
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-facebook-square"></i>
                    <i class="fab fa-twitter-square"></i>
                </div>
                <div class="col-md-1">&nbsp;</div>
            </div>
        </div>
    <script>
        function initMap() {
        // The location of Uluru
        var guaymas = {lat: 27.917212, lng: -110.9131917};
        // The map, centered at Uluru
        var map = new google.maps.Map(
            document.getElementById('map'), {zoom: 16, center: guaymas});
        // The marker, positioned at Uluru
        var marker = new google.maps.Marker({position: guaymas, map: map});
      }

    </script>        
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBToIwcIXoORR2bq82WdeQsUZODPmKy6GY&callback=initMap">
    </script>
    </body>
</html>
