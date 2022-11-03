/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.AnimalServicoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sala19a
 */
public class AnimalServicoDAO {
     
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<AnimalServicoDTO> lista = new ArrayList();

    public void cadastrarAnimalServico(AnimalServicoDTO objAnimalServicoDTO) throws ClassNotFoundException {
        String sql = "insert into animal_servico(idServ, idAnimal)values(?, ?)";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objAnimalServicoDTO.getIdServ());
            pstm.setInt(2, objAnimalServicoDTO.getIdAnimal());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }

    public ArrayList<AnimalServicoDTO> pesquisarAnimalServico() throws ClassNotFoundException {
        String sql = "select * from animal_servico";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
                AnimalServicoDTO objAnimalServicoDTO = new AnimalServicoDTO();
                objAnimalServicoDTO.setIdAnimalServ(rs.getInt("idAnimalServ"));
                objAnimalServicoDTO.setIdServ(rs.getInt("idServ"));
                objAnimalServicoDTO.setIdAnimal(rs.getInt("idAnimal"));


                lista.add(objAnimalServicoDTO);
            }

        } catch (SQLException e) {

        }
        return lista;

    }
    
    public ArrayList<AnimalServicoDTO> pesquisarAnimalServicoAnimal(String id) throws ClassNotFoundException {
        String sql = "select * from animal_servico where idAnimal="+id;
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
                AnimalServicoDTO objAnimalServicoDTO = new AnimalServicoDTO();
                objAnimalServicoDTO.setIdAnimalServ(rs.getInt("idAnimalServ"));
                objAnimalServicoDTO.setIdServ(rs.getInt("idServ"));
                objAnimalServicoDTO.setIdAnimal(rs.getInt("idAnimal"));


                lista.add(objAnimalServicoDTO);
            }

        } catch (SQLException e) {

        }
        return lista;

    }

    public void excluirAnimalServico(AnimalServicoDTO objAnimalServicoDTO) throws ClassNotFoundException {
        String sql = "delete from animal_servico where idAnimalServ = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objAnimalServicoDTO.getIdAnimalServ());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
        }
    }
    
}
