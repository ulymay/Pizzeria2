<%-- 
    Document   : login
    Created on : 24/03/2019, 11:27:10 PM
    Author     : jorge
--%>

<%
    String valid_email = "ulymay@gmail.com";
    String valid_password = "sistemas";
    boolean correcto = true;

    if (request.getParameter("email") != null) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        boolean recordar = Boolean.valueOf(request.getParameter("recordar"));

        if (valid_email.equals(email) && valid_password.equals(password)) {
            session.setAttribute("id", 1);
            session.setAttribute("nombre", "Ulises Lopez");
            session.setAttribute("email", valid_email );
            session.setAttribute("direccion", "Avenida siempre viva");
            session.setAttribute("perfil", "Administrador");
            
        } else {
            correcto = false;
        }
    }
    
    if(session != null && session.getAttribute("id") != null && Integer.valueOf(session.getAttribute("id").toString()) > -1){
        //Redirigir al index
        response.sendRedirect("index.jsp");
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

        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css" integrity="sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y" crossorigin="anonymous">

    </head>
    <body>
        <img src="img/logo.png" alt=""/>
        <form action="login.jsp" method="POST" >
            <div <%= correcto ? "style=\"display:none;\"":""%> class="alert alert-danger" role="alert">
                Email o Contraseña no validos
            </div>

            <div class="form-group">      
                <label for="exampleInputEmail1">Correo Electronico</label>
                <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Digite su correo">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Contraseña</label>
                <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Digite su contraseña">
            </div>
            <div class="form-group form-check">
                <input name="recordar" value="true" type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Recordarme</label>
            </div>
            <button type="submit" class="btn btn-primary">Identificarse</button>
        </form>
    </body>
</html>
