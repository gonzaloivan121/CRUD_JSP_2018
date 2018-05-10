<%-- 
    Document   : index
    Created on : 13-mar-2018, 12:38:40
    Author     : mrhighway98
--%>

<%@page import="java.sql.*"%>
<%@page import="com.conectarabbdd.org.ConectarBBDD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Instrumentos - CRUD JSP MYSQL 2018</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <script type="text/javascript" src="../assets/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../assets/js/popper.min.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="icon" type="image/png" href="../assets/favicon.png" />
  </head>
  
  <body>
  <%
    Connection conn = null;
    
    PreparedStatement ps = null;
    
    ResultSet rs = null;
    
    String query = "SELECT * FROM producto";
    
    try {
      conn = ConectarBBDD.getConnection();
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
              <li><a href="#">Instrumentos</a></li>
              <li><a href="../empresa/empresa.jsp">Fabricantes</a></li>
              <li><a href="../proveedor/proveedor.jsp">Proveedores</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  
    <div class="container-fluid contenedor">
      <h1>INSTRUMENTOS</h1>
      <hr>
      
      <div class="row">
        <div class="col-sm-12">
          
          <form role="form" action="anadir.jsp" method="post">
            <div class="col-sm-6 form-izquierda">
              
              <div class="form-group">
                <input type="text" class="form-control" name="nombre" placeholder="Nombre">
              </div>

              <div class="form-group">
                <input type="text" class="form-control" name="modelo" placeholder="Modelo">
              </div>              
            </div>
            
            <div class="col-sm-6 form-derecha">
              
              <div class="form-group">
                <input type="text" class="form-control" name="marca" placeholder="Marca">
              </div>

              <div class="form-group">
                <input type="number" class="form-control" name="precio" placeholder="Precio">
              </div>
              
            </div>
                        
            <button class="btn btn-info btn-block anadir" type="submit">Añadir</button>
            <br>
          </form>
        </div>
      </div> <!-- row -->
      
      
      <div class="row">
        <div class="col-sm-12">
          <table class="table">
            <thead>
              <tr>
                <th>Nombre</th>
                <th>Modelo</th>
                <th>Marca</th>
                <th>Precio</th>
                <th>Acciones</th>
              </tr>
            </thead>
            
            <tbody>
              <%
                while(rs.next()){
              %>
              <tr>
                <td><%=rs.getString("nombre") %></td>
                <td><%=rs.getString("modelo") %></td>
                <td><%=rs.getString("marca") %></td>
                <td><%=rs.getInt("precio") %>€</td>
                <td>
                  <a href="editar.jsp?codigo_producto=<%=rs.getInt("codigo_producto") %>" class="btn btn-success" role="button">Editar</a>
                  <a href="borrar.jsp?codigo_producto=<%=rs.getInt("codigo_producto") %>" class="btn btn-danger" role="button">Borrar</a>
                </td>
              </tr>
              
              <%
              } //fin del while
                } //fin del try

                catch(Exception ex) {
                  ex.printStackTrace();
                }

                finally {
                  ps.close();
                  conn.close();
                }
              %>
              
            </tbody>
          </table>
        </div>
        
      </div> <!-- row -->
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