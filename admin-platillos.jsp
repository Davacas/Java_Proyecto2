<%-- 
    Document   : admin-platillos
    Created on : 28/10/2016, 03:23:23 AM
    Descripcion: Página donde el gernte administra los platillos
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
        <form action="addplatillo.jsp">
            <input type="submit" value="Añadir platillo">
        </form>
    <table>
            <thead>Platillo</thead>
            <tr>
                <th>Imagen</th>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>Precio</th>
                <th>Opciones</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td></td>
                <td> <%= rs.getString(2) %></td>
                <td> <%= rs.getString(3) %></td>
                <td> <%= rs.getString(4) %></td>
                <td>
                    <a href="updateplatillo.jsp?nombre=<%=rs.getString(2)%>">Actualizar platillo</a>
                    <a href="deleteplatillo.jsp">Eliminar platillo</a>
                </td>
            </tr>
            
            <% } %>
        </table>
    </body>
</html>
