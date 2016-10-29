<%-- 
    Document   : admin-platillos
    Created on : 28/10/2016, 03:23:23 AM
    Descripcion: Página donde el gernte administra los platillos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROTECO FOOD - Platillos</title>
    </head>
    <body>
        <form action="addplatillo.jsp">
            <input type="submit" value="Añadir platillo">
        </form>
    <table>
            <thead>Platillo</thead>
            <tr>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>Precio</th>
                <th>Estado</th>
            </tr>
        </table>
    </body>
</html>
