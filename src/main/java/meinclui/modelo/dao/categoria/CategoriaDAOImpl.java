package meinclui.modelo.dao.categoria;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import meinclui.modelo.entidade.categoria.Categoria;
import meinclui.modelo.entidade.categoria.Categoria_;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento_;
import meinclui.modelo.factory.conexao.ConexaoFactory;

public class CategoriaDAOImpl implements CategoriaDAO {

	private ConexaoFactory fabrica;

	public CategoriaDAOImpl() {
		fabrica = new ConexaoFactory();
	}

	public void inserirCategoria(Categoria categoria) {
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(categoria);

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

	public void deletarCategoria(int idCategoria) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.delete(Categoria_.idCategoria.equals(idCategoria));

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

	public void atualizarCategoria(Categoria categoria) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(categoria);

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

	public List<Categoria> recuperarCategorias() {

		Session sessao = null;
		List<Categoria> categorias = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Categoria> criteria = construtor.createQuery(Categoria.class);
			Root<Categoria> raizCategoria = criteria.from(Categoria.class);

			criteria.select(raizCategoria);

			categorias = sessao.createQuery(criteria).getResultList();

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
   
		return categorias;
	}

	public Categoria recuperarCategoriaNome(String nomeCategoria) {

		Session sessao = null;

		Categoria categoria = null;

		try {

			sessao = fabrica.getConexao().openSession();

			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Categoria> criteria = construtor.createQuery(Categoria.class);

			Root<Categoria> raizCategoria = criteria.from(Categoria.class);

			criteria.select(raizCategoria);

			criteria.where(construtor.like(raizCategoria.get(Categoria_.nomeCategoria), nomeCategoria));

			categoria = sessao.createQuery(criteria).getSingleResult();

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

		return categoria;

	}
	
	public Categoria recuperarCategoriaId(int idCategoria) {

		Session sessao = null;
		Categoria categoria = null;

		try {

			sessao = fabrica.getConexao().openSession();

			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Categoria> criteria = construtor.createQuery(Categoria.class);

			Root<Categoria> raizCategoria = criteria.from(Categoria.class);

			criteria.select(raizCategoria);

			criteria.where(construtor.equal(raizCategoria.get(Categoria_.idCategoria), idCategoria));

			categoria = sessao.createQuery(criteria).getSingleResult();

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

		return categoria;

	}
	public Categoria recuperarCategoriaEstabelecimento(Estabelecimento estabelecimento) {
		 
		Session sessao = null;
		Categoria categoria = null;
 
		try {
 
			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();
 
			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
 
			CriteriaQuery<Categoria> criteria = construtor.createQuery(Categoria.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);
			Join<Estabelecimento, Categoria> categoriaJoin = raizEstabelecimento.join(Estabelecimento_.categoria);
			categoriaJoin.on(construtor.equal(raizEstabelecimento.get(Estabelecimento_.categoria), categoriaJoin.get(Categoria_.idCategoria)));
			criteria.where((construtor.equal(raizEstabelecimento.get(Estabelecimento_.idEstabelecimento), estabelecimento.getIdEstabelecimento())));
			criteria.select(categoriaJoin);
			categoria = sessao.createQuery(criteria).getSingleResult();
 
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
 
		return categoria;
	}

}