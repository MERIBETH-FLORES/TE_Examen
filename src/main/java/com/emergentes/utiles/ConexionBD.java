package com.emergentes.utiles;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class ConexionBD {
    static String driver = "com.mysql.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/bd_eventos";
    static String usuario = "root";
    static String password = "";
    
    protected Connection conn = null;
    
    public ConexionBD() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url,usuario,password);          
            if(conn!=null){
                System.out.println("CONEXION OK "+ conn);
            }          
        } catch (ClassNotFoundException ex) {
            System.out.println("ERROR DRIVER"+ex.getMessage());
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);          
        } catch (SQLException ex) {
            System.out.println("ERROR AL CONECTAR"+ex.getMessage());
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
    public Connection conectar()
    {
        return conn;
    }
    public void desconectar (){
        try {
            conn.close();
        } catch (SQLException ex) {
            System.out.println("ERROR AL CERRAR LA BASE DE DATOS");
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    

}
