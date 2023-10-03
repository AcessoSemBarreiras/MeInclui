package meinclui.modelo.dao.avaliacao;

import java.util.List;

import meinclui.modelo.entidade.avaliacao.Avaliacao;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento;

public interface AvaliacaoDAO {

	void inserirAvaliacao(Avaliacao avaliacao);

	void deletarAvaliacao(Long idAvaliacao);

	void atualizarAvaliacao(Avaliacao avaliacao);

	List<Avaliacao> recuperarAvaliacoes();

	List<Avaliacao> recuperarAvaliacaoDoEstabelecimento(Long idEstabelecimento);
	
	double recuperarMediaAvaliacaoEstabelecimento(Long idEstabelecimento);

}
