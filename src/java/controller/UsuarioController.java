package controller;

import DAO.ConnectionProvider;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Usuario;

public class UsuarioController {
    
    private Usuario usuario;
    
    public UsuarioController(Usuario usr)
    {
        usuario=usr;
    }
    
        public boolean verificaUsuario(){
        if(usuario.getUsuario()!=null && usuario.getSenha()!=null)
        {
            try
            {
             ConnectionProvider con = new ConnectionProvider();
             String strsql="SELECT * FROM usuario WHERE usuario = ? and senha = ?;";       
             PreparedStatement stmt = con.getConnection().prepareStatement(strsql);
             stmt.setString(1, usuario.getUsuario());
             stmt.setString(2, usuario.getSenha());
             ResultSet rs=stmt.executeQuery();
             if(rs.next()) //Existe o usuário no banco de dados
             {
                   rs.close();
                   stmt.close();
                   return true;
             } // Não existe o usuário
             rs.close();
             stmt.close();
             return false;
            }
            catch (SQLException e) 
        {return false;}

        }
        return false;

    }
    
}
