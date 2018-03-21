<%-- 
    Document   : borrar
    Created on : 13-mar-2018, 16:06:00
    Author     : mrhighway98
--%>

<%@page import="java.sql.*"%>
<%@page import="com.conectarabbdd.org.ConectarBBDD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>BORRAR ENTRADA</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <%
      request.setCharacterEncoding("UTF-8");
      
      String id = request.getParameter("ruc");
      
      int ruc = Integer.parseInt(id);
      
      
      Connection conn = null;
      
      PreparedStatement ps = null;
      
      try {
        
        int row = 0;
        
        conn = ConectarBBDD.getConnection();
        
        String query = "DELETE FROM proveedor WHERE ruc=?";
        
        ps = conn.prepareStatement(query);
        
        ps.setInt(1, ruc);
        
        row = ps.executeUpdate();
        
        if (row > 0) {
          response.sendRedirect("proveedor.jsp");
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
