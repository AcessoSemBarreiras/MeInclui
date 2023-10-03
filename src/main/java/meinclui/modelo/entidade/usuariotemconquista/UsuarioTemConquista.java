package meinclui.modelo.entidade.usuariotemconquista;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import meinclui.modelo.entidade.conquista.Conquista;
import meinclui.modelo.entidade.usuario.Usuario;

@Entity
@Table(name="usuario_tem_conquista")
public class UsuarioTemConquista {
	@EmbeddedId
	private UsuarioTemConquistaId id = new UsuarioTemConquistaId();

	@ManyToOne
    @MapsId("usuarioId")
	private Usuario usuario;

	@ManyToOne
    @MapsId("conquistaId")
	private Conquista conquista;
	
	@Column(name = "data_conquista_usuario", nullable = false)
	private LocalDate dataConquista;

	public UsuarioTemConquista() {
	}

	public UsuarioTemConquista(UsuarioTemConquistaId id, Usuario usuario, Conquista conquista, LocalDate dataConquista) {
		setIdUsuarioTemConquista(id);
		setUsuario(usuario);
		setConquista(conquista);
		setDataConquista(dataConquista);
	}
	
	public UsuarioTemConquista(Usuario usuario, Conquista conquista, LocalDate dataConquista) {
		setUsuario(usuario);
		setConquista(conquista);
		setDataConquista(dataConquista);
	}

	public UsuarioTemConquistaId getIdUsuarioTemConquista() {
		return id;
	}
	
	public void setIdUsuarioTemConquista(UsuarioTemConquistaId id) {
		this.id = id;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Conquista getConquista() {
		return conquista;
	}

	public void setConquista(Conquista conquista) {
		this.conquista = conquista;
	}


	public LocalDate getDataConquista() {
		return dataConquista;
	}

	public void setDataConquista(LocalDate dataConquista) {
		this.dataConquista = dataConquista;
	}
}
