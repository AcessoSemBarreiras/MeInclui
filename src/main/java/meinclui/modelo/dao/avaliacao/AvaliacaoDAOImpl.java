package meinclui.modelo.dao.avaliacao;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import meinclui.modelo.dao.estabelecimento.EstabelecimentoDAO;
import meinclui.modelo.dao.estabelecimento.EstabelecimentoDAOImpl;
import meinclui.modelo.entidade.avaliacao.Avaliacao;
import meinclui.modelo.entidade.avaliacao.AvaliacaoId;
import meinclui.modelo.entidade.avaliacao.Avaliacao_;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento;
import meinclui.modelo.factory.conexao.ConexaoFactory;

public class AvaliacaoDAOImpl implements AvaliacaoDAO {

	private ConexaoFactory fabrica;

	public AvaliacaoDAOImpl() {
		fabrica = new ConexaoFactory();
	}

	public void inserirAvaliacao(Avaliacao avaliacao) {
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(avaliacao);

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

	public void deletarAvaliacao(AvaliacaoId idAvaliacao) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.delete(Avaliacao_.avaliacaoId.equals(idAvaliacao));

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

	public void atualizarAvaliacao(Avaliacao avaliacao) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(avaliacao);

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

	public List<Avaliacao> recuperarAvaliacoes() {

		Session sessao = null;
		List<Avaliacao> avaliacoes = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Avaliacao> criteria = construtor.createQuery(Avaliacao.class);
			Root<Avaliacao> raizAvaliacao = criteria.from(Avaliacao.class);

			criteria.select(raizAvaliacao);

			avaliacoes = sessao.createQuery(criteria).getResultList();

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

		return avaliacoes;
	}

	public List<Avaliacao> recuperarAvaliacaoDoEstabelecimento(Long idEstabelecimento) {
		Session sessao = null;

		List<Avaliacao> avaliacoes = null;

		try {
			sessao = fabrica.getConexao().openSession();

			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Avaliacao> criteria = construtor.createQuery(Avaliacao.class);

			Root<Avaliacao> raizAvaliacao = criteria.from(Avaliacao.class);

			criteria.select(raizAvaliacao);
			criteria.where(construtor.equal(raizAvaliacao.get(Avaliacao_.estabelecimento), idEstabelecimento));
			avaliacoes = sessao.createQuery(criteria).getResultList();

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
		return avaliacoes;

	}

	public double recuperarMediaAvaliacaoEstabelecimento(Long idEstabelecimento) {

		Session sessao = null;
		double media = 0;

		try {
			sessao = fabrica.getConexao().openSession();

			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Double> criteria = construtor.createQuery(Double.class);

			Root<Avaliacao> raizAvaliacao = criteria.from(Avaliacao.class);

			Calendar calendar = Calendar.getInstance();
			calendar.add(Calendar.MONTH, -6);
			Date dataAtual = calendar.getTime();

			criteria.select(construtor.avg(raizAvaliacao.get(Avaliacao_.mediaFinal)));
			criteria.where(
					construtor.and(construtor.equal(raizAvaliacao.get(Avaliacao_.estabelecimento), idEstabelecimento),
							construtor.greaterThanOrEqualTo(raizAvaliacao.get(Avaliacao_.dataAvaliacao).as(Date.class),
									dataAtual)));
			media = (Double) sessao.createQuery(criteria).getSingleResult();

			EstabelecimentoDAO estabelececimentoDAO = new EstabelecimentoDAOImpl();
			Estabelecimento estabelecimento = estabelececimentoDAO.recuperarEstabelecimentoId(idEstabelecimento);

			estabelecimento.setPontoAcessibilidade(media);
			EstabelecimentoDAO estabelecimentoDAO = new EstabelecimentoDAOImpl();
			estabelecimentoDAO.atualizarEstabelecimento(estabelecimento);

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
		return media;
	}

	public Avaliacao recuperarAvaliacaoEstabelecimentoUsuario(Long idEstabelecimento, Long idUsuario) {
		Session sessao = null;
		Avaliacao avaliacao = null;

		try {
			sessao = fabrica.getConexao().openSession();

			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Avaliacao> criteria = construtor.createQuery(Avaliacao.class);

			Root<Avaliacao> raizAvaliacao = criteria.from(Avaliacao.class);
			
			criteria.select(raizAvaliacao);
			Predicate estabelecimento = construtor.equal(raizAvaliacao.get(Avaliacao_.estabelecimento), idEstabelecimento);
			Predicate usuario = construtor.equal(raizAvaliacao.get(Avaliacao_.usuario), idUsuario);
			criteria.where(construtor.and(estabelecimento, usuario));
			
			avaliacao = sessao.createQuery(criteria).getSingleResult();
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
		return avaliacao;
	}

	public Avaliacao recuperarAvaliacaoPorId(AvaliacaoId id) {

		Session sessao = null;

		Avaliacao avaliacao = null;

		try {
			sessao = fabrica.getConexao().openSession();

			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Avaliacao> criteria = construtor.createQuery(Avaliacao.class);

			Root<Avaliacao> raizAvaliacao = criteria.from(Avaliacao.class);

			criteria.select(raizAvaliacao);
			criteria.where(construtor.equal(raizAvaliacao.get(Avaliacao_.estabelecimento), id));
			avaliacao = sessao.createQuery(criteria).getSingleResult();

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
		return avaliacao;

	}
}