<%-- 
    Document   : registro
    Created on : 28/10/2016, 03:22:33 AM
    Author     : dakedekaane
    Descripcion: Página de registro de usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROTECO FOOD - Registrate</title>
    </head>
    <body>
        <p>Ingrese su datos</p>
        <form method="POST" action="adduser.jsp">
            Usuario: <input type="text" name="user">
            Contraseña: <input type="password" name="pass">
            <input type="submit" value="Registrarse">
        </form>
    </body>
</html>
