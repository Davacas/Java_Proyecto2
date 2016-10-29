<%-- 
    Document   : admin-meseros
    Created on : 28/10/2016, 03:23:32 AM
    Descripcion: Página donde el gernte administra los meseros
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROTECO FOOD - Meseros</title>
        <link rel="stylesheet" href="http://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="shortcut icon" type="image/png" href="./img/proteco_food.png"/>
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
			<!--a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
    			<ul class="right hide-on-med-and-down">
				<li><a href="#">Platillos</a></li>
                                <li><a href="./registro.jsp">Registrarse</a></li>
				<li><a href="./login.jsp">Acceder</a></li>
			</ul>
			<ul class="side-nav" id="mobile-demo">
                                <li><a href="#">Platillos</a></li>
                                <li><a href="./registro.jsp">Registrarse</a></li>
				<li><a href="./login.jsp">Acceder</a></li>
			</ul-->
		</div>
	</nav>
	</div>

	<!--fin del navbar-->
        
        <%
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
            Statement st = con.createStatement();
            ResultSet rs;
            
            rs = st.executeQuery("SELECT * FROM Empleado WHERE puesto='MESERO'");
        %>
        <form action="addmesero.jsp">
            <!--input type="submit" value="Añadir platillo"-->
            <br>
            <button class="btn waves-effect waves-light blue-grey lighten-2" type="submit" name="action">Añadir Mesero</button>
        </form>
    <table class="highlight">
        <h4>Meseros</h4>
            <!--thead>Mesero</thead-->
            <thead>
            <tr>
                <th>Nombre</th>
                <!--<th>Platillos servidos</th>-->
                <th>Opciones</th>
            </tr>
            </thead>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getString(4) %></td>
                
                <td>
                    <!--a href="updatemesero.jsp">Actualizar mesero</a-->
                    <a href="updatemesero.jsp" class="waves-effect waves-light btn green">Actualizar mesero</a>
                    <!--a href="deletemesero.jsp">Eliminar mesero</a-->
                    <a href="deletemesero.jsp" class="waves-effect waves-light btn red">Eliminar mesero</a>
                </td>
            </tr>
            <% } %>
        </table>
        
        
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