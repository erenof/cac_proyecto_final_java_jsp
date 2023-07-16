package Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    Connection c;
    
    public Conexion(){
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cacdb","root","CodoACodo2023!");
        
        } catch (Exception e){
            System.err.println("No se pudo establecer una conexion a la db.");
        }
    }
    
    public Connection getConnection() {
        return c;
    }
    
}
