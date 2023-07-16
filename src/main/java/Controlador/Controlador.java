package Controlador;

import Model.Orador;
import ModelDAO.OradorDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controlador", urlPatterns = {"/Controlador/*"})
public class Controlador extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acceso = "";
        // Guardamos listarOradores
        String accion = request.getParameter("access");
        
        //Indicamos que trabajamos con un objeto dao, este modelo nos va a permitir ejecutar
        //el metodo listarsedes que nos devuelve la conexion
        OradorDAO o = new OradorDAO();
        List<Orador> listaOradores = o.listarOradores();
        
        if (accion.equalsIgnoreCase("listarOradores")) {
            acceso = "/pages/listarOradores.jsp";
            
            request.setAttribute("listaOradores", listaOradores);
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        
        vista.forward(request, response);
    }

}
