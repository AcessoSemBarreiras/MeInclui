package meinclui.modelo.entidade.foto;

import java.io.Serializable;

import javax.persistence.Column;

public class Foto implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Column(name = "binario_foto")
	private byte[] binario;
	
	@Column(name = "extensao_foto")
	private String extensao;
	
	Foto(){
		
	}
	
	Foto(byte[] binario, String extensao){
		setBinario(binario);
		setExtensao(extensao);
	}

	public byte[] getBinario() {
		return binario;
	}

	public void setBinario(byte[] binario) {
		this.binario = binario;
	}

	public String getExtensao() {
		return extensao;
	}

	public void setExtensao(String extensao) {
		this.extensao = extensao;
	}
	
	
}
