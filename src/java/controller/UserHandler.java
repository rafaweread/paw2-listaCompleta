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
//import javax.servlet.annotation.WebServlet;
import model.UserBean;

//@WebServlet(name = "UserHandler", urlPatterns = {"/UserHandler"})
public class UserHandler extends HttpServlet {

    private static String INSERT = "/lider/user.jsp";
    private static String Edit = "/lider/edit.jsp";
    private static String UserRecord = "/lider/listUser.jsp";
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
            user.setfName(request.getParameter("firstname"));
            user.setlName(request.getParameter("lastname"));
            user.setTelephone(request.getParameter("telephone"));
            user.setBirthDate(request.getParameter("birthdate"));
            user.setCity(request.getParameter("city"));
            user.setState(request.getParameter("state"));
//            user.setDateRecord(request.getParameter("daterecord"));
//            user.setDateReservation(request.getParameter("datereservation"));
//            user.setDailyQuantity(request.getParameter("dailyquantity"));
//            user.setPeapleQuantity(request.getParameter("peaplequantity"));
            
            dao.addUser(user);
            redirect = UserRecord;
            request.setAttribute("users", dao.getAllUsers());
            System.out.println("Record Added Successfully");
            
        } else if (action.equalsIgnoreCase("delete")) {
            String userId = request.getParameter("userId");
            int uid = Integer.parseInt(userId);
            dao.removeUser(uid);
            redirect = UserRecord;
            request.setAttribute("users", dao.getAllUsers());
            System.out.println("Record Deleted Successfully");
            
            
        } else if (action.equalsIgnoreCase("editform")) {
            redirect = Edit;
        } else if (action.equalsIgnoreCase("edit")) {
            String userId = request.getParameter("userId");
            int uid = Integer.parseInt(userId);
            UserBean user = new UserBean();
            user.setId(uid);
            user.setfName(request.getParameter("firstname"));
            user.setlName(request.getParameter("lastname"));
            user.setTelephone(request.getParameter("telephone"));
            user.setBirthDate(request.getParameter("birthdate"));
            user.setCity(request.getParameter("city"));
            user.setState(request.getParameter("state"));
//            user.setDateRecord(request.getParameter("daterecord"));
//            user.setDateReservation(request.getParameter("datereservation"));
//            user.setDailyQuantity(request.getParameter("dailyquantity"));
//            user.setPeapleQuantity(request.getParameter("peaplequantity"));
            dao.editUser(user);
            request.setAttribute("user", user);
            redirect = UserRecord;
            System.out.println("Record updated Successfully");
            
            
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
