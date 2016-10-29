<%-- 
    Document   : addreservacion
    Created on : 28/10/2016, 03:44:22 AM
    Author     : dakedekaane
    Descripcion: Realiza la inserción de reservaciones en la base de datos
--%>

<%@page import="java.sql.*" %>
<%
    int cliente_id = Integer.parseInt(request.getParameter("cliente"));
    int mesa = Integer.parseInt(request.getParameter("pass"));
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
    
    Statement st = con.createStatement();

    int i = st.executeUpdate("INSERT INTO Reservacion (cliente_id,mesa)"
            + " VALUES (" + cliente_id + "," + mesa + ",)");
    if (i > 0) {
        response.sendRedirect("registroexitoso.jsp");
    }
    else {
        response.sendRedirect("error.jsp");
    }
%>