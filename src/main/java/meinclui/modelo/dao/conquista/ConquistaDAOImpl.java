package meinclui.modelo.dao.conquista;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import meinclui.modelo.entidade.conquista.Conquista;
import meinclui.modelo.entidade.conquista.Conquista_;
import meinclui.modelo.entidade.usuariotemconquista.UsuarioTemConquista;
import meinclui.modelo.entidade.usuariotemconquista.UsuarioTemConquista_;
import meinclui.modelo.factory.conexao.ConexaoFactory;

public class ConquistaDAOImpl implements ConquistaDAO{
	
	private ConexaoFactory fabrica;
	
	public ConquistaDAOImpl() {
		fabrica = new ConexaoFactory();
	}
	
	public void inserirConquista(Conquista conquista) {
		Session sessao = null;
		
		try {
			
			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(conquista);

			sessao.getTransaction().commit();
			
		}catch (Exception sqlException) {

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

	public void deletarConquista(Long idConquista) {
		
		Session sessao = null;
		
		try {
			
			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();
			
			sessao.delete(Conquista_.idConquista.equals(idConquista));
			
			sessao.getTransaction().commit();
			
		} catch (Exception sqlException){
			
			sqlException.printStackTrace();
			
			if(sessao.getTransaction() != null) {
				sessao.getTransaction().rollback();
			}
			
		} finally {
			
			if (sessao != null) {
				sessao.close();
			}
			
		}
		
	}
	
	public void atualizarConquista(Conquista conquista) {
			
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(conquista);

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
	
	public List<Conquista> recuperarConquistas() {

		Session sessao = null;
		List<Conquista> conquistas = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Conquista> criteria = construtor.createQuery(Conquista.class);
			Root<Conquista> raizConquista = criteria.from(Conquista.class);

			conquistas = sessao.createQuery(criteria).getResultList();

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

		return conquistas;
	}

	public List<Conquista> recuperarConquistasMaisRecentes(Long idUsuario) {
		Session sessao = null;
		List<Conquista> conquistas = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Conquista> criteria = construtor.createQuery(Conquista.class);
			
			Root<UsuarioTemConquista> raizConquista = criteria.from(UsuarioTemConquista.class);			
			Join<UsuarioTemConquista, Conquista> utcJoin = raizConquista.join(UsuarioTemConquista_.conquista);
			utcJoin.on(construtor.equal(raizConquista.get(UsuarioTemConquista_.usuario), idUsuario));
			
			criteria.select(utcJoin);
			criteria.orderBy(construtor.desc(raizConquista.get(UsuarioTemConquista_.dataConquista)));
			conquistas = sessao.createQuery(criteria).getResultList();
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

		return conquistas;
	}
	public List<Conquista> recuperarConquistasMaisAntigos(Long idUsuario) {

		Session sessao = null;
		List<Conquista> conquistas = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Conquista> criteria = construtor.createQuery(Conquista.class);
			
			Root<UsuarioTemConquista> raizConquista = criteria.from(UsuarioTemConquista.class);			
			Join<UsuarioTemConquista, Conquista> utcJoin = raizConquista.join(UsuarioTemConquista_.conquista);
			utcJoin.on(construtor.equal(raizConquista.get(UsuarioTemConquista_.usuario), idUsuario));
			
			criteria.select(utcJoin);
			criteria.orderBy(construtor.asc(raizConquista.get(UsuarioTemConquista_.dataConquista)));
			conquistas = sessao.createQuery(criteria).getResultList();
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

		return conquistas;
	}
	
	public List<Conquista> recuperarConquistasMaiorNivel(Long idUsuario) {
		Session sessao = null;
		List<Conquista> conquistas = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Conquista> criteria = construtor.createQuery(Conquista.class);
			
			Root<UsuarioTemConquista> raizConquista = criteria.from(UsuarioTemConquista.class);			
			Join<UsuarioTemConquista, Conquista> utcJoin = raizConquista.join(UsuarioTemConquista_.conquista);
			utcJoin.on(construtor.equal(raizConquista.get(UsuarioTemConquista_.usuario), idUsuario));
			
			criteria.select(utcJoin);
			criteria.orderBy(construtor.desc(utcJoin.get(Conquista_.nivelConquista)));
			conquistas = sessao.createQuery(criteria).getResultList();
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

		return conquistas;
	}
	public List<Conquista> recuperarConquistasMenorNivel(Long idUsuario) {
		Session sessao = null;
		List<Conquista> conquistas = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Conquista> criteria = construtor.createQuery(Conquista.class);
			
			Root<UsuarioTemConquista> raizConquista = criteria.from(UsuarioTemConquista.class);			
			Join<UsuarioTemConquista, Conquista> utcJoin = raizConquista.join(UsuarioTemConquista_.conquista);
			utcJoin.on(construtor.equal(raizConquista.get(UsuarioTemConquista_.usuario), idUsuario));
			
			criteria.select(utcJoin);
			criteria.orderBy(construtor.asc(utcJoin.get(Conquista_.nivelConquista)));
			conquistas = sessao.createQuery(criteria).getResultList();
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

		return conquistas;
	}
	
	public List<Conquista> recuperarConquistasMaiorReputacao(Long idUsuario) {

		Session sessao = null;
		List<Conquista> conquistas = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Conquista> criteria = construtor.createQuery(Conquista.class);
			
			Root<UsuarioTemConquista> raizConquista = criteria.from(UsuarioTemConquista.class);			
			Join<UsuarioTemConquista, Conquista> utcJoin = raizConquista.join(UsuarioTemConquista_.conquista);
			utcJoin.on(construtor.equal(raizConquista.get(UsuarioTemConquista_.usuario), idUsuario));
			
			criteria.select(utcJoin);
			criteria.orderBy(construtor.desc(utcJoin.get(Conquista_.reputacao)));
			conquistas = sessao.createQuery(criteria).getResultList();
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

		return conquistas;
	}
	public List<Conquista> recuperarConquistasMenorReputacao(Long idUsuario) {

		Session sessao = null;
		List<Conquista> conquistas = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Conquista> criteria = construtor.createQuery(Conquista.class);
			
			Root<UsuarioTemConquista> raizConquista = criteria.from(UsuarioTemConquista.class);			
			Join<UsuarioTemConquista, Conquista> utcJoin = raizConquista.join(UsuarioTemConquista_.conquista);
			utcJoin.on(construtor.equal(raizConquista.get(UsuarioTemConquista_.usuario), idUsuario));
			
			criteria.select(utcJoin);
			criteria.orderBy(construtor.asc(utcJoin.get(Conquista_.reputacao)));
			conquistas = sessao.createQuery(criteria).getResultList();
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

		return conquistas;
	}
}
