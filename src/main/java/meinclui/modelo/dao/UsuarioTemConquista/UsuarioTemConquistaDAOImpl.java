package meinclui.modelo.dao.UsuarioTemConquista;

import org.hibernate.Session;

import meinclui.modelo.entidade.usuariotemconquista.UsuarioTemConquista;
import meinclui.modelo.factory.conexao.ConexaoFactory;

public class UsuarioTemConquistaDAOImpl implements UsuarioTemConquistaDAO{
	private ConexaoFactory fabrica;

	public UsuarioTemConquistaDAOImpl() {
		fabrica = new ConexaoFactory();
	}
	
	public void inserirUsuarioTemConquista(UsuarioTemConquista usuarioTemConquista) {
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(usuarioTemConquista);

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
	
	public void deletarUsuarioTemConquista(UsuarioTemConquista usuarioTemConquista) {
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.delete(usuarioTemConquista);

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

	public void atualizarUsuarioTemConquista(UsuarioTemConquista usuarioTemConquista) {
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(usuarioTemConquista);

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
}
