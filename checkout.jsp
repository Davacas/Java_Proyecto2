<%-- 
    Document   : checkout
    Created on : 28/10/2016, 03:24:54 AM
    Author     : dakedekaane
    Descripcion: Termina la sesión del usuario
--%>

<%@page import="java.sql.*" %>
<%
    session.removeAttribute("user");
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
