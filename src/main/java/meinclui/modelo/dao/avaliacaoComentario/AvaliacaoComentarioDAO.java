package meinclui.modelo.dao.avaliacaoComentario;

import meinclui.modelo.entidade.avaliacaoComentario.AvaliacaoComentario;

public interface AvaliacaoComentarioDAO {

	void inserirAvaliacaoComentario(AvaliacaoComentario avaliacaoComentario);

	void deletarAvaliacaoComentario(AvaliacaoComentario avaliacaoComentario);

	void atualizarAvaliacaoComentario(AvaliacaoComentario avaliacaoComentario);
	
}
