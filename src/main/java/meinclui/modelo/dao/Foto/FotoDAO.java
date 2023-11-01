package meinclui.modelo.dao.Foto;

import meinclui.modelo.entidade.foto.Foto;

public interface FotoDAO {
	void inserirFoto(Foto foto);

	void deletarFoto(int idFoto);

	void atualizarFoto(Foto foto);
	
	Foto recuperarFotoUsuario(Long id);
	
	Foto recuperarFotoEstabelecimento(Long id);
}
