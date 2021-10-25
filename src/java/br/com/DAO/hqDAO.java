package br.com.DAO;

import br.com.DTO.hqDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class hqDAO {

    Connection con;
    PreparedStatement pstm;
    
    public void CadastrarHq(hqDTO objHqDTO) throws ClassNotFoundException{
        
        String sql = "insert into hq (nome_hq) values (?)";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objHqDTO.getNome_hq());
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
}
