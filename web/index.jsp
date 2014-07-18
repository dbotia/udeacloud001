<%-- 
    Document   : index
    Created on : 18/07/2014, 08:47:04 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Version 2!</h1>
        <form action="prueba">
            Nombre <input type="text" name="Nombre" value="" />
            <br>
            Apellido <input type="text" name="apellido" value="" />
            <br>
            <input type="submit" value="Enviar" />
        </form>


        <%@ page import="org.netbeans.saas.*, org.netbeans.saas.google.*" %>

        <%

            try {
                String address = "16 Network Circle, Menlo Park";
                java.lang.Integer zoom = 15;
                String iframe = "false";

                RestResponse result = GoogleMapService.getGoogleMap(address, zoom, iframe);
                         //TODO - Uncomment the print Statement below to print result.
               out.println("The SaasService returned: "+result.getDataAsString());
            } catch (Exception ex) {
                ex.printStackTrace();
            }

        %>





    </body>
</html>
