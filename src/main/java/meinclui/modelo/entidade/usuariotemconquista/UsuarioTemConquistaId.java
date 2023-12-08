package meinclui.modelo.entidade.usuariotemconquista;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class UsuarioTemConquistaId implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Long usuarioId;
	
	private Long conquistaId;
	
	public UsuarioTemConquistaId() {}
	
	public UsuarioTemConquistaId(Long usuarioId, Long conquistaId) {
		super();
		setUsuarioId(usuarioId);
		setConquistaId(conquistaId);
	}

	public Long getUsuarioId() {
		return usuarioId;
	}

	public void setUsuarioId(Long usuario) {
		this.usuarioId = usuario;
	}

	public Long getConquistaId() {
		return conquistaId;
	}

	public void setConquistaId(Long conquista) {
		this.conquistaId = conquista;
	}
	
	@Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result
                + ((usuarioId == null) ? 0 : conquistaId.hashCode());
        result = prime * result
                + ((conquistaId == null) ? 0 : conquistaId.hashCode());
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
        UsuarioTemConquistaId other = (UsuarioTemConquistaId) obj;
        return Objects.equals(getUsuarioId(), other.getUsuarioId()) && Objects.equals(getConquistaId(), other.getConquistaId());
    }
	
	
	
}
