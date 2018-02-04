package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.UserDao;
import model.UserBean;

public class UserHandler extends HttpServlet {
    private static String INSERT = "/user.jsp";
    private static String Edit = "/edit.jsp";
    private static String UserRecord = "/listUser.jsp";
    private UserDao dao;

    public UserHandler() {
        super();
        dao = new UserDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String redirect = "";
        String uId = request.getParameter("userid");
        String action = request.getParameter("action");
        
        if (!((uId) == null) && action.equalsIgnoreCase("insert")) {
            int id = Integer.parseInt(uId);
            UserBean user = new UserBean();
            user.setId(id);
            user.setNome(request.getParameter("nome"));
            user.setCpf(request.getParameter("cpf"));
            user.setTelefone(request.getParameter("telefone"));
            user.setDatanascimento(request.getParameter("datanascimento"));
            user.setCidade(request.getParameter("cidade"));
            user.setEstado(request.getParameter("estado"));
            user.setDiarias(request.getParameter("diarias"));
            user.setQuantidadepessoas(request.getParameter("quantidadepessoas"));
         
            dao.addUser(user);
            redirect = UserRecord;
            request.setAttribute("users", dao.getAllUsers());
            System.out.println("Gravado com Sucesso");
            
        } else if (action.equalsIgnoreCase("delete")) {
            String userId = request.getParameter("userId");
            int uid = Integer.parseInt(userId);
            dao.removeUser(uid);
            redirect = UserRecord;
            request.setAttribute("users", dao.getAllUsers());
            System.out.println("Detetado com Sucesso");
            
            
        } else if (action.equalsIgnoreCase("editform")) {
            redirect = Edit;
        } else if (action.equalsIgnoreCase("edit")) {
            String userId = request.getParameter("userId");
            
            int uid = Integer.parseInt(userId);
            UserBean user = new UserBean();
            user.setId(uid);
            user.setNome(request.getParameter("nome"));
            user.setCpf(request.getParameter("cpf"));
            user.setTelefone(request.getParameter("telefone"));
            user.setDatanascimento(request.getParameter("datanascimento"));
            user.setCidade(request.getParameter("cidade"));
            user.setEstado(request.getParameter("estado"));
            user.setDiarias(request.getParameter("diarias"));
            user.setQuantidadepessoas(request.getParameter("quantidadepessoas"));
            dao.editUser(user);
            request.setAttribute("user", user);
            redirect = UserRecord;
            System.out.println("Alterado com sucesso!");
            
        } else if (action.equalsIgnoreCase("listUser")) {
            redirect = UserRecord;
            request.setAttribute("users", dao.getAllUsers());
        } else {
            redirect = INSERT;
        }

        RequestDispatcher rd = request.getRequestDispatcher(redirect);
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
