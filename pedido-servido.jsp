<%-- 
    Document   : pedido-servido.jsp
    Created on : 29/10/2016, 01:36:44 AM
    Author     : dakedekaane
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id_pedido");
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
    
    Statement st = con.createStatement();

    st.executeUpdate("UPDATE Pedido SET "
            + "estado=\'SERVIDO\'"
            + "WHERE id_pedido=" + id + ";");%>
            <%=id%>
                    <%
    
    //response.sendRedirect("pedidos.jsp");
        
%>