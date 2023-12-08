package meinclui.modelo.entidade.avaliacaoComentario;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class AvaliacaoComentarioId implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Long usuarioId;
	
	private Long comentarioId;
	
	public AvaliacaoComentarioId() {}
	
	public AvaliacaoComentarioId(Long usuarioId, Long comentarioId) {
		super();
		setUsuarioId(usuarioId);
		setComentarioId(comentarioId);
	}

	public Long getUsuarioId() {
		return usuarioId;
	}

	public void setUsuarioId(Long usuario) {
		this.usuarioId = usuario;
	}

	public Long getComentarioId() {
		return comentarioId;
	}

	public void setComentarioId(Long comentario) {
		this.comentarioId = comentario;
	}
	
	@Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result
                + ((usuarioId == null) ? 0 : comentarioId.hashCode());
        result = prime * result
                + ((comentarioId == null) ? 0 : comentarioId.hashCode());
        return result;
    }
 
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        AvaliacaoComentarioId other = (AvaliacaoComentarioId) obj;
        return Objects.equals(getUsuarioId(), other.getUsuarioId()) && Objects.equals(getComentarioId(), other.getComentarioId());
    }
	
	
	
}
