package meinclui.modelo.dao.endereco;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import meinclui.modelo.entidade.endereco.Endereco;
import meinclui.modelo.entidade.endereco.Endereco_;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento_;
import meinclui.modelo.factory.conexao.ConexaoFactory;

public class EnderecoDAOImpl implements EnderecoDAO{
	
	private ConexaoFactory fabrica;
	
	public EnderecoDAOImpl() {
		fabrica = new ConexaoFactory();
	}
	
	public void inserirEndereco(Endereco endereco) {
		
		Session sessao = null;
		
		try {
			
			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(endereco);

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

	public void deletarEndereco(int idEndereco) {
		
		Session sessao = null;
		
		try {
			
			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();
			
			sessao.delete(Endereco_.idEndereco.equals(idEndereco));
			
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
	
	public void atualizarEndereco(Endereco endereco) {
			
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(endereco);

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
	
	public List<Endereco> recuperarEnderecos() {

		Session sessao = null;
		List<Endereco> enderecos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Endereco> criteria = construtor.createQuery(Endereco.class);
			Root<Endereco> raizEndereco = criteria.from(Endereco.class);

			criteria.select(raizEndereco);

			enderecos = sessao.createQuery(criteria).getResultList();

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

		return enderecos;
	}

	public Endereco recuperarEnderecos(Estabelecimento estabelecimento) {
		
		Session sessao = null;
		Endereco endereco = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Endereco> criteria = construtor.createQuery(Endereco.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);
			Join<Estabelecimento, Endereco> enderecoJoin = raizEstabelecimento.join(Estabelecimento_.endereco);
			enderecoJoin.on(construtor.equal(raizEstabelecimento.get(Estabelecimento_.endereco), enderecoJoin.get(Endereco_.idEndereco)));
			
			criteria.where(construtor.equal(raizEstabelecimento.get(Estabelecimento_.idEstabelecimento), estabelecimento.getIdEstabelecimento()));
			
			criteria.select(enderecoJoin);

			endereco = sessao.createQuery(criteria).getSingleResult();

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

		return endereco;
	}
	
}
