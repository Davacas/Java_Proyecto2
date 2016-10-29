<%-- 
    Document   : platillos
    Created on : 28/10/2016, 03:22:13 AM
    Author     : dakedekaane
    Descripcion: Página donde se muestran los platillos
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROTECO FOOD - Platillos</title>
    </head>
    <body>
        <%
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("SELECT * FROM Platillo");
        %>
        <table>
            <thead>Platillos</thead>
            
            <tr>
                <th>Imagen?</th>
                <th>Nombre platillo</th>
                <th>Descripcion</th>
                <th>Precio</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td></td>
                <td> <%= rs.getString(2) %></td>
                <td> <%= rs.getString(3) %></td>
                <td> <%= rs.getString(4) %></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
