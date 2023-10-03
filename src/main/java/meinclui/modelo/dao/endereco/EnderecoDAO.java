package meinclui.modelo.dao.endereco;

import java.util.List;

import meinclui.modelo.entidade.endereco.Endereco;

public interface EnderecoDAO {

	void inserirEndereco(Endereco endereco);

	void deletarEndereco(int idEndereco);

	void atualizarEndereco(Endereco endereco);

	List<Endereco> recuperarEnderecos();
	
}
