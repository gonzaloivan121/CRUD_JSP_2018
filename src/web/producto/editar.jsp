<%-- 
    Document   : editar
    Created on : 13-mar-2018, 15:40:00
    Author     : mrhighway98
--%>

<%@page import="java.sql.*"%>
<%@page import="com.conectarabbdd.org.ConectarBBDD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>CRUD JSP MYSQL 2018 - Gonzalo Chaparro</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <script type='text/javascript' src='../assets/js/jquery-3.3.1.min.js'></script>
    <script type='text/javascript' src='../assets/js/popper.min.js'></script>
    <script type='text/javascript' src='../assets/js/bootstrap.min.js'></script>
    
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="icon" type="image/png" href="../assets/favicon.png" />
  </head>
  
  <body>
    <%
      request.setCharacterEncoding("UTF-8");
      
      String uid = request.getParameter("codigo_producto");
      
      int id = Integer.parseInt(uid);
      
      Connection conn = null;
      
      PreparedStatement ps = null;
      
      ResultSet rs = null;
      
      try {
        conn = ConectarBBDD.getConnection();
        
        String query = "SELECT * FROM producto WHERE codigo_producto='" + id + "'";
        
        ps = conn.prepareStatement(query);
        
        rs = ps.executeQuery();
      
    %>
    
    <div class="navbar">
      <nav class="navbar navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../index.jsp">CRUD JSP MYSQL 2018</a>
          </div>

          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="../index.jsp">Inicio</a></li>
              <li><a href="../producto/producto.jsp">Instrumentos</a></li>
              <li><a href="../empresa/empresa.jsp">Fabricantes</a></li>
              <li><a href="../proveedor/proveedor.jsp">Proveedores</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
    
    <div class="container-fluid contenedor">
      <h1>ACTUALIZAR INSTRUMENTO</h1>
      <hr>

      <form action="actualizar.jsp" role="form" method="get">
      <%
        while(rs.next()) {
      %>
      <input type="hidden" name="id" value="<%=rs.getInt("codigo_producto") %>">
      
      <div class="col-sm-6">
        <div class="form-group">
          <label>Nombre</label>
          <input type="text" name="nombre" value="<%=rs.getString("nombre") %>" class="form-control">
        </div>

        <div class="form-group">
          <label>Modelo</label>
          <input type="text" name="modelo" value="<%=rs.getString("modelo") %>" class="form-control">
        </div>
      </div>
        
      <div class="col-sm-6">
        <div class="form-group">
          <label>Marca</label>
          <input type="text" name="marca" value="<%=rs.getString("marca") %>" class="form-control">
        </div>

        <div class="form-group">
          <label>Precio</label>
          <input type="number" name="precio" value="<%=rs.getInt("precio") %>" class="form-control">
        </div>
      </div>
        
        <%
            } //fin del while
          } // fin del try
          
          catch(Exception ex) {
            ex.printStackTrace();
          }

          finally {
            ps.close();
            conn.close();
          }
        %>
        
        <button type="submit" class="btn btn-success btn-block">Actualizar</button>

      </form>
    </div>
        
    <!--FOOTER-->
    <footer class="page-footer font-small footer-wrapper fixed-bottom">
      <div class="container-fluid text-md-left">
        <div class="row">
          
          <div class="col-sm-6">
            <h3 class="text-uppercase">1º DAW</h3>
            <p>Proyecto de CRUD de trabajo de clase.</p>
          </div>

          <div class="col-sm-6">
            <h3 class="text-uppercase">Links</h3>
              <ul class="list-unstyled">
              <li>
                <a href="#!">Link 1</a>
              </li>
              <li>
                <a href="#!">Link 2</a>
              </li>
              <li>
                <a href="#!">Link 3</a>
              </li>
              <li>
                  <a href="#!">Link 4</a>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="footer-copyright text-center">
        <a href="https://github.com/gonzaloivan121"> Gonzalo Iván Chaparro Barese </a>
      </div>
    </footer>
    <!--/.Footer-->
    
  </body>
</html>
