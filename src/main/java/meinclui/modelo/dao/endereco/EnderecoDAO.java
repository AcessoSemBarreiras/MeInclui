package meinclui.modelo.dao.endereco;

import java.util.List;

import meinclui.modelo.entidade.endereco.Endereco;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento;

public interface EnderecoDAO {

	void inserirEndereco(Endereco endereco);

	void deletarEndereco(int idEndereco);

	void atualizarEndereco(Endereco endereco);

	public List<Endereco> recuperarEnderecos();
	
	Endereco recuperarEnderecos(Estabelecimento estabelecimento);
	
}
