package meinclui.modelo.dao.comentario;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import meinclui.modelo.entidade.comentario.Comentario;
import meinclui.modelo.entidade.comentario.Comentario_;
import meinclui.modelo.factory.conexao.ConexaoFactory;

public class ComentarioDAOImpl implements ComentarioDAO {

	private ConexaoFactory fabrica;

	public ComentarioDAOImpl() {
		fabrica = new ConexaoFactory();
	}

	public void inserirComentario(Comentario comentario) {
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(comentario);

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

	public void deletarComentario(int idComentario) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.delete(Comentario_.idComentario.equals(idComentario));

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

	public void atualizarComentario(Comentario comentario) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(comentario);

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

	public List<Comentario> recuperarComentarios() {

		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;
	}

	public List<Comentario> recuperarComentariosPeloEstabelecimento(int idEstabelecimento) {

		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);
			criteria.where(construtor.equal(raizComentario.get(Comentario_.estabelecimento), idEstabelecimento));

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;
	}

	public List<Comentario> recuperarComentariosOrdenadoMaiorQuantidadeGostei(int idEstabelecimento) {

		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);
			criteria.where(construtor.equal(raizComentario.get(Comentario_.estabelecimento),
					idEstabelecimento));
			criteria.orderBy(construtor.desc(raizComentario.get(Comentario_.quantidadeGostei)));

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;
	}

	public List<Comentario> recuperarComentariosOrdenadoMaiorQuantidadeNaoGostei(int idEstabelecimento) {

		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);
			criteria.where(construtor.equal(raizComentario.get(Comentario_.estabelecimento),
					idEstabelecimento));
			criteria.orderBy(construtor.desc(raizComentario.get(Comentario_.quantidadeNaoGostei)));

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;
	}

	public List<Comentario> recuperarComentariosOrdenadoMaisAntigo(int idEstabelecimento) {

		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);
			criteria.where(construtor.equal(raizComentario.get(Comentario_.estabelecimento),
					idEstabelecimento));
			criteria.orderBy(construtor.asc(raizComentario.get(Comentario_.data)));

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;
	}

	public List<Comentario> recuperarComentariosOrdenadoMaisRecente(int idEstabelecimento) {

		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);
			criteria.where(construtor.equal(raizComentario.get(Comentario_.estabelecimento),
					idEstabelecimento));
			criteria.orderBy(construtor.desc(raizComentario.get(Comentario_.data)));

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;

	}

	public List<Comentario> recuperarComentariosUsuarioOrdenadoMaiorQuantidadeGostei(Long idUsuario) {

		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);
			criteria.where(construtor.equal(raizComentario.get(Comentario_.usuario), idUsuario));
			criteria.orderBy(construtor.desc(raizComentario.get(Comentario_.quantidadeGostei)));

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;
	}

	public List<Comentario> recuperarComentariosUsuarioOrdenadoMaiorQuantidadeNaoGostei(Long idUsuario) {

		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);
			criteria.where(construtor.equal(raizComentario.get(Comentario_.usuario), idUsuario));
			criteria.orderBy(construtor.desc(raizComentario.get(Comentario_.quantidadeNaoGostei)));

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;
	}

	public List<Comentario> recuperarComentariosUsuarioOrdenadoMaisAntigo(Long idUsuario) {

		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);
			criteria.where(construtor.equal(raizComentario.get(Comentario_.usuario), idUsuario));
			criteria.orderBy(construtor.asc(raizComentario.get(Comentario_.data)));

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;
	}

	public List<Comentario> recuperarComentariosUsuarioOrdenadoMaisRecente(Long idUsuario) {

		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);
			criteria.where(construtor.equal(raizComentario.get(Comentario_.usuario), idUsuario));
			criteria.orderBy(construtor.desc(raizComentario.get(Comentario_.data)));

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;

	}

	public List<Comentario> recuperarComentariosRespostas(int idComentario) {
		Session sessao = null;
		List<Comentario> comentarios = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Comentario> criteria = construtor.createQuery(Comentario.class);
			Root<Comentario> raizComentario = criteria.from(Comentario.class);

			criteria.select(raizComentario);
			criteria.where(construtor.equal(raizComentario.get(Comentario_.comentarioRespondido), idComentario));
			criteria.orderBy(construtor.desc(raizComentario.get(Comentario_.data)));

			comentarios = sessao.createQuery(criteria).getResultList();

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

		return comentarios;
	}

}
