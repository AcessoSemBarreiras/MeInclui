package meinclui.modelo.entidade.conquista;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "conquista")
public class Conquista implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_conquista", nullable = false)
	private Long idConquista;
	
	@Column(name = "nome_conquista", length = 45, nullable = false)
	private String nomeConquista;
	
	@Column(name = "nivel_conquista", nullable = false)
	private byte nivelConquista;
	
	@Column(name = "reputacao_conquista", nullable = false)
	private int reputacao;
	
	@Column(name = "imagem_conquista")
	private byte[] imagem;

	
	public Conquista() {}
	
	public Conquista(Long idConquista, String nomeConquista, byte nivelConquista, int reputacao, byte[] imagem) {
		setIdConquista(idConquista);
		setNomeConquista(nomeConquista);
		setNivelConquista(nivelConquista);
		setReputacao(reputacao);
		setImagem(imagem);
	}
	
	public Conquista(String nomeConquista, byte nivelConquista, int reputacao, byte[] imagem) {
		setNomeConquista(nomeConquista);
		setNivelConquista(nivelConquista);
		setReputacao(reputacao);
		setImagem(imagem);
	}
	
	public Long getIdConquista() {
		return idConquista;
	}

	public void setIdConquista(Long idConquista) {
		this.idConquista = idConquista;
	}

	public String getNomeConquista() {
		return nomeConquista;
	}

	public void setNomeConquista(String nomeConquista) {
		this.nomeConquista = nomeConquista;
	}

	public byte getNivelConquista() {
		return nivelConquista;
	}

	public void setNivelConquista(byte nivelConquista) {
		this.nivelConquista = nivelConquista;
	}

	public int getReputacao() {
		return reputacao;
	}

	public void setReputacao(int reputacao) {
		this.reputacao = reputacao;
	}

	public byte[] getImagem() {
		return imagem;
	}

	public void setImagem(byte[] imagem) {
		this.imagem = imagem;
	}
	
}
