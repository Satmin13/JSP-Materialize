<%-- 
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
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <link rel="stylesheet" href="css/estilos.css">
        <title>Insertar Memoria Modificada</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tiendamemoria", "root", "root");
            Statement s = conexion.createStatement();

            request.setCharacterEncoding("UTF-8");

            String actualizacion = "UPDATE memorias SET "
                    + "tipo='" + request.getParameter("tipos")
                    + "', marca='" + request.getParameter("marca")
                    + "', modelo='" + request.getParameter("modelo")
                    + "', precio=" + Double.valueOf(request.getParameter("precio"))
                    + " WHERE id=" + Integer.valueOf(request.getParameter("id"));
            s.execute(actualizacion);
            out.println("Memoria modificada correctamente.");

            conexion.close();
        %>
        <br>
        <a href="tienda.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Tienda de Memorias</a>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

    </body>
</html>
