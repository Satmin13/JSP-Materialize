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


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda Online de Memorias</title>
    </head>
    <body style="border:2px;background-image:url('pattern.jpg');">
        <div class="container" style="background-color: white;padding: 30px">
            <br><br>			
            <div class="panel panel-primary">
                <div class="uno" align='center'><h2>Tienda de Memorias</h2></div>
                
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tiendamemoria", "root", "root");
                    Statement s = conexion.createStatement();
                    ResultSet listadoTipo = s.executeQuery("SELECT * FROM tipos");
                   
                %>

                <table class="highlight">
                    <tr><th>Id<th>Tipo</th><th>Marca</th><th>Modelo</th><th>Precio</th></tr>
                    <form method="get" action="insertaMemoria.jsp">
                        <tr>
                            <td><input type="text" name="id" size="5"></td>
                            <td> 
                                <select name="tipos" class="browser-default">
                                   <%
                                    while (listadoTipo.next()) {
                                         out.println("<option value='" + listadoTipo.getString("tipo") + "'>");
                                         out.print(listadoTipo.getString("tipo")+ "</option>");
                                         
                                    }
                                   %>
                                </select>
                                
                               </td>
                            <% 
                                 ResultSet listado = s.executeQuery("SELECT * FROM memorias");
                             %>
                            <td><input type="text" name="marca" size="5"></td>
                            <td><input type="text" name="modelo" size="35"></td>
                            <td><input type="text" name="precio" size="10"></td>
                            <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td></tr>           
                    </form>
                    <%
                        while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("id") + "</td>");
                            out.println("<td>" + listado.getString("tipo") + "</td>");
                            out.println("<td>" + listado.getString("marca") + "</td>");
                            out.println("<td>" + listado.getString("modelo") + "</td>");
                            out.println("<td>" + listado.getString("precio") + "</td>");
                    %>
                    <td>
                        <form method="get" action="modificaMemoria.jsp">
                            <input type="hidden" name="id" value="<%=listado.getString("id")%>">
                            <input type="hidden" name="tipo" value="<%=listado.getString("tipo")%>">
                            <input type="hidden" name="marca" value="<%=listado.getString("marca")%>">
                            <input type="hidden" name="modelo" value="<%=listado.getString("modelo")%>">
                            <input type="hidden" name="precio" value="<%=listado.getString("precio")%>">
                            <button type="submit"  class="btn waves-effect waves-light">
                                Editar<i class="material-icons right">mode_edit</i></button>
                        </form>
                    </td>
                    <td>
                        <form method="get" action="borraMemoria.jsp">
                            <input type="hidden" name="id" value="<%=listado.getString("id")%>"/>
                            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Eliminar<i class="material-icons right">delete</i></button>
                        </form>
                    </td></tr>
                    <%
                        } // while   

                        conexion.close();
                    %>
                
                </table>
                   
            </div>

        </div>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

    </body>
</html>
