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
            String sql = "INSERT INTO users (userid, nome, cpf, telefone, datanascimento, cidade, estado, diarias, quantidadepessoas) values(?,?,?,?,?,?,?,?,?);";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setInt(1, userBean.getId());
            ps.setString(2, userBean.getNome());
            ps.setString(3, userBean.getCpf());
            ps.setString(4, userBean.getTelefone());
            ps.setString(5, userBean.getDatanascimento());
            ps.setString(6, userBean.getCidade());
            ps.setString(7, userBean.getEstado());
            ps.setString(8, userBean.getDiarias());
            ps.setString(9, userBean.getQuantidadepessoas());
            
            
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
            String sql = "UPDATE users SET nome=?, cpf=?, telefone=?, datanascimento=?, cidade=?, estado=?, diarias=?, quantidadepessoas=?  " + " WHERE userid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setInt(1, userBean.getId());
            ps.setString(2, userBean.getNome());
            ps.setString(3, userBean.getCpf());
            ps.setString(4, userBean.getTelefone());
            ps.setString(5, userBean.getDatanascimento());
            ps.setString(6, userBean.getCidade());
            ps.setString(7, userBean.getEstado());
            ps.setString(8, userBean.getDiarias());
            ps.setString(9, userBean.getQuantidadepessoas());
            
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
                userBean.setNome(rs.getString("nome"));
                userBean.setCpf(rs.getString("cpf"));
                userBean.setTelefone(rs.getString("telefone"));
                userBean.setDatanascimento(rs.getString("datanascimento"));
                userBean.setCidade(rs.getString("cidade"));
                userBean.setEstado(rs.getString("estado"));
                userBean.setDiarias(rs.getString("diarias"));
                userBean.setQuantidadepessoas(rs.getString("quantidadepessoas"));
                
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
                userBean.setNome(rs.getString("nome"));
                userBean.setCpf(rs.getString("cpf"));
                userBean.setTelefone(rs.getString("telefone"));
                userBean.setDatanascimento(rs.getString("datanascimento"));
                userBean.setCidade(rs.getString("cidade"));
                userBean.setEstado(rs.getString("estado"));
                userBean.setDiarias(rs.getString("diarias"));
                userBean.setQuantidadepessoas(rs.getString("quantidadepessoas"));
         
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userBean;
    }
}
