<%-- 
    Document   : borraGuitarra
    Created on : 19-abr-2018, 18:44:06
    Author     : Adri
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
        <link href="images/favicon.ico" rel="icon" type="image/x-icon" />
        <title>
        </title>
    </head>
    <body class="mainBody">
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/venta", "root","");
            Statement s = conexion.createStatement();
            
            s.execute("DELETE FROM guitarra WHERE numSerie=" + request.getParameter("numSerie"));
         %>
         
         <script>document.location = "listadoGuitarras.jsp"</script>
            
            
    </body>
</html>
