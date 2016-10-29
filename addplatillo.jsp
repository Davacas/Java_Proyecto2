<%-- 
    Document   : addplatillo
    Created on : 28/10/2016, 03:44:32 AM
    Author     : dakedekaane
    Descripcion: Realiza la inserción de platillos en la base de datos
--%>

<%@page import="java.sql.*" %>
<%
    String nombre = request.getParameter("nombre");
    String descripcion = request.getParameter("descripcion");
    double precio = Double.parseDouble(request.getParameter("precio"));
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
    
    Statement st = con.createStatement();

    int i = st.executeUpdate("INSERT INTO Cliente (nombre,descripcion,precio)"
            + " VALUES (\'" + nombre + "\',\'" + descripcion + "\'," + precio + ")");
    if (i > 0) {
        response.sendRedirect("registroexitoso.jsp");
    }
    else {
        response.sendRedirect("error.jsp");
    }
%>