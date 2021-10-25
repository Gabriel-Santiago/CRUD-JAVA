package br.com.DAO;

import br.com.DTO.livroDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class livroDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<livroDTO> lista = new ArrayList<>();
    
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
    
    public ArrayList<livroDTO> PesquisarLivro() throws ClassNotFoundException{
        
        String sql = "select * from livro";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while(rs.next()){
                livroDTO objLivroDTO = new livroDTO();
                objLivroDTO.setId_livro(rs.getInt("id_livro"));
                objLivroDTO.setNome_livro(rs.getString("nome_livro"));
                
                lista.add(objLivroDTO);
            }
            
        } catch (SQLException e) {
        }
        
        return lista;        
    }
    
    public void ExcluirLivro(livroDTO objLivroDTO) throws ClassNotFoundException{
        
        String sql = "delete from livro where id_livro = ?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objLivroDTO.getNome_livro());
            pstm.setInt(1, objLivroDTO.getId_livro());
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public void AlterarLivro(livroDTO objLivroDTO) throws ClassNotFoundException{
        
        String sql = "update livro set nome_livro = ? where id_livro = ?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setInt(2, objLivroDTO.getId_livro());
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
}
