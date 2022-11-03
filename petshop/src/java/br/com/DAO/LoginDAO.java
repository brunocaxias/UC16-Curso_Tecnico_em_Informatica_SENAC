/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.LoginDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author sala19a
 */
public class LoginDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    
    
    public void cadastrarUsuario(LoginDTO objLoginDTO) throws ClassNotFoundException, SQLException {
        String sql = "insert into usuario(nome, senha)values(?, ?)";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objLoginDTO.getLoginUsuario());
            pstm.setString(2, objLoginDTO.getSenhaUsuario());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }
    
    public ResultSet autenticarUsuario(LoginDTO objLoginDTO) throws ClassNotFoundException{
        con = new ConexaoDAO().conexaoBD();
        
        try {
            String sql = "select * from autenticar where loginUsuario = ? and senhaUsuario = ?";
            pstm = con.prepareStatement(sql);
            
            pstm.setString(1, objLoginDTO.getLoginUsuario());
            pstm.setString(2, objLoginDTO.getSenhaUsuario());
             
            rs= pstm.executeQuery();
             
             return rs;
             
        } catch (Exception e) {
            return null;
        }
        
        
    }
    
    
    
    
}
