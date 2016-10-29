<%-- 
    Document   : adduser
    Created on : 28/10/2016, 03:39:17 AM
    Author     : dakedekaane
    Descripcion: Realiza la inserción e usuarios en la base de datos
--%>

<%@page import="java.sql.*" %>
<%
    String username = request.getParameter("user");
    String password = request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
    
    Statement st = con.createStatement();

    int i = st.executeUpdate("INSERT INTO Cliente (username,password)"
            + " VALUES (\'" + username + "\',\'" + password + "\')");
    if (i > 0) {
        response.sendRedirect("registroexitoso.jsp");
    }
    else {
        response.sendRedirect("error.jsp");
    }
%>


