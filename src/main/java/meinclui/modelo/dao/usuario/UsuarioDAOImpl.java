package meinclui.modelo.dao.usuario;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Tuple;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
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

	public List<Tuple> recuperarUsuariosMaiorRanque() {

		Session sessao = null;
		List<Tuple> usuarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Tuple> criteria = construtor.createTupleQuery();
			Root<UsuarioTemConquista> raizUsuarioTemConquista = criteria.from(UsuarioTemConquista.class);
			Join<UsuarioTemConquista, Conquista> joinConquista = raizUsuarioTemConquista
					.join(UsuarioTemConquista_.conquista);

			joinConquista.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.conquista),
					joinConquista.get(Conquista_.idConquista)));

			Join<UsuarioTemConquista, Usuario> joinUsuario = raizUsuarioTemConquista.join(UsuarioTemConquista_.usuario);

			joinUsuario.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario),
					joinUsuario.get(Usuario_.idUsuario)));
			criteria.multiselect(joinUsuario.get(Usuario_.idUsuario), joinUsuario.get(Usuario_.nome),
					construtor.sum(joinConquista.get(Conquista_.reputacao)));

			criteria.groupBy(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario));
			criteria.orderBy(construtor.desc(joinConquista.get(Conquista_.reputacao)));

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

	public List<Tuple> recuperarUsuariosMaiorRanqueDia(LocalDate data) {

		Session sessao = null;
		List<Tuple> usuarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Tuple> criteria = construtor.createTupleQuery();
			Root<UsuarioTemConquista> raizUsuarioTemConquista = criteria.from(UsuarioTemConquista.class);
			Join<UsuarioTemConquista, Conquista> joinConquista = raizUsuarioTemConquista
					.join(UsuarioTemConquista_.conquista);

			joinConquista.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.conquista),
					joinConquista.get(Conquista_.idConquista)));

			Join<UsuarioTemConquista, Usuario> joinUsuario = raizUsuarioTemConquista.join(UsuarioTemConquista_.usuario);

			joinUsuario.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario),
					joinUsuario.get(Usuario_.idUsuario)));

			criteria.multiselect(joinUsuario.get(Usuario_.idUsuario), joinUsuario.get(Usuario_.nome),
					construtor.sum(joinConquista.get(Conquista_.reputacao)));

			criteria.where(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.dataConquista), data));

			criteria.groupBy(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario));
			criteria.orderBy(construtor.desc(joinConquista.get(Conquista_.reputacao)));

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

	public List<Tuple> recuperarUsuariosMaiorRanqueSemana(LocalDate sabado, LocalDate domingo) {

		Session sessao = null;
		List<Tuple> usuarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Tuple> criteria = construtor.createTupleQuery();
			Root<UsuarioTemConquista> raizUsuarioTemConquista = criteria.from(UsuarioTemConquista.class);
			Join<UsuarioTemConquista, Conquista> joinConquista = raizUsuarioTemConquista
					.join(UsuarioTemConquista_.conquista);

			joinConquista.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.conquista),
					joinConquista.get(Conquista_.idConquista)));

			Join<UsuarioTemConquista, Usuario> joinUsuario = raizUsuarioTemConquista.join(UsuarioTemConquista_.usuario);

			joinUsuario.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario),
					joinUsuario.get(Usuario_.idUsuario)));

			criteria.multiselect(joinUsuario.get(Usuario_.idUsuario), joinUsuario.get(Usuario_.nome),
					construtor.sum(joinConquista.get(Conquista_.reputacao)));

			criteria.where(construtor.between(raizUsuarioTemConquista.get(UsuarioTemConquista_.dataConquista), domingo,
					sabado));

			criteria.groupBy(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario));
			criteria.orderBy(construtor.desc(joinConquista.get(Conquista_.reputacao)));

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

	public List<Tuple> recuperarUsuariosMaiorRanqueMes(LocalDate primeiroDiaDoMes, LocalDate ultimoDiaDiaDoMes) {

		Session sessao = null;
		List<Tuple> usuarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Tuple> criteria = construtor.createTupleQuery();
			Root<UsuarioTemConquista> raizUsuarioTemConquista = criteria.from(UsuarioTemConquista.class);
			Join<UsuarioTemConquista, Conquista> joinConquista = raizUsuarioTemConquista
					.join(UsuarioTemConquista_.conquista);

			joinConquista.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.conquista),
					joinConquista.get(Conquista_.idConquista)));

			Join<UsuarioTemConquista, Usuario> joinUsuario = raizUsuarioTemConquista.join(UsuarioTemConquista_.usuario);

			joinUsuario.on(construtor.equal(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario),
					joinUsuario.get(Usuario_.idUsuario)));

			criteria.multiselect(joinUsuario.get(Usuario_.idUsuario), joinUsuario.get(Usuario_.nome),
					construtor.sum(joinConquista.get(Conquista_.reputacao)));

			criteria.where(construtor.between(raizUsuarioTemConquista.get(UsuarioTemConquista_.dataConquista),
					primeiroDiaDoMes, ultimoDiaDiaDoMes));

			criteria.groupBy(raizUsuarioTemConquista.get(UsuarioTemConquista_.usuario));
			criteria.orderBy(construtor.desc(joinConquista.get(Conquista_.reputacao)));

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

}