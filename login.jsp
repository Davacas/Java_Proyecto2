<%-- 
    Document   : login.jsp
    Created on : 28/10/2016, 03:20:30 AM
    Author     : dakedekaane
    Descripcion: Página de login
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROTECO FOOD - Inicia sesión</title>
    </head>
    <body>
        <p>Ingrese su datos</p>
        <form method="POST" action="checkin.jsp">
            Usuario: <input type="text" name="user">
            Contraseña: <input type="password" name="pass">
            <input type="submit" value="Iniciar sesión">
        </form>
    </body>
</html>
