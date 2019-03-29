<%-- 
    Document   : carrito
    Created on : 24/03/2019, 11:27:24 PM
    Author     : jorge
--%>

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
        <link href="css/carrito.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css" integrity="sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y" crossorigin="anonymous">

    </head>
    <body>
        <nav class="navbar  fixed-top  navbar-expand-lg navbar-dark bg-custom">
            <a class="navbar-brand logo" href="#" ><img src="img/logo.png" alt=""/>Pizzas Tony's</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarNav">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">INICIO <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">MENU</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">CONTACTO</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="carrito.jsp">
                            <div id="car">
                                <i class="fas fa-shopping-cart"></i>
                                <div>6</div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item">

                        <a class="nav-link" href="#"><i class="far fa-user"></i> JORGE</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container carrito">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Articulo</th>
                        <th scope="col">Cantidad</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Mexicana</td>
                        <td><input type="text" value="2"></td>
                        <td>150.00</td>
                        <td>300.00</td>
                    </tr>
                    <tr>
                        <td>Mexicana</td>
                        <td><input type="text" value="2"></td>
                        <td>150.00</td>
                        <td>300.00</td>
                    </tr>
                    <tr>
                        <td>Mexicana</td>
                        <td><input type="text" value="2"></td>
                        <td>150.00</td>
                        <td>300.00</td>
                    </tr>
                    <tr>
                        <td>Mexicana</td>
                        <td><input type="text" value="2"></td>
                        <td>150.00</td>
                        <td>300.00</td>
                    </tr>
                    <tr>
                        <td>Mexicana</td>
                        <td><input type="text" value="2"></td>
                        <td>150.00</td>
                        <td>300.00</td>
                    </tr>
                    <tr class="last">
                        <th>&nbsp;</th>
                        <th>&nbsp;</th>
                        <th>GRAN TOTAL</th>
                        <th>1500.00</th>
                    </tr>
                </tbody>
            </table>
            <div class="row">
                <div class="col-md-9"></div>
                <div class="col-md-3"><img src="https://i.stack.imgur.com/XFEHO.png"></div>
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
    </body>
</html>
