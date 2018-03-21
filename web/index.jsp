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
    <title>Inicio - CRUD JSP MYSQL 2018</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <script type="text/javascript" src="assets/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="assets/js/popper.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="icon" type="image/png" href="assets/favicon.png" />
  </head>
  
  <body>
  <%
    Connection conn = null;
    
    PreparedStatement ps = null;
    
    ResultSet rs = null;
    
    String query = "SELECT * FROM prueba";
    
    try {
      conn = ConectarBBDD.getConnection();
      ps = conn.prepareStatement(query);
      rs = ps.executeQuery();
    } 

    catch(Exception ex) {
      ex.printStackTrace();
    }

    finally {
      ps.close();
      conn.close();
    }
    %>
    <div class="navbar">
      <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">CRUD JSP MYSQL 2018</a>
          </div>

          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="#">Inicio</a></li>
              <li><a href="producto/producto.jsp">Instrumentos</a></li>
              <li><a href="empresa/empresa.jsp">Fabricantes</a></li>
              <li><a href="proveedor/proveedor.jsp">Proveedores</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
    
    <!-- INICIO SLIDER -->
    <div id="carousel" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
        <li data-target="#carousel" data-slide-to="3"></li>
        <li data-target="#carousel" data-slide-to="4"></li>
        <li data-target="#carousel" data-slide-to="5"></li>
      </ol>
      <!-- Wrapper -->
      <div class="carousel-inner">
        <div class="item active">
          <img src="assets/img/slide1.jpg" alt="slide1" style="width:100%;">
        </div>

        <div class="item ">
          <img src="assets/img/slide2.jpg" alt="slide2" style="width:100%;">
        </div>
    
        <div class="item">
          <img src="assets/img/slide3.jpg" alt="slide3" style="width:100%;">
        </div>
      
        <div class="item">
          <img src="assets/img/slide4.jpg" alt="slide4" style="width:100%;">
        </div>
      
        <div class="item">
          <img src="assets/img/slide5.jpg" alt="slide5" style="width:100%;">
        </div>
      
        <div class="item">
          <img src="assets/img/slide6.jpg" alt="slide5" style="width:100%;">
        </div>
      </div>

      <!-- Flechas -->
      <a class="left carousel-control" href="#carousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- FIN SLIDER -->
    
    
    <div class="container-fluid contenedor">
      <h1>BIENVENIDO</h1>
      <hr><br>
      
      <div class="row" style="padding-bottom: 100px !important;">
        <div class="col-sm-12">
          <div class="col-sm-6">
            <div class="caja">
              <h3>Esto es un CRUD</h3>
              <hr class="separator">
              <p>
                Un CRUD se puede resumir en una aplicación web, 
                la cual debe cumplir los requisitos de Crear(<strong>C</strong>), 
                Leer(<strong>R</strong>), Actualizar(<strong>U</strong>),
                Borrar(<strong>D</strong>).
              </p>
              <p>
                CRUD se usa también a veces para 
                describir convenciones de interfaz de usuario que facilita 
                la vista, búsqueda y modificación de la información; a menudo 
                se usa en programación de formularios (forms) e informes (reports).
              </p>
            </div>
          </div>
          
          <div class="col-sm-6">
            <div class="caja">
              <h3>Lorem Ipsum</h3>
              <hr class="separator">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec 
                augue tortor, viverra rutrum porttitor in, blandit eu leo. Lorem
              </p>
              <p>
                Mauris dolor metus, 
                gravida eu commodo at, bibendum non nunc. Praesent pellentesque,
                lacus at maximus venenatis, arcu nibh scelerisque sem, nec 
                pharetra dolor arcu in libero. Lorem ipsum dolor sit amet, consectetur
              </p>
            </div>
          </div>
        </div>
      </div> <!-- row --> 
    </div>
    <!-- CONTAINER -->
    
    
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

    <script>
      $("#carousel").carousel();
    </script>
  </body>
</html>