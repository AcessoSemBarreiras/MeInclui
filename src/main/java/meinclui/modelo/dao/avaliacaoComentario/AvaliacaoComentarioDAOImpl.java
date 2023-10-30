package meinclui.modelo.dao.avaliacaoComentario;
 
import org.hibernate.Session;
 
import meinclui.modelo.entidade.avaliacaoComentario.AvaliacaoComentario;
import meinclui.modelo.factory.conexao.ConexaoFactory;
 
 
public class AvaliacaoComentarioDAOImpl implements AvaliacaoComentarioDAO {
	private ConexaoFactory fabrica;
 
	public AvaliacaoComentarioDAOImpl() {
			fabrica = new ConexaoFactory();
		}
 
	public void inserirAvaliacaoComentario(AvaliacaoComentario avaliacaoComentario) {
		Session sessao = null;
 
		try {
 
			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();
 
			sessao.save(avaliacaoComentario);
 
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
 
	public void deletarAvaliacaoComentario(AvaliacaoComentario avaliacaoComentario) {
		Session sessao = null;
 
		try {
 
			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();
 
			sessao.delete(avaliacaoComentario);
 
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
 
	public void atualizarAvaliacaoComentario(AvaliacaoComentario avaliacaoComentario) {
		Session sessao = null;
 
		try {
 
			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();
 
			sessao.update(avaliacaoComentario);
 
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