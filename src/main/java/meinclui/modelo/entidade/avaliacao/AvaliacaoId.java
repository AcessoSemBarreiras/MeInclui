package meinclui.modelo.entidade.avaliacao;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;
 
@Embeddable
public class AvaliacaoId implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private Long usuarioId;

	private Long estabelecimentoId;
     
	 public AvaliacaoId() { }
     
	public AvaliacaoId(Long usuarioId, Long estabelecimentoId) {
		this.setUsuarioId(usuarioId);
		this.setEstabelecimentoId(estabelecimentoId);
	}

	public Long getUsuarioId() {
		return usuarioId;
	}

	public void setUsuarioId(Long usuarioId) {
		this.usuarioId = usuarioId;
	}

	public Long getEstabelecimentoId() {
		return estabelecimentoId;
	}

	public void setEstabelecimentoId(Long estabelecimentoId) {
		this.estabelecimentoId = estabelecimentoId;
	}
	
	@Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result
                + ((usuarioId == null) ? 0 : estabelecimentoId.hashCode());
        result = prime * result
                + ((estabelecimentoId == null) ? 0 : estabelecimentoId.hashCode());
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
        AvaliacaoId other = (AvaliacaoId) obj;
        return Objects.equals(getUsuarioId(), other.getUsuarioId()) && Objects.equals(getEstabelecimentoId(), other.getEstabelecimentoId());
}
}
