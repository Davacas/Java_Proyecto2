<%-- 
    Document   : reservacion
    Created on : 28/10/2016, 03:22:58 AM
    Author     : dakedekaane
    Descripcion: Página donde el cliente realiza las reservaciones
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
    if (session.getAttribute("username") == null) {
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <p>Acceso no autorizado</p>
<%
    }
    else{
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROTECO FOOD - Reserva tu mesa</title>
    </head>
    <body>
        
        <p>Ingrese los datos deseados</p>
        <form method="POST" action="addreservacion.jsp">
            Fecha: <input type="date" name="date">
            Hora <input type="time" name="time">
            <input type="checkbox">Confirmar
            <input type="submit" value="Reservar">
        </form>
<%
    }
%>
    </body>
</html>
