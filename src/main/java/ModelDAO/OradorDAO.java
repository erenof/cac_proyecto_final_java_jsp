package ModelDAO;

import Connection.Conexion;
import Model.Orador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class OradorDAO {
    // Metodos q trabaje con los objetos de tipo Orador, y que nos permita darle al JSP una coleccion de objetos Orador
    Conexion cn = new Conexion();
    // Guardaremos un objeto de tipo Connection de lo que nos devuelva el metodo getConnection()
    Connection con;
    
    // A inicializarse con la query
    PreparedStatement ps;
    
    // Guardar la coleccion de registros
    ResultSet rs;
    
    public List listarOradores(){
        ArrayList<Orador> lista = new ArrayList<>();
        String sql = "SELECT * FROM orador";
        
        // Try catch por si no nos podemos conectar a la base
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            
            rs = ps.executeQuery(); // resultado de la consulta
            
            // Con un bucle vamos a ir generando un objeto Sede por cada registro y al final lo vamos
            // a añadir a la coleccion lista
            while (rs.next()){
                Orador o = new Orador();
                //rs.getInt("idOrador") lo que me permite obtener el dato int de la columna idsede
                o.setIdOrador(rs.getInt("idOrador"));
                o.setNombre(rs.getString("nombre"));
                o.setApellido(rs.getString("apellido"));
                o.setDni(rs.getInt("dni"));
                o.setEmail(rs.getString("email"));
                
                lista.add(o);
            }
        } catch (Exception e) {
            System.out.println("Hubo un problema con la consulta a la base.");
        }
        
        return lista;
    }   
}
