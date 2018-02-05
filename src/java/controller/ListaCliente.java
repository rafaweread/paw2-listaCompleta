package controller;

import DAO.ConnectionProvider;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UserBean;

/**
 *
 * @author Rafael
 */
@WebServlet(name = "ListaCliente", urlPatterns = {"/ListaCliente"})
public class ListaCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            Connection con = ConnectionProvider.getConnection();

            if (con == null) {
                throw new SQLException("Erro conectando");
            }

            Statement stm = con.createStatement();

            String sql = "SELECT * FROM users ORDER BY nome;";

            ResultSet rs = stm.executeQuery(sql);

            if (request.getParameter("tipo").equals("json")) {

                Gson gson = new Gson();

                ArrayList<UserBean> listaCliente = new ArrayList<UserBean>();

                while (rs.next()) {

                    UserBean a = new UserBean();
                    a.setNome(rs.getString("nome"));
                    a.setCpf(rs.getString("cpf"));
                    a.setTelefone(rs.getString("telefone"));
                    a.setDatanascimento(rs.getString("datanascimento"));
                    a.setCidade(rs.getString("cidade"));
                    a.setEstado(rs.getString("estado"));
                    a.setDiarias(rs.getString("diarias"));
                    a.setQuantidadepessoas(rs.getString("quantidadepessoas"));

                    listaCliente.add(a);
                }

                response.setContentType("application/json;charset=UTF-8");

                out.println(gson.toJson(listaCliente));

//        }catch (Exception e) {
            } else {
                response.setContentType("text/html;charset=UTF-8");
                while (rs.next()) {
                    response.getWriter().println("<p>" + rs.getString("nome") + "</p>");
                    response.getWriter().println("<p>" + rs.getString("cpf") + "</p>");
                    response.getWriter().println("<p>" + rs.getString("telefone") + "</p>");
                    response.getWriter().println("<p>" + rs.getString("datanascimento") + "</p>");
                    response.getWriter().println("<p>" + rs.getString("cidade") + "</p>");
                    response.getWriter().println("<p>" + rs.getString("estado") + "</p>");
                    response.getWriter().println("<p>" + rs.getString("diarias") + "</p>");
                    response.getWriter().println("<p>" + rs.getString("quantidadepessoas") + "</p>");
                }
            }
        } catch (SQLException ex) {

        } catch (Exception e) {

        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
