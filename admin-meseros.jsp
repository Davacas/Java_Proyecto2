<%-- 
    Document   : admin-meseros
    Created on : 28/10/2016, 03:23:32 AM
    Descripcion: Página donde el gernte administra los meseros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROTECO FOOD - Meseros</title>
    </head>
    <body>
        <form action="addmesero.jsp">
            <input type="submit" value="Añadir platillo">
        </form>
    <table>
            <thead>Mesero</thead>
            <tr>
                <th>Nombre</th>
                <th>Edad</th>
                <th>Platillos servidos</th>
                <th>Estado</th>
            </tr>
        </table>
    </body>
</html>
