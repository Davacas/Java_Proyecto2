<%--
    Document   : pedidos
    Created on : 28/10/2016, 03:22:48 AM
    Descripcion: Página donde los meseros pueden checar los pedidos
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
    if (session.getAttribute("Puesto") == null || !session.getAttribute("Puesto").toString().equals("MESERO")) { 
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
        <title>PROTECO FOOD - Pedidos</title>
    </head>
    <body>
        <%
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("SELECT * FROM Pedido");
            
        %>
        <table>
            <thead>Pedidos</thead>
            <tr>
                <th>Num. pedido</th>
                <th>Cliente</th>
                <th>Fecha y hora</th>
                <th>Estado</th>
                <th></th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getString(1) %></td>
                <td> <%= rs.getString(2) %></td>
                <td> <%= rs.getString(3) %></td>
                <td> <%= rs.getString(4) %></td>
                <td> <a href="pedido-servido.jsp">Servido</a></td>
            </tr>
            <% } %>

        </table>
            <%}%>
    </body>
</html>
