<%-- 
    Document   : añadir
    Created on : 13-mar-2018, 14:48:29
    Author     : mrhighway98
--%>

<%@page import="java.sql.*"%>
<%@page import="com.conectarabbdd.org.ConectarBBDD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Añadir</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
       
    <%
      request.setCharacterEncoding("UTF-8");
      
      String nombre = request.getParameter("nombre");
      
      int telefono = Integer.parseInt(request.getParameter("telefono"));
      
      String direccion = request.getParameter("direccion");
      
      String pais = request.getParameter("pais");
      
      Connection conn = null;
      
      PreparedStatement ps = null;
      
      
      try {
        int row = 0;
        conn = ConectarBBDD.getConnection();
        
        String query = "INSERT INTO proveedor(nombre,telefono,direccion,pais) VALUES(?,?,?,?) ";
        
        ps = conn.prepareStatement(query);
        
        ps.setString(1, nombre);
        
        ps.setInt(2, telefono);
        
        ps.setString(3, direccion);
        
        ps.setString(4, pais);
        
        row = ps.executeUpdate();
        
        
        if (row > 0) {
          response.sendRedirect("proveedor.jsp");
          
        } else {
          out.println("Ha habido un error en la ejecución.");
        }        
      }
      
      catch(Exception ex) {
        out.println(ex.getMessage());
      }
      
      finally {
        ps.close();
        conn.close();
      }
      
    %>
  </body>
</html>
