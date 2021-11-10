package com.emergentes.controlador;
import com.emergentes.dao.SeminarioDAO;
import com.emergentes.dao.SeminarioDAOimpl;
import com.emergentes.modelo.Seminario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SeminarioControlador", urlPatterns = {"/SeminarioControlador"})
public class SeminarioControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            SeminarioDAO dao = new SeminarioDAOimpl();
            //recibir el id
            int id;
            // para gestionar registros
            Seminario sem = new Seminario();

            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";
            switch (action) {
                case "add":
                    //nuevo registro
                    request.setAttribute("seminario", sem);
                    request.getRequestDispatcher("frmseminario.jsp").forward(request, response);

                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    sem = dao.getById(id);
                    request.setAttribute("seminario", sem);
                    request.getRequestDispatcher("frmseminario.jsp").forward(request, response);
                    //para editar
                    break;
                case "delete":
                    //para eliminar 
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect("SeminarioControlador");
                    break;
                default:
                    //lista
                    List<Seminario> lista = dao.getAll();
                    request.setAttribute("seminarios", lista);
                    request.getRequestDispatcher("listado.jsp").forward(request, response);
                    break;

            }
        } catch (Exception ex) {
            System.out.println("ERROR" + ex.getMessage());

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SeminarioDAO dao = new SeminarioDAOimpl();
        int id = Integer.parseInt(request.getParameter("id"));
        String titulo = request.getParameter("titulo");
        String expositor = request.getParameter("expositor");
        String fecha = request.getParameter("fecha");
        String hora = request.getParameter("hora");
        int cupo = Integer.parseInt(request.getParameter("cupo"));
        
        Seminario sem = new Seminario();
        sem.setId(id);
        sem.setTitulo(titulo);
        sem.setExpositor(expositor);
        sem.setFecha(fecha);
        sem.setHora(hora);
        sem.setCupo(cupo);

        if (id == 0) {
            //nuevo
            try {
                dao.insert(sem);
                response.sendRedirect("SeminarioControlador");
            } catch (Exception ex) {
                System.out.println("error" + ex.getMessage());

            }
        } else {
            //actualizacion
            try {
                dao.update(sem);
                response.sendRedirect("SeminarioControlador");
            } catch (Exception ex) {
                System.out.println("error" + ex.getMessage());

            }
        }
    }

}
