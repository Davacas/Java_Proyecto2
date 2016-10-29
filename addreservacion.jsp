<%-- 
    Document   : addreservacion
    Created on : 28/10/2016, 03:44:22 AM
    Author     : dakedekaane
    Descripcion: Realiza la inserción de reservaciones en la base de datos
--%>

<%@page import="java.sql.*" %>
<%
    String id_cliente = session.getAttribute("id_cliente").toString();
    String fecha= request.getParameter("fecha");
    String hora = request.getParameter("hora");
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
    
    Statement st = con.createStatement();

    int i = st.executeUpdate("INSERT INTO Reservacion (cliente_id,fecha,hora,mesa)"
            + " VALUES (" + id_cliente + ",\'" + fecha + "\',\'" + hora + "\'," + new R + ")");
    if (i > 0) {
        response.sendRedirect("registroexitoso.jsp");
    }
    else {
        response.sendRedirect("error.jsp");
    }
%>