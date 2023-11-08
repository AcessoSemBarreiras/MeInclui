package meinclui.modelo.dao.estabelecimento;

import java.util.List;

import meinclui.modelo.entidade.estabelecimento.Estabelecimento;

public interface EstabelecimentoDAO {

	void inserirEstabelecimento(Estabelecimento estabelecimento);

	void deletarEstabelecimento(Long idEestabelecimento);

	void atualizarEstabelecimento(Estabelecimento estabelecimento);

	List<Estabelecimento> recuperarEstabelecimentos();

	List<Estabelecimento> recuperarEstabelecimentoOrdenadoMaiorNota();

	List<Estabelecimento> recuperarEstabelecimentoOrdenadoMenorNota();

	Estabelecimento recuperarEstabelecimentoId(Long idEstabelecimento);

	List<Estabelecimento> recuperarEstabelecimentoNome(String nomeEstabelecimento);

	List<Estabelecimento> recuperarEstabelecimentoEstado(String localidade);

	List<Estabelecimento> recuperarEstabelecimentoCidade(String localidade);

	List<Estabelecimento> recuperarEstabelecimentoBairro(String localidade);

	List<Estabelecimento> recuperarEstabelecimentoLogradouro(String localidade);

	List<Estabelecimento> recuperarEstabelecimentoCategoria(String nomeCategoria);

	List<Estabelecimento> recuperarEstabelecimentoAvaliado(Long idUsuario);
	

}
