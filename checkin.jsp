<%-- 
    Document   : checkin
    Created on : 28/10/2016, 03:24:46 AM
    Author     : dakedekaane
    Descripcion: Realiza la validación de usuario
--%>

<%@page import="java.sql.*" %>
<%
    String username = request.getParameter("user");
    String password = request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PROTECOFood","root","");
    
    Statement st = con.createStatement();
    
    ResultSet rs;
    
    rs = st.executeQuery("SELECT * FROM Cliente WHERE username=\'"+username+"\' and password=\'"+password+"\'");
    
    if(rs.next()){
        session.setAttribute("username",username);
        response.sendRedirect("index.jsp");
    }
    else {
        response.sendRedirect("error.jsp");
    }

%>