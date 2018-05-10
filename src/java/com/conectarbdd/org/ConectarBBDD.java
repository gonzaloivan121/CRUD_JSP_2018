/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.conectarabbdd.org;
import java.sql.*;

/**
 *
 * @author mrhighway98
 */
public class ConectarBBDD {
  static String HOST = "jdbc:mysql://localhost/crud2018";
  static String USUARIO = "root";
  static String CONTRASENA = "root";
  static Connection conn = null;
  
  public static Connection getConnection() {
    
    try {
      Class.forName("com.mysql.jdbc.Driver");
      
      conn = DriverManager.getConnection(HOST, USUARIO, CONTRASENA);
      
      System.out.println("La conexión con la base de datos se ha realizado correctamente.");
    } 
    
    catch(Exception ex) {
      ex.printStackTrace();
    }
    return conn;
    
    
  } 
}
