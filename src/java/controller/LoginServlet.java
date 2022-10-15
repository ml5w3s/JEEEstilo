package controller;

import dao.UsuarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Pegar os dados que vieram na requisição
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        Usuario u = UsuarioDAO.buscarPorEmail(email);

        if (u != null && u.getSenha().equals(senha)) {
            HttpSession session = request.getSession();

            session.setAttribute("usuarioLogado", u);
            request.getRequestDispatcher("homepage.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "E-mail/senha incorretos. Tente novamente");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
