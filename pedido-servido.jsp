<%-- 
    Document   : pedido-servido.jsp
    Created on : 29/10/2016, 01:36:44 AM
    Author     : dakedekaane
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int id = Integer.parseInt(request.getParameter("id_pedido"));
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
    
    Statement st = con.createStatement();

    int i = st.executeUpdate("UPDATE Pedido SET"
            + "estado = \'SERVIDO\'"
            + "WHERE id=" + id);
    if (i > 0) {
        response.sendRedirect("registroexitoso.jsp");
    }
    else {
        response.sendRedirect("error.jsp");
    }
%>