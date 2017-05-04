<%-- 
    Author     : Fatima
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar</title>
    </head>
    <body>
         <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tiendamemoria", "root", "root");
            Statement s = conexion.createStatement();

            s.execute("DELETE FROM memorias WHERE id=" + request.getParameter("id"));

            s.close();
        %>	
        <script>document.location = "tienda.jsp"</script> 
    </body>
</html>
