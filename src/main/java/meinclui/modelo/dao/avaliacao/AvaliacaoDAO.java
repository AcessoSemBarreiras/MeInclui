package meinclui.modelo.dao.avaliacao;

import java.util.List;

import meinclui.modelo.entidade.avaliacao.Avaliacao;
import meinclui.modelo.entidade.avaliacao.AvaliacaoId;

public interface AvaliacaoDAO {

	void inserirAvaliacao(Avaliacao avaliacao);

	void deletarAvaliacao(AvaliacaoId idAvaliacao);

	void atualizarAvaliacao(Avaliacao avaliacao);

	List<Avaliacao> recuperarAvaliacoes();

	List<Avaliacao> recuperarAvaliacaoDoEstabelecimento(Long idEstabelecimento);
	
	double recuperarMediaAvaliacaoEstabelecimento(Long idEstabelecimento);
	
	Avaliacao recuperarAvaliacaoEstabelecimentoUsuario(Long idEstabelecimento, Long idUsuario);
	
	Avaliacao recuperarAvaliacaoPorId(AvaliacaoId id);

}
