/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package br.com.DTO;

/**
 *
 * @author sala19a
 */
public class AnimalDTO {
    
   private int idAnimal;
   private String nome;
   private String tipo;
   private int idUsuario;   
   
   public AnimalDTO(){
       
       
   }
   
   
   public AnimalDTO(int idAnimal, String nome, String tipo, UsuarioDTO objUsuarioDTO){
       
       this.idAnimal = idAnimal;
       this.nome = nome;
       this.tipo = tipo;
       this.idUsuario = objUsuarioDTO.getIdUsuario();
              
   }

    /**
     * @return the idAnimal
     */
    public int getIdAnimal() {
        return idAnimal;
    }

    /**
     * @param idAnimal the idAnimal to set
     */
    public void setIdAnimal(int idAnimal) {
        this.idAnimal = idAnimal;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * @return the idUsuario
     */
    public int getIdUsuario() {
        return idUsuario;
    }

    /**
     * @param idUsuario the idUsuario to set
     */
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }  
   
}