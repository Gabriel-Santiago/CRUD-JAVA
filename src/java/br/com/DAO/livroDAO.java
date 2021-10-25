package br.com.DAO;

import br.com.DTO.livroDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class livroDAO {
    
    Connection con;
    PreparedStatement pstm;
    
    public void CadastrarLivro(livroDTO objLivroDTO) throws ClassNotFoundException{
        
        String sql = "insert into livro (nome_livro) values (?)";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objLivroDTO.getNome_livro());
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
}
