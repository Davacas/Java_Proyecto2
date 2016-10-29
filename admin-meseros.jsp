<%-- 
    Document   : admin-meseros
    Created on : 28/10/2016, 03:23:32 AM
    Descripcion: Página donde el gernte administra los meseros
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROTECO FOOD - Meseros</title>
    </head>
    <body>
        <%
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("SELECT * FROM Empleado WHERE puesto='MESERO'");
        %>
        <form action="addmesero.jsp">
            <input type="submit" value="Añadir platillo">
        </form>
    <table>
            <thead>Mesero</thead>
            <tr>
                <th>Nombre</th>
                <!--<th>Platillos servidos</th>-->
                <th>Opciones</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getString(4) %></td>
                
                <td>
                    <a href="updatemesero.jsp">Actualizar mesero</a>
                    <a href="deletemesero.jsp">Eliminar mesero</a>
                </td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
