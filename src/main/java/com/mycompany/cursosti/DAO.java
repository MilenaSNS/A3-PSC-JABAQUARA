package com.mycompany.cursosti;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author milen
 */
public class DAO {
    public boolean existe(Usuario usuario)throws Exception{
        String sql = "SELECT * FROM usuarios WHERE login = ? AND senha = ?";
        
        try(Connection conn = Conexao.obtemConexao()){
        PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, usuario.getLogin());
            ps.setString(2, usuario.getSenha());
            try(ResultSet rs = ps.executeQuery()){
                return rs.next();
            }      
        }
    }
}
