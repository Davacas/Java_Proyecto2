<%-- 
    Document   : addreservacion
    Created on : 28/10/2016, 03:44:22 AM
    Author     : dakedekaane
    Descripcion: Realiza la inserción de reservaciones en la base de datos
--%>

<%@page import="java.sql.*" %>
<%
    String cliente = session.getAttribute("username").toString();
    String fecha= request.getParameter("fecha");
    String hora = request.getParameter("hora");
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
    
    Statement st = con.createStatement();

    int i = st.executeUpdate("INSERT INTO reservacion (id_cliente,fecha,hora,mesa)"
            + " VALUES (" + cliente + ",\'" + fecha + "\',\'" + hora + "\'," + Math.random() + ")");
    if (i > 0) {
        response.sendRedirect("registroexitoso.jsp");
    }
    else {
        response.sendRedirect("error.jsp");
    }
%>