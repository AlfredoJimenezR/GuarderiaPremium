package Servidor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
   
    static Connection con;
    
    public static void Conexion(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
<<<<<<< HEAD
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Guarderia?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=GMT&autoReconnect=true&useSSL=false", "root", "n0m3l0");
=======
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Guarderia?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=GMT&autoReconnect=true&useSSL=false", "root", "n0m3l0");
>>>>>>> bf6205627bf8f61696ae8d90318e06a1a27e5b80
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
    }
}