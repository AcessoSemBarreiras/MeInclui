package meinclui.modelo.dao.usuario;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Tuple;

import meinclui.modelo.dto.usuario.UsuarioComunidadeDTO;
import meinclui.modelo.entidade.usuario.Usuario;

public interface UsuarioDAO {

	void inserirUsuario(Usuario usuario);

	void deletarUsuario(Usuario usuario);

	void atualizarUsuario(Usuario usuario);

	List<Usuario> recuperarUsuarios();

	Usuario recuperarUsuarioId(Long id);
  
	Usuario recuperarUsuarioEmail(String emailUsuario);

	List<UsuarioComunidadeDTO> recuperarUsuarioRanque();
	
	List<Tuple> recuperarUsuariosMaiorRanque();

	List<Tuple> recuperarUsuariosMaiorRanqueDia(LocalDate data);

	List<Tuple> recuperarUsuariosMaiorRanqueSemana(LocalDate sabado, LocalDate domingo);

	List<Tuple> recuperarUsuariosMaiorRanqueMes(LocalDate primeiroDia, LocalDate ultimoDia);

	int recuperarPontuacaoUsuario(Long idUsuario);

	Boolean verificarUsuario(String emailUsuario, String senhaUsuario);
}