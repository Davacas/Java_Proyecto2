<%-- 
    Document   : index
    Created on : 28-oct-2016, 19:34:05
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
                    <a href="#!" class="brand-logo"><img src="img/proteco_food.png" style="width:  40px ; height: 40px;">PROTECO FOOD</a>
			<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
    			<ul class="right hide-on-med-and-down">
                            <li>Bienvenido, <%=session.getAttribute("username")%></li>
                            <li><a href="./platillos.jsp">Platillos</a></li>
                            <%
                                if (session.getAttribute("username") == null) {
                            %>
                                <li><a href="./registro.jsp">Registrarse</a></li>
				<li><a href="./login.jsp">Acceder</a></li>
                            <%  }
                                else if (session.getAttribute("puesto") == null){
                            %>
                                <li><a href="./pedido.jsp">Realizar pedido</a></li>
                                <li><a href="./reservacion.jsp">Realizar reservación</a></li>
                                <li><a href="./checkout.jsp">Cerrar sesión</a></li>
                            <%
                                }
                                else if (session.getAttribute("puesto").toString().equals("GERENTE")){
                            %>
                                <li><a href="./admin-platillos.jsp">Administrar platillos</a></li>
                                <li><a href="./admin-meseros.jsp">Administrar meseros</a></li>
                                <li><a href="./checkout.jsp">Cerrar sesión</a></li>
                            <%
                                }
                                else if (session.getAttribute("puesto").toString().equals("MESERO")){
                            %>
                                <li><a href="./pedidos.jsp">Revisar pedidos</a></li>
                                <li><a href="./checkout.jsp">Cerrar sesión</a></li>
                            <%
                                }
                            %>
			</ul>
			<ul class="side-nav" id="mobile-demo">
                            <li>Bienvenido, <%=session.getAttribute("username")%></li>
                            <li><a href="./platillos.jsp">Platillos</a></li>
                            <%
                                if (session.getAttribute("username") == null) {
                            %>
                                <li><a href="./registro.jsp">Registrarse</a></li>
				<li><a href="./login.jsp">Acceder</a></li>
                            <%  }
                                else if (session.getAttribute("puesto") == null){
                            %>
                                <li><a href="./pedido.jsp">Realizar pedido</a></li>
                                <li><a href="./reservacion.jsp">Realizar reservación</a></li>
                                <li><a href="./checkout.jsp">Cerrar sesión</a></li>
                            <%
                                }
                                else if (session.getAttribute("puesto").toString().equals("GERENTE")){
                            %>
                                <li><a href="./admin-platillos.jsp">Administrar platillos</a></li>
                                <li><a href="./admin-meseros.jsp">Administrar meseros</a></li>
                                <li><a href="./checkout.jsp">Cerrar sesión</a></li>
                            <%
                                }
                                else if (session.getAttribute("puesto").toString().equals("MESERO")){
                            %>
                                <li><a href="./pedidos.jsp">Revisar pedidos</a></li>
                                <li><a href="./checkout.jsp">Cerrar sesión</a></li>
                            <%
                                }
                            %>
			</ul>
		</div>
	</nav>
	</div>
	<!--fin del navbar-->
        
        <div class="col 16">
            <div><!-- class="parallax-container"-->
                <div><!-- class="parallax "-->
                    <center>
                        <img src="img/proteco_food.png" style="width:  20% ; height: 20%;">
                    </center>
		</div>
	</div>
           </div>
        
        
	<div class="container" id="info">
		<div>
			<h2 style="text-align: center">Proteco Food</h2>
			<p style="text-align: center">
			 Restaurant de Proteco, especializados en prepara la comida mas nutritiva y deliciosa que podran probar tu y tu familia, amigos o a quien guste acompañarte en esta experiencia culinaria.
			</p>
		</div>
	</div>
	<div class="parallax-container">
		<div class="parallax">
                    <img src="img/Platillo1.jpg">
		</div>
	</div>
		<div class="container" id="info">
		<div>
			<h2 style="text-align: center">Nuestros servicios</h2>
			<p style="text-align: center">
			Contamos con los mejores chefs de toda la región, que estan dispuestos a brindar sus servicios con la mejor actitud.
                        
                        Nuestros meseros y meseras brindan un servicio rapido, elegante y eficiente que no tardaran en llevarte la comida hasta tu mesa.
                        
                        Tambien contamos con el servicio de reservacion, para que tengas ningun incoveniente a la hora de llegar.
			</p>
		</div>
	</div>
        
		<a href="#modal1" class="waves-effect waves-light btn modal-trigger grey">Creadores</a>

	<div id="modal1" class="modal">
		<div class="modal-content">
			<h4>Creadores:</h4>
			<p>
                            Daniel Vargas <br>
                            Bruno Torres <br>
                            David Yaxkin <br>
			</p>
		</div>
		<div class="modal-footer">
			<a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Salir</a>
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