package meinclui.modelo.dto.conquista;

import meinclui.modelo.entidade.foto.Foto;

public class ConquistaDTO {
	
	int idConquista;
	
	Foto fotoConquista;
	
	String nomeConquista;
	
	byte nivelConquista;

	public ConquistaDTO() {}
	
	public int getIdConquista() {
		return idConquista;
	}

	public void setIdConquista(int idConquista) {
		this.idConquista = idConquista;
	}

	public Foto getFotoConquista() {
		return fotoConquista;
	}

	public void setFotoConquista(Foto fotoConquista) {
		this.fotoConquista = fotoConquista;
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
	
}
