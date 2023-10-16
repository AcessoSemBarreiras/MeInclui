package meinclui.modelo.dao.categoria;

import java.util.List;

import meinclui.modelo.entidade.categoria.Categoria;

public interface CategoriaDAO {

	void inserirCategoria(Categoria categoria);
	
	void deletarCategoria(int idCategoria);

	void atualizarCategoria(Categoria categoria);

	List<Categoria> recuperarCategorias();

	Categoria recuperarCategoriaNome(String nomeCategoria);
	
	Categoria recuperarCategoriaId(int idCategoria);
}
