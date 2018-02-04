package controller;

import DAO.ConnectionProvider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.UserBean;

public class UserDao {

    private Connection conn;

    public UserDao() {
        conn = ConnectionProvider.getConnection();
    }

    public void addUser(UserBean userBean) {
        try {
            String sql = "INSERT INTO users(userid,firstname,lastname,telephone,birthdate,city,state)" + " VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, userBean.getId());
            ps.setString(2, userBean.getfName());
            ps.setString(3, userBean.getlName());
            ps.setString(4, userBean.getTelephone());
            ps.setString(5, userBean.getBirthDate());
            ps.setString(6, userBean.getCity());
            ps.setString(7, userBean.getState());
//            ps.setString(8, userBean.getDateRecord());
//            ps.setString(9, userBean.getDateReservation());
//            ps.setString(10, userBean.getDailyQuantity());
//            ps.setString(11, userBean.getPeapleQuantity());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void removeUser(int userId) {
        try {
            String sql = "DELETE FROM users WHERE userid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void editUser(UserBean userBean) {
        try {
            String sql = "UPDATE users SET firstname=?, lastname=?, telephone=?, birthdate=?, city=?, state=?" + " WHERE userid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, userBean.getfName());
            ps.setString(2, userBean.getlName());

            ps.setString(3, userBean.getTelephone());
            ps.setString(4, userBean.getBirthDate());
            ps.setString(5, userBean.getCity());
            ps.setString(6, userBean.getState());
//            ps.setString(7, userBean.getDateRecord());
//            ps.setString(8, userBean.getDateReservation());
//            ps.setString(9, userBean.getDailyQuantity());
//            ps.setString(10, userBean.getPeapleQuantity());
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List getAllUsers() {
        List users = new ArrayList();
        try {
            String sql = "SELECT * FROM users";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                UserBean userBean = new UserBean();
                userBean.setId(rs.getInt("userid"));
                userBean.setfName(rs.getString("firstname"));
                userBean.setlName(rs.getString("lastname"));
                userBean.setTelephone(rs.getString("telephone"));
                userBean.setBirthDate(rs.getString("birthdate"));
                userBean.setCity(rs.getString("city"));
                userBean.setState(rs.getString("state"));
                //userBean.setDateRecord(rs.getString("daterecord"));
                //userBean.setDateReservation(rs.getString("datereservation"));
                //userBean.setDailyQuantity(rs.getString("dailyquantity"));
                //userBean.setPeapleQuantity(rs.getString("peaplequantity"));

                users.add(userBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }

    public UserBean getUserById(int userId) {
        UserBean userBean = new UserBean();
        try {
            String sql = "SELECT * FROM users WHERE userid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                userBean.setId(rs.getInt("userid"));
                userBean.setfName(rs.getString("firstname"));
                userBean.setlName(rs.getString("lastname"));
                userBean.setTelephone(rs.getString("telephone"));
                userBean.setBirthDate(rs.getString("birthdate"));
                userBean.setCity(rs.getString("city"));
                userBean.setState(rs.getString("state"));
//                userBean.setDateRecord(rs.getString("daterecord"));
//                userBean.setDateReservation(rs.getString("datereservation"));
//                userBean.setDailyQuantity(rs.getString("dailyquantity"));
//                userBean.setPeapleQuantity(rs.getString("peaplequantity"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userBean;
    }
}
