/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.UsuarioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sala19a
 */
public class UsuarioDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<UsuarioDTO> lista = new ArrayList();

    public void cadastrarUsuario(UsuarioDTO objUsuarioDTO) throws ClassNotFoundException {
        String sql = "insert into usuario(nome, idade, endereco)values(?, ?, ?)";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objUsuarioDTO.getNome());
            pstm.setInt(2, objUsuarioDTO.getIdade());
            pstm.setString(3, objUsuarioDTO.getEndereco());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }
    
     

    public ArrayList<UsuarioDTO> pesquisarUsuario() throws ClassNotFoundException {
        String sql = "select * from usuario";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
                UsuarioDTO objUsuarioDTO = new UsuarioDTO();
                objUsuarioDTO.setIdUsuario(rs.getInt("idUsuario"));
                objUsuarioDTO.setNome(rs.getString("nome"));
                objUsuarioDTO.setIdade(rs.getInt("idade"));
                objUsuarioDTO.setEndereco(rs.getString("endereco"));

                lista.add(objUsuarioDTO);
            }

        } catch (SQLException e) {

        }
        return lista;

    }

    public void excluirUsuario(UsuarioDTO objUsuarioDTO) throws ClassNotFoundException {
        String sql = "delete from usuario where idUsuario = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objUsuarioDTO.getIdUsuario());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }

    public void alterarUsuario(UsuarioDTO objUsuarioDTO) throws ClassNotFoundException {
        String sql = "update usuario set nome= ? where idUsuario= ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objUsuarioDTO.getNome());
            pstm.setInt(2, objUsuarioDTO.getIdUsuario());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }

}
