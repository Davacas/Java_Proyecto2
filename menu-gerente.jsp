<%-- 
    Document   : menu-gerente
    Created on : 28/10/2016, 10:41:18 PM
    Author     : dakedekaane
    Descripcion: Aqui va el menu del gerente
--%>

<%@page import="org.apache.jasper.JasperException"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
        if (session.getAttribute("Puesto") == null || !session.getAttribute("Puesto").toString().equals("GERENTE")) {
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acceso no autorizado</title>
    </head>
    <body>
        <p>shu</p>
    <%
        }
        else{
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú de gerente</title>
    </head>
    <body>
        <p>Bienvenido, <%=session.getAttribute("id_empleado")%>
        <p><a href="admin-meseros.jsp">Administrar meseros</a></p>
        <p><a href="admin-platillos.jsp">Administrar platillos</a></p>
    </body>

    <%  }
    %>
</html>

