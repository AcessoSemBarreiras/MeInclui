package meinclui.modelo.dao.conquista;

import java.util.List;

import meinclui.modelo.entidade.conquista.Conquista;
import meinclui.modelo.entidade.usuario.Usuario;

public interface ConquistaDAO {

	void inserirConquista(Conquista conquista);

	void deletarConquista(Long idConquista);

	void atualizarConquista(Conquista conquista);

	List<Conquista> recuperarConquistas();
	List<Conquista> recuperarConquistasMaisRecentes(Long idUsuario);
	List<Conquista> recuperarConquistasMaisAntigos(Long idUsuario);
	List<Conquista> recuperarConquistasMaiorNivel(Long idUsuario);
	List<Conquista> recuperarConquistasMenorNivel(Long idUsuario);
	List<Conquista> recuperarConquistasMaiorReputacao(Long idUsuario);
	List<Conquista> recuperarConquistasMenorReputacao(Long idUsuario);
}
