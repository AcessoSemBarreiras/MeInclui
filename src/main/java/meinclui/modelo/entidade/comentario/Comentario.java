package meinclui.modelo.entidade.comentario;

import java.io.Serializable;
import java.time.ZonedDateTime;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import meinclui.modelo.entidade.estabelecimento.Estabelecimento;
import meinclui.modelo.entidade.usuario.Usuario;


@Entity
@Table(name = "comentario")
public class Comentario implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_comentario", nullable = false)
	private int idComentario;
	
	@Column(name = "descricao_comentario", nullable = false)
	private String comentario;
	
	@Column(name = "quantidade_gostei_comentario", nullable = false)
	private int quantidadeGostei;
	
	@Column(name = "quantidade_nao_gostei_comentario", nullable = false)
	private int quantidadeNaoGostei;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_usuario")
	private Usuario usuario;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_estabelecimento")
	private Estabelecimento estabelecimento;
	
	@Column(name = "data_comentario", nullable = false)
	private ZonedDateTime data;

	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_comentario_inicial")
	private Comentario comentarioRespondido;

	public Comentario() {}
	
	public Comentario(int idComentario, String comentario, Comentario comentarioRespondido,
			int quantidadeGostei, int quantidadeNaoGostei, Usuario usuario, Estabelecimento estabelecimento, ZonedDateTime data) {
		setIdComentario(idComentario);
		setComentario(comentario);
		setComentarioRespondido(comentarioRespondido);
		setQuantidadeGostei(quantidadeGostei);
		setQuantidadeNaoGostei(quantidadeNaoGostei);
		setUsuario(usuario);
		setEstabelecimento(estabelecimento);
		setData(data);
	}
	
	public Comentario(String comentario, Comentario comentarioRespondido, int quantidadeGostei,
			int quantidadeNaoGostei, Usuario usuario, Estabelecimento estabelecimento, ZonedDateTime data) {
		setComentario(comentario);
		setComentarioRespondido(comentarioRespondido);
		setQuantidadeGostei(quantidadeGostei);
		setQuantidadeNaoGostei(quantidadeNaoGostei);
		setUsuario(usuario);
		setEstabelecimento(estabelecimento);
		setData(data);
	}
	
	public int getIdComentario() {
		return idComentario;
	}

	public void setIdComentario(int idComentario) {
		this.idComentario = idComentario;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public Comentario getComentarioRespondido() {
		return comentarioRespondido;
	}

	public void setComentarioRespondido(Comentario comentarioRespondido) {
		this.comentarioRespondido = comentarioRespondido;
	}

	public int getQuantidadeGostei() {
		return quantidadeGostei;
	}

	public void setQuantidadeGostei(int quantidadeGostei) {
		this.quantidadeGostei = quantidadeGostei;
	}

	public int getQuantidadeNaoGostei() {
		return quantidadeNaoGostei;
	}

	public void setQuantidadeNaoGostei(int quantidadeNaoGostei) {
		this.quantidadeNaoGostei = quantidadeNaoGostei;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Estabelecimento getEstabelecimento() {
		return estabelecimento;
	}

	public void setEstabelecimento(Estabelecimento estabelecimento) {
		this.estabelecimento = estabelecimento;
	}

	public ZonedDateTime getData() {
		return data;
	}

	public void setData(ZonedDateTime data) {
		this.data = data;
	}
}
