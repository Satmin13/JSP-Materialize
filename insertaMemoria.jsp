<%-- 
    Document   : insertaMemoria
    Created on : 16-abr-2017, 20:45:17
    Author     : Fatima
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar nueva Memoria</title>
    </head>
    <body>
           <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tiendamemoria","root", "root");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      // Comprueba la existencia del número de tarjeta introducido
      String consultaNumSocio = "SELECT * FROM memorias WHERE id=" + Integer.valueOf(request.getParameter("id"));      
      
      ResultSet numeroDeSocios = s.executeQuery (consultaNumSocio);
      numeroDeSocios.last();
      
      if (numeroDeSocios.getRow() != 0) {
        out.println("Lo siento, no se ha podido dar de alta, ya existe una tarjeta con el número "
                    + request.getParameter("id") + ".");
      } else {
        String insercion = "INSERT INTO memorias VALUES (" + Integer.valueOf(request.getParameter("id"))
                           + ", '" + request.getParameter("tipos")
                           + "', '" + request.getParameter("marca")
                           + "', '" + request.getParameter("modelo")
                           + "', " + Double.valueOf(request.getParameter("precio")) + ")";
        s.execute(insercion);
        out.println("Memoria guardada.");
      }
      conexion.close();
    %>
     <a href="tienda.jsp">Volver</a>
    </body>
</html>
