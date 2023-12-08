package meinclui.modelo.entidade.categoria;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "categoria")
public class Categoria implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_categoria", nullable = false)
	private int idCategoria;
	
	@Column(name = "nome_categoria", length = 45, nullable = false, unique = true)
	private String nomeCategoria;

	public Categoria() {}
	
	public Categoria(int idCategoria, String nomeCategoria) {
		setIdCategoria(idCategoria);
		setNomeCategoria(nomeCategoria);
	}
	
	public Categoria(String nomeCategoria) {
		setNomeCategoria(nomeCategoria);
	}
	
	public int getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}

	public String getNomeCategoria() {
		return nomeCategoria;
	}

	public void setNomeCategoria(String nomeCategoria) {
		this.nomeCategoria = nomeCategoria;
	}
}
