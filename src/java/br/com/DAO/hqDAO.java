package br.com.DAO;

import br.com.DTO.hqDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class hqDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<hqDTO> lista = new ArrayList<>();
    
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
    
    public ArrayList<hqDTO> PesquisarHq() throws ClassNotFoundException{
        
        String sql = "select * from hq";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while(rs.next()){
                hqDTO objHqDTO = new hqDTO();
                objHqDTO.setId_hq(rs.getInt("id_hq"));
                objHqDTO.setNome_hq(rs.getString("nome_hq"));
                
                lista.add(objHqDTO);
            }
            
        } catch (Exception e) {
        }
        
        return lista;
    }
    
}
