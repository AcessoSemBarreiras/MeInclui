package meinclui.modelo.dto.usuario;

import java.util.List;

import meinclui.modelo.dto.conquista.ConquistaDTO;
import meinclui.modelo.entidade.foto.Foto;

public class UsuarioComunidadeDTO {
	
	Integer idUsuario;
	
	Foto fotoUsuario;
	
	String nomeUsuario;
	
	int pontuacaoTotal;
	
	List<ConquistaDTO> conquistas;

	public UsuarioComunidadeDTO() {}
	
	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public Foto getFotoUsuario() {
		return fotoUsuario;
	}

	public void setFotoUsuario(Foto fotoUsuario) {
		this.fotoUsuario = fotoUsuario;
	}

	public String getNomeDeUsuario() {
		return nomeUsuario;
	}

	public void setNomeDeUsuario(String nomeDeUsuario) {
		this.nomeUsuario = nomeDeUsuario;
	}

	public String getNomeUsuario() {
		return nomeUsuario;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}

	public int getPontuacaoTotal() {
		return pontuacaoTotal;
	}

	public void setPontuacaoTotal(int pontuacaoTotal) {
		this.pontuacaoTotal = pontuacaoTotal;
	}

	public List<ConquistaDTO> getConquistas() {
		return conquistas;
	}

	public void setConquistas(List<ConquistaDTO> conquistas) {
		this.conquistas = conquistas;
	}
	
	
}
