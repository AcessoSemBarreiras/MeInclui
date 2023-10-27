package meinclui.modelo.entidade.avaliacaoComentario;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import meinclui.modelo.entidade.comentario.Comentario;
import meinclui.modelo.entidade.usuario.Usuario;

@Entity
@Table(name="avaliacao_comentario")
public class AvaliacaoComentario {
	@EmbeddedId
	private AvaliacaoComentarioId id = new AvaliacaoComentarioId();

	@ManyToOne
    @MapsId("usuarioId")
	private Usuario usuario;

	@ManyToOne
    @MapsId("comentarioId")
	private Comentario comentario;
	
	@Column(name = "data_avaliacao_usuario", nullable = false)
	private LocalDate dataAvaliacao;

	public AvaliacaoComentario() {
	}

	public AvaliacaoComentario(AvaliacaoComentarioId id, Usuario usuario, Comentario comentario, LocalDate dataAvaliacao) {
		setIdUsuarioTemConquista(id);
		setUsuario(usuario);
		setComentario(comentario);
		setDataAvaliacao(dataAvaliacao);
	}
	
	public AvaliacaoComentario(Usuario usuario, Comentario comentario, LocalDate dataAvaliacao) {
		setUsuario(usuario);
		setComentario(comentario);
		setDataAvaliacao(dataAvaliacao);
	}

	public AvaliacaoComentarioId getIdAvaliacaoComentarioId() {
		return id;
	}
	
	public void setIdUsuarioTemConquista(AvaliacaoComentarioId id) {
		this.id = id;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Comentario getComentario() {
		return comentario;
	}

	public void setComentario(Comentario comentario) {
		this.comentario = comentario;
	}


	public LocalDate getDataAvaliacao() {
		return dataAvaliacao;
	}

	public void setDataAvaliacao(LocalDate dataAvaliacao) {
		this.dataAvaliacao = dataAvaliacao;
	}
}
