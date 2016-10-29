<%-- 
    Document   : login
    Created on : 28-oct-2016, 20:35:46
    Author     : bruni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="http://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="shortcut icon" type="image/png" href="./img/proteco_food.png"/>
	<title>Proteco Food</title>
	<link rel="stylesheet" href="css/materialize.min.css">
</head>
<body>
	<!--Scripts necesarios-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!--script type="text/javascript" src="js/jquery-migrate-3.0.0.js"></script-->
	<script type="text/javascript" src="js/materialize.js"></script>
		<script>
		$(document).ready(function(){
			$('.parallax').parallax();
			$(".button-collapse").sideNav();
			$('.modal-trigger').leanModal();
		});
                </script>
	<!--fin de los scripts-->

	<!--inicio del navbar-->
	<div class="navbar-fixed">
	<nav>
		<div class="nav-wrapper blue-grey lighten-2">
                    <a href="./index.jsp" class="brand-logo"><img src="img/proteco_food.png" style="width:  40px ; height: 40px;">PROTECO FOOD</a>
			<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
    			<ul class="right hide-on-med-and-down">
                            <li><a href="./platillos.jsp">Platillos</a></li>
                                <li><a href="./registro.jsp">Registrarse</a></li>
				<li><a href="#!">Acceder</a></li>
			</ul>
			<ul class="side-nav" id="mobile-demo">
                            <li><a href="./platillos.jsp">Platillos</a></li>
                                <li><a href="./registro.jsp">Registrarse</a></li>
				<li><a href="#!">Acceder</a></li>
			</ul>
		</div>
	</nav>
	</div>
	<!--fin del navbar-->
        
        <div class="container">    
        <div class="row input-field col s6">
            <img src="img/proteco_food.png" style="width:  30% ; height: 30%;">
        </div>
        
        <div class="container" id="info">
            <div>
                <h2 style="text-align: left" class="blue-grey-text text-lighten-2">Acceder</h2>
            </div>
        </div>
        
            <div class="row">
                <form class="col s6 " method="post" action="./checkin.jsp">
                    <div class="row">
                        <div class="input-field col s6">
                            <input  id="first_name" name="user" type="text" class="validate">
                            <label for="first_name">Usuario</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="password" name="pass" type="password" class="validate">
                            <label for="last_name">Contraseña</label>
                            <!--input type="submit" value="Registrarse"-->
                        </div>
                        <div class="input-field col s6">
                            <!--a class="waves-effect waves-light btn blue-grey lighten-2" type="submit" >Acceder</a-->
                            <button class="btn waves-effect waves-light blue-grey lighten-2" type="submit" name="action">Submit
                               <i class="material-icons right">send</i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
	<!--inicio del footer-->
	<footer class="page-footer blue-grey lighten-2">
		<div class="container">
			<div class="row">
				<div class="col l6 s12">
					<h5 class="white-text">
						Contacto
					</h5>
					<p class="grey-text text-lighten-4">
                                            Teléfono: 56-22-30-45 y 56-22-38-99 ext. 44174. <br>

                                            Whatsapp: 55-32-86-06-30. <br>

                                            Correo electrónico: cursosproteco@gmail.com y hola@proteco.mx
					</p>
				</div>
				<div class="col l4 offset-l2 s12">
					<ul>
						<li><a href="https://www.facebook.com/proteco"  target="_blank" class="grey-text text-lighten-3">Facebook</a></li>
						<li><a href="https://twitter.com/proteco"  target="_blank" class="grey-text text-lighten-3">Twitter</a></li>
						<li><a href="http://proteco.mx/cursos"  target="_blank" class="grey-text text-lighten-3">Proteco</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer-copyright">
			<div class="container">
				2016 Copyright
			</div>

		</div>
	</footer>
</body>
</html>