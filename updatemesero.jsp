<%-- 
    Document   : updatemesero
    Created on : 28/10/2016, 03:53:02 AM
    Author     : dakedekaane
    Descripcion: Realiza la actualización de meseros en la base de datos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String username = request.getParameter("user");
    String password = request.getParameter("pass");
    String nombre = request.getParameter("nombre");
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
    
    Statement st = con.createStatement();

    int i = st.executeUpdate("UPDATE Empleado SET "
            + "nombre=\'" + nombre + "\', "
            + "password=\'" + password + "\' WHERE username=\'" + username + "\'");
    if (i > 0) {
        response.sendRedirect("registroexitoso.jsp");
    }
    else {
        response.sendRedirect("error.jsp");
    }
%>