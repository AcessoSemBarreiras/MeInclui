package meinclui.modelo.dao.Foto;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import meinclui.modelo.entidade.estabelecimento.Estabelecimento;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento_;
import meinclui.modelo.entidade.foto.Foto;
import meinclui.modelo.entidade.foto.Foto_;
import meinclui.modelo.entidade.usuario.Usuario;
import meinclui.modelo.entidade.usuario.Usuario_;
import meinclui.modelo.factory.conexao.ConexaoFactory;

public class FotoDAOImpl implements FotoDAO{

	private ConexaoFactory fabrica;

	public FotoDAOImpl() {
		fabrica = new ConexaoFactory();
	}
	
	public void inserirFoto(Foto foto) {
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(foto);

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

	public void deletarFoto(int idFoto) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.delete(Foto_.idFoto.equals(idFoto));

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

	public void atualizarFoto(Foto foto) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(foto);

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

	public Foto recuperarFotoUsuario(Long id) {
		Session sessao = null;
		Foto foto = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Foto> criteria = construtor.createQuery(Foto.class);
			Root<Usuario> raizUsuario = criteria.from(Usuario.class);
			Join<Usuario, Foto> fotoJoin = raizUsuario.join(Usuario_.fotoUsuario);
			fotoJoin.on(construtor.equal(raizUsuario.get(Usuario_.fotoUsuario), fotoJoin.get(Foto_.idFoto)));
			
			criteria.select(fotoJoin);

			foto = sessao.createQuery(criteria).getSingleResult();
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
		return foto;
	}

	public Foto recuperarFotoEstabelecimento(Long id) {
		Session sessao = null;
		Foto foto = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();
			CriteriaQuery<Foto> criteria = construtor.createQuery(Foto.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);
			Join<Estabelecimento, Foto> fotoJoin = raizEstabelecimento.join(Estabelecimento_.fotoEstabelecimento);
			fotoJoin.on(construtor.equal(raizEstabelecimento.get(Estabelecimento_.fotoEstabelecimento), fotoJoin.get(Foto_.idFoto)));
			
			criteria.select(fotoJoin);

			foto = sessao.createQuery(criteria).getSingleResult();
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
		return null;
		//return foto;
	}

}
