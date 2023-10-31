package meinclui.modelo.dao.endereco;

import meinclui.modelo.entidade.endereco.Endereco;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento;

public interface EnderecoDAO {

	void inserirEndereco(Endereco endereco);

	void deletarEndereco(int idEndereco);

	void atualizarEndereco(Endereco endereco);

	Endereco recuperarEnderecos(Estabelecimento estabelecimento);
	
}
