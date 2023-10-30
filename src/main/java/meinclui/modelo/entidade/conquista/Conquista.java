package meinclui.modelo.entidade.conquista;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import meinclui.modelo.entidade.foto.Foto;

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
	
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	private Foto fotoConquista;

	
	public Conquista() {}
	
	public Conquista(Long idConquista, String nomeConquista, byte nivelConquista, int reputacao, Foto fotoConquista) {
		setIdConquista(idConquista);
		setNomeConquista(nomeConquista);
		setNivelConquista(nivelConquista);
		setReputacao(reputacao);
		setFotoConquista(fotoConquista);
	}
	
	public Conquista(String nomeConquista, byte nivelConquista, int reputacao, Foto fotoConquista) {
		setNomeConquista(nomeConquista);
		setNivelConquista(nivelConquista);
		setReputacao(reputacao);
		setFotoConquista(fotoConquista);
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

	public Foto getFotoConquista() {
		return fotoConquista;
	}

	public void setFotoConquista(Foto fotoConquista) {
		this.fotoConquista = fotoConquista;
	}
	
}
