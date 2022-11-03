/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.AnimalDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sala19a
 */
public class AnimalDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<AnimalDTO> lista = new ArrayList();

    public void cadastrarAnimal(AnimalDTO objAnimalDTO) throws ClassNotFoundException {
        String sql = "insert into animal(nome, tipo, idUsuario)values(?, ?, ?)";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objAnimalDTO.getNome());
            pstm.setString(2, objAnimalDTO.getTipo());
            pstm.setInt(3, objAnimalDTO.getIdUsuario());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }

    public ArrayList<AnimalDTO> pesquisarAnimal() throws ClassNotFoundException {
        String sql = "select * from animal";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
                AnimalDTO objAnimalDTO = new AnimalDTO();
                objAnimalDTO.setIdAnimal(rs.getInt("idAnimal"));
                objAnimalDTO.setNome(rs.getString("nome"));
                objAnimalDTO.setTipo(rs.getString("tipo"));
                objAnimalDTO.setIdUsuario(rs.getInt("idUsuario"));

                lista.add(objAnimalDTO);
            }

        } catch (SQLException e) {

        }
        return lista;

    }

    public ArrayList<AnimalDTO> pesquisarAnimalDono(String id) throws ClassNotFoundException {
        String sql = ("select * from animal where idUsuario ="+id);
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
  
                AnimalDTO objAnimalDTO = new AnimalDTO();
                objAnimalDTO.setIdAnimal(rs.getInt("idAnimal"));
                objAnimalDTO.setNome(rs.getString("nome"));
                objAnimalDTO.setTipo(rs.getString("tipo"));
                objAnimalDTO.setIdUsuario(rs.getInt("idUsuario"));
                
                lista.add(objAnimalDTO);
            }

        } catch (SQLException e) {

        }
        return lista;

    }

    public void excluirAnimal(AnimalDTO objAnimalDTO) throws ClassNotFoundException {
        String sql = "delete from animal where idAnimal = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objAnimalDTO.getIdAnimal());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
        }
    }

    public void alterarAnimal(AnimalDTO objAnimalDTO) throws ClassNotFoundException {
        String sql = "update animal set nome= ? where idAnimal= ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objAnimalDTO.getNome());
            pstm.setInt(2, objAnimalDTO.getIdAnimal());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }

}
