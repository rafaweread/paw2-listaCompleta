package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;

@WebServlet(name = "Logar", urlPatterns = {"/Logar"})
public class Logar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
 
        } finally {            
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario=request.getParameter("USUARIO");
        String senha=request.getParameter("SENHA");
        RequestDispatcher rd = null;
        Usuario user = new Usuario();
        user.setUsuario(usuario);
        user.setSenha(senha);
        UsuarioController uc = new UsuarioController(user);
        if(uc.verificaUsuario())
        {
            HttpSession sessao = request.getSession();
            sessao.setAttribute("USER",usuario);
            rd=request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }
        else
        {
            request.setAttribute("msg", "Usuário ou senha inválidos");
            rd=request.getRequestDispatcher("login.jsp");
            rd.forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request,response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}