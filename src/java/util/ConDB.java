package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Rafael Penha
 */
public class ConDB {

    public static Connection getConnection() {

        try {
            
            String strCon = "jdbc:mysql://localhost:3306/db_homologacao";
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con;
            con = DriverManager.getConnection(strCon, "root", "abacoaba");
            return con;
            
        } catch (ClassNotFoundException ex) {
            System.out.println("Erro carregando driver: "+ex.getMessage()); 
            
        } catch (SQLException ex) {
            System.out.println("Erro conectando ao SGBD: "+ex.getMessage());
        }

        return null;
    }

}
