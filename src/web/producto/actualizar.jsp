<%-- 
    Document   : actualizar
    Created on : 13-mar-2018, 16:06:17
    Author     : mrhighway98
--%>

<%@page import="java.sql.*"%>
<%@page import="com.conectarabbdd.org.ConectarBBDD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Actualizar</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
  </head>
  <body>
    <%
      request.setCharacterEncoding("UTF-8");
      
      String id = request.getParameter("id");
      
      int uid = Integer.parseInt(id);
      
      String nombre = request.getParameter("nombre");
      
      String modelo = request.getParameter("modelo");
      
      String marca = request.getParameter("marca");
      
      int precio = Integer.parseInt(request.getParameter("precio"));
      
      Connection conn = null;
      
      PreparedStatement ps = null;
      
      
      
      try {
        
        int row = 0;
        
        conn = ConectarBBDD.getConnection();
        
        String query = "Update producto SET nombre=? , modelo=? , marca=? , precio=? WHERE codigo_producto=? ";
        
        ps = conn.prepareStatement(query);
        
        ps.setString(1, nombre);
        
        ps.setString(2, modelo);
        
        ps.setString(3, marca);
        
        ps.setInt(4, precio);
        
        ps.setInt(5, uid);
        
        row = ps.executeUpdate();
        
        if (row > 0) {
          response.sendRedirect("producto.jsp");
          
        } else {
          out.println("Ha habido un error en la ejecución.");
        }
      }
      
      catch(Exception ex) {
        ex.printStackTrace();
      }
      
      finally {
        ps.close();
        conn.close();
      }
    %>  
  </body>
</html>
