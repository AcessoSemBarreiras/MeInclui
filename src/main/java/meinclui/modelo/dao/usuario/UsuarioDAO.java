package meinclui.modelo.dao.usuario;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Tuple;

import meinclui.modelo.entidade.usuario.Usuario;

public interface UsuarioDAO {

	void inserirUsuario(Usuario usuario);

	void deletarUsuario(Usuario usuario);

	void atualizarUsuario(Usuario usuario);

	List<Usuario> recuperarUsuarios();	
	
	List<Tuple> recuperarUsuariosMaiorRanque();
	
	List<Tuple> recuperarUsuariosMaiorRanqueDia(LocalDate data);
	
	List<Tuple> recuperarUsuariosMaiorRanqueSemana(LocalDate sabado, LocalDate domingo);
	
	public List<Tuple> recuperarUsuariosMaiorRanqueMes(LocalDate primeiroDia, LocalDate ultimoDia);
	
	
	int recuperarPontuacaoUsuario(Long idUsuario);
	
}