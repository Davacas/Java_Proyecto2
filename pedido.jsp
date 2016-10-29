<%-- 
    Document   : pedido
    Created on : 28/10/2016, 03:22:21 AM
    Author     : dakedekaane
    Descripcion: Página donde el cliente realiza los pedidos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROTECO FOOD - Realiza tu pedido</title>
    </head>
    <body>
        <form method="post" action="pedido.jsp">
            Ingrese la clave del platillo: <input type="text" name="platillo">
            <input type="submit" value="Agregar">
        </form>
    </body>
</html>
