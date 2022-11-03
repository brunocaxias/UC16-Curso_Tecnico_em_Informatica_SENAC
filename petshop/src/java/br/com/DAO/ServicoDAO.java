/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.ServicoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sala19a
 */
public class ServicoDAO {
     
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ServicoDTO> lista = new ArrayList();

    public void cadastrarServico(ServicoDTO objServicoDTO) throws ClassNotFoundException {
        String sql = "insert into servico(nome, valor, descricao)values(?, ?, ?)";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objServicoDTO.getNome());
            pstm.setDouble(2, objServicoDTO.getValor());
            pstm.setString(3, objServicoDTO.getDescricao());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }

    public ArrayList<ServicoDTO> pesquisarServico() throws ClassNotFoundException {
        String sql = "select * from servico";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
                ServicoDTO objServicoDTO = new ServicoDTO();
                objServicoDTO.setIdServ(rs.getInt("idServ"));
                objServicoDTO.setNome(rs.getString("nome"));
                objServicoDTO.setValor(rs.getDouble("valor"));
                objServicoDTO.setDescricao(rs.getString("descricao"));

                lista.add(objServicoDTO);
            }

        } catch (SQLException e) {

        }
        return lista;

    }


    public void excluirServico(ServicoDTO objServicoDTO) throws ClassNotFoundException {
        String sql = "delete from servico where idServ = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objServicoDTO.getIdServ());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
        }
    }

    public void alterarServico(ServicoDTO objServicoDTO) throws ClassNotFoundException {
        String sql = "update servico set nome= ?, descricao= ?, valor= ? where idServ= ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objServicoDTO.getNome());
            pstm.setString(2, objServicoDTO.getDescricao());
            pstm.setDouble(3, objServicoDTO.getValor());
            pstm.setInt(4, objServicoDTO.getIdServ());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }
    
}
