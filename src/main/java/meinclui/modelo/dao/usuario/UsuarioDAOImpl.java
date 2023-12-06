package meinclui.modelo.dao.usuario;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Tuple;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import meinclui.modelo.entidade.conquista.Conquista;
import meinclui.modelo.entidade.conquista.Conquista_;
import meinclui.modelo.entidade.usuario.Usuario;
import meinclui.modelo.entidade.usuario.Usuario_;
import meinclui.modelo.entidade.usuariotemconquista.UsuarioTemConquista;
import meinclui.modelo.entidade.usuariotemconquista.UsuarioTemConquista_;
import meinclui.modelo.factory.conexao.ConexaoFactory;

public class UsuarioDAOImpl implements UsuarioDAO {

	private ConexaoFactory fabrica;

	public UsuarioDAOImpl() {
		fabrica = new ConexaoFactory();
	}

	public void inserirUsuario(Usuario usuario) {
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();
			sessao.save(usuario);
			sessao.getTransaction().commit();
		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}
		} finally {

			if (sessao != null) {
				sessao.close();
			}
		}
	}

	public void deletarUsuario(Usuario usuario) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();
			sessao.delete(usuario);
			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {
				sessao.close();
			}
		}
	}

	public void atualizarUsuario(Usuario usuario) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();
			sessao.update(usuario);
			sessao.getTransaction().commit();
		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}
		} finally {

			if (sessao != null) {
				sessao.close();
			}
		}
	}

	public List<Usuario> recuperarUsuarios() {

		Session sessao = null;
		List<Usuario> usuarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Usuario> criteria = construtor.createQuery(Usuario.class);
			Root<Usuario> raizUsuario = criteria.from(Usuario.class);

			criteria.select(raizUsuario);

			usuarios = sessao.createQuery(criteria).getResultList();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {
				sessao.close();
			}
		}

		return usuarios;
	}

	public Usuario recuperarUsuarioId(Long idUsuario) {
		Session sessao = null;
		Usuario usuario = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Usuario> criteria = construtor.createQuery(Usuario.class);
			Root<Usuario> raizUsuario = criteria.from(Usuario.class);

			raizUsuario.fetch(Usuario_.avaliacoes, JoinType.LEFT);
			raizUsuario.fetch(Usuario_.estabelecimentosFavoritos, JoinType.LEFT);
			raizUsuario.fetch(Usuario_.fotoUsuario, JoinType.LEFT);
			
			criteria.select(raizUsuario);
			criteria.where(construtor.equal(raizUsuario.get(Usuario_.idUsuario), idUsuario));

			usuario = sessao.createQuery(criteria).getSingleResult();
			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {
				sessao.close();
			}

		}
		return usuario;
	}

	public Usuario recuperarUsuarioEmail(String emailUsuario) {

		Session sessao = null;
		Usuario usuario = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Usuario> criteria = construtor.createQuery(Usuario.class);
			Root<Usuario> raizUsuario = criteria.from(Usuario.class);
			
			raizUsuario.fetch(Usuario_.estabelecimentosFavoritos, JoinType.LEFT);
			raizUsuario.fetch(Usuario_.fotoUsuario, JoinType.LEFT);
			
			criteria.select(raizUsuario);
			criteria.where(construtor.equal(raizUsuario.get(Usuario_.email), emailUsuario));

			usuario = sessao.createQuery(criteria).getSingleResult();
			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {
				sessao.close();
			}

		}
		return usuario;
	}

	public List<Tuple> recuperarUsuariosMaiorRanque() {

		Session sessao = null;
	    List<Tuple> comunidade = null;

	    try {
	        sessao = fabrica.getConexao().openSession();
	        sessao.beginTransaction();

	        CriteriaBuilder construtor = sessao.getCriteriaBuilder();
	        CriteriaQuery<Tuple> criteria = construtor.createTupleQuery();
	        Root<UsuarioTemConquista> raizUsuarioTemConquista = criteria.from(UsuarioTemConquista.class);

	        Join<UsuarioTemConquista, Usuario> usuarioJoin = raizUsuarioTemConquista.join("usuario", JoinType.INNER);
	        usuarioJoin.fetch(Usuario_.fotoUsuario, JoinType.LEFT);
	        Join<UsuarioTemConquista, Conquista> conquistaJoin = raizUsuarioTemConquista.join("conquista", JoinType.INNER);
	        conquistaJoin.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario), usuarioJoin.get(Usuario_.idUsuario)));
	        criteria.multiselect(
	                usuarioJoin.alias("usuario"),
	                construtor.sum(conquistaJoin.get(Conquista_.reputacao)).alias("soma")
	        );

			criteria.groupBy(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario));
			criteria.orderBy(construtor.desc(conquistaJoin.get(Conquista_.reputacao)));

			comunidade = sessao.createQuery(criteria).getResultList();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			if (sessao != null) {
				sessao.close();
			}
		}

		return comunidade;
	}

	public List<Tuple> recuperarUsuariosMaiorRanqueDia(LocalDate data) {


		Session sessao = null;
	    List<Tuple> comunidade = null;

	    try {
	        sessao = fabrica.getConexao().openSession();
	        sessao.beginTransaction();

	        CriteriaBuilder construtor = sessao.getCriteriaBuilder();
	        CriteriaQuery<Tuple> criteria = construtor.createTupleQuery();
	        Root<UsuarioTemConquista> raizUsuarioTemConquista = criteria.from(UsuarioTemConquista.class);

	        Join<UsuarioTemConquista, Usuario> usuarioJoin = raizUsuarioTemConquista.join("usuario", JoinType.INNER);
	        usuarioJoin.fetch(Usuario_.fotoUsuario, JoinType.LEFT);
	        Join<UsuarioTemConquista, Conquista> conquistaJoin = raizUsuarioTemConquista.join("conquista", JoinType.INNER);
	        conquistaJoin.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario), usuarioJoin.get(Usuario_.idUsuario)));
	        criteria.multiselect(
	                usuarioJoin.alias("usuario"),
	                construtor.sum(conquistaJoin.get(Conquista_.reputacao)).alias("soma")
	        );

			criteria.where(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.dataConquista), data));

			criteria.groupBy(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario));
			criteria.orderBy(construtor.desc(conquistaJoin.get(Conquista_.reputacao)));

			comunidade = sessao.createQuery(criteria).getResultList();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			if (sessao != null) {
				sessao.close();
			}
		}

		return comunidade;
	}

	public List<Tuple> recuperarUsuariosMaiorRanqueSemana(LocalDate sabado, LocalDate domingo) {


		Session sessao = null;
	    List<Tuple> comunidade = null;

	    try {
	        sessao = fabrica.getConexao().openSession();
	        sessao.beginTransaction();

	        CriteriaBuilder construtor = sessao.getCriteriaBuilder();
	        CriteriaQuery<Tuple> criteria = construtor.createTupleQuery();
	        Root<UsuarioTemConquista> raizUsuarioTemConquista = criteria.from(UsuarioTemConquista.class);

	        Join<UsuarioTemConquista, Usuario> usuarioJoin = raizUsuarioTemConquista.join("usuario", JoinType.INNER);
	        usuarioJoin.fetch(Usuario_.fotoUsuario, JoinType.LEFT);
	        Join<UsuarioTemConquista, Conquista> conquistaJoin = raizUsuarioTemConquista.join("conquista", JoinType.INNER);
	        conquistaJoin.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario), usuarioJoin.get(Usuario_.idUsuario)));
	        criteria.multiselect(
	                usuarioJoin.alias("usuario"),
	                construtor.sum(conquistaJoin.get(Conquista_.reputacao)).alias("soma")
	        );

			criteria.where(construtor.between(raizUsuarioTemConquista.get(UsuarioTemConquista_.dataConquista), domingo,
					sabado));

			criteria.groupBy(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario));
			criteria.orderBy(construtor.desc(conquistaJoin.get(Conquista_.reputacao)));

			comunidade = sessao.createQuery(criteria).getResultList();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			if (sessao != null) {
				sessao.close();
			}
		}

		return comunidade;
	}

	public List<Tuple> recuperarUsuariosMaiorRanqueMes(LocalDate primeiroDiaDoMes, LocalDate ultimoDiaDoMes) {


		Session sessao = null;
	    List<Tuple> comunidade = null;

	    try {
	        sessao = fabrica.getConexao().openSession();
	        sessao.beginTransaction();

	        CriteriaBuilder construtor = sessao.getCriteriaBuilder();
	        CriteriaQuery<Tuple> criteria = construtor.createTupleQuery();
	        Root<UsuarioTemConquista> raizUsuarioTemConquista = criteria.from(UsuarioTemConquista.class);

	        Join<UsuarioTemConquista, Usuario> usuarioJoin = raizUsuarioTemConquista.join("usuario", JoinType.INNER);
	        usuarioJoin.fetch(Usuario_.fotoUsuario, JoinType.LEFT);
	        Join<UsuarioTemConquista, Conquista> conquistaJoin = raizUsuarioTemConquista.join("conquista", JoinType.INNER);
	        conquistaJoin.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario), usuarioJoin.get(Usuario_.idUsuario)));
	        criteria.multiselect(
	                usuarioJoin.alias("usuario"),
	                construtor.sum(conquistaJoin.get(Conquista_.reputacao)).alias("soma")
	        );

			criteria.where(construtor.between(raizUsuarioTemConquista.get(UsuarioTemConquista_.dataConquista),
					primeiroDiaDoMes, ultimoDiaDoMes));

			criteria.groupBy(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario));
			criteria.orderBy(construtor.desc(conquistaJoin.get(Conquista_.reputacao)));

			comunidade = sessao.createQuery(criteria).getResultList();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			if (sessao != null) {
				sessao.close();
			}
		}

		return comunidade;
	}

	public List<Tuple> recuperarUsuarioMaiorRanqueAno(LocalDate primeiroDia, LocalDate ultimoDia){

		Session sessao = null;
	    List<Tuple> comunidade = null;

	    try {
	        sessao = fabrica.getConexao().openSession();
	        sessao.beginTransaction();

	        CriteriaBuilder construtor = sessao.getCriteriaBuilder();
	        CriteriaQuery<Tuple> criteria = construtor.createTupleQuery();
	        Root<UsuarioTemConquista> raizUsuarioTemConquista = criteria.from(UsuarioTemConquista.class);

	        Join<UsuarioTemConquista, Usuario> usuarioJoin = raizUsuarioTemConquista.join("usuario", JoinType.INNER);
	        usuarioJoin.fetch(Usuario_.fotoUsuario, JoinType.LEFT);
	        Join<UsuarioTemConquista, Conquista> conquistaJoin = raizUsuarioTemConquista.join("conquista", JoinType.INNER);
	        conquistaJoin.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario), usuarioJoin.get(Usuario_.idUsuario)));
	        criteria.multiselect(
	                usuarioJoin.alias("usuario"),
	                construtor.sum(conquistaJoin.get(Conquista_.reputacao)).alias("soma")
	        );

			criteria.where(construtor.between(raizUsuarioTemConquista.get(UsuarioTemConquista_.dataConquista),
					primeiroDia, ultimoDia));

			criteria.groupBy(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario));
			criteria.orderBy(construtor.desc(conquistaJoin.get(Conquista_.reputacao)));

			comunidade = sessao.createQuery(criteria).getResultList();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {
			if (sessao != null) {
				sessao.close();
			}
		}

		return comunidade;
	}
	public int recuperarPontuacaoUsuario(Long idUsuario) {

		Session sessao = null;
		int pontuacao = 0;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Integer> criteria = construtor.createQuery(Integer.class);
			Root<UsuarioTemConquista> raizUsuarioTemConquista = criteria.from(UsuarioTemConquista.class);
			Join<UsuarioTemConquista, Conquista> joinUsuarioTemConquistaConquista = raizUsuarioTemConquista
					.join(UsuarioTemConquista_.conquista);

			joinUsuarioTemConquistaConquista
					.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario), idUsuario));

			criteria.select(construtor.sum(joinUsuarioTemConquistaConquista.get(Conquista_.reputacao)));

			pontuacao = sessao.createQuery(criteria).getSingleResult();

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {

			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}

		} finally {

			if (sessao != null) {

				sessao.close();

			}
		}
		return pontuacao;

	}

	public Boolean verificarUsuario(String emailUsuario, String senhaUsuario) {

		Session sessao = null;
		Usuario usuario = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Usuario> criteria = construtor.createQuery(Usuario.class);
			Root<Usuario> raizUsuario = criteria.from(Usuario.class);

			criteria.select(raizUsuario);
			criteria.where(construtor.and(construtor.equal(raizUsuario.get(Usuario_.email), emailUsuario),
					construtor.equal(raizUsuario.get(Usuario_.senha), senhaUsuario)));

			usuario = sessao.createQuery(criteria).getSingleResult();

			if (usuario != null) {
				return true;
			}

			sessao.getTransaction().commit();

		} catch (Exception sqlException) {
			sqlException.printStackTrace();

			if (sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}
		} finally {
			if (sessao != null) {
				sessao.close();
			}
		}
		return false;
	}
}