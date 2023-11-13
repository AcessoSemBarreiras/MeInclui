package meinclui.modelo.dao.estabelecimento;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import meinclui.modelo.entidade.avaliacao.Avaliacao;
import meinclui.modelo.entidade.avaliacao.Avaliacao_;
import meinclui.modelo.entidade.categoria.Categoria;
import meinclui.modelo.entidade.categoria.Categoria_;
import meinclui.modelo.entidade.endereco.Endereco;
import meinclui.modelo.entidade.endereco.Endereco_;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento_;
import meinclui.modelo.factory.conexao.ConexaoFactory;

public class EstabelecimentoDAOImpl implements EstabelecimentoDAO {

	private ConexaoFactory fabrica;

	public EstabelecimentoDAOImpl() {
		fabrica = new ConexaoFactory();
	}

	public void inserirEstabelecimento(Estabelecimento estabelecimento) {
		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.save(estabelecimento);

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

	public void deletarEstabelecimento(Long idEstabelecimento) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.delete(Estabelecimento_.idEstabelecimento.equals(idEstabelecimento));

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

	public void atualizarEstabelecimento(Estabelecimento estabelecimento) {

		Session sessao = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			sessao.update(estabelecimento);

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

	public List<Estabelecimento> recuperarEstabelecimentos() {

		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);

			criteria.select(raizEstabelecimento);

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

	public Estabelecimento recuperarEstabelecimentoId(Long idEstabelecimento) {
		Session sessao = null;
		Estabelecimento estabelecimento = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);

			raizEstabelecimento.fetch(Estabelecimento_.endereco, JoinType.LEFT);
			raizEstabelecimento.fetch(Estabelecimento_.categoria, JoinType.LEFT);
			
			criteria.select(raizEstabelecimento);
			criteria.where(
					construtor.equal(raizEstabelecimento.get(Estabelecimento_.idEstabelecimento), idEstabelecimento));
			estabelecimento = sessao.createQuery(criteria).getSingleResult();

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

		return estabelecimento;
	}

	public List<Estabelecimento> recuperarEstabelecimentoOrdenadoMaiorNota() {

		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);

			raizEstabelecimento.fetch(Estabelecimento_.endereco, JoinType.LEFT);
			raizEstabelecimento.fetch(Estabelecimento_.categoria, JoinType.LEFT);
			
			criteria.select(raizEstabelecimento);
			criteria.orderBy(construtor.desc(raizEstabelecimento.get(Estabelecimento_.pontoAcessibilidade)));

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

	public List<Estabelecimento> recuperarEstabelecimentoOrdenadoMenorNota() {

		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);

			criteria.select(raizEstabelecimento);
			criteria.orderBy(construtor.asc(raizEstabelecimento.get(Estabelecimento_.pontoAcessibilidade)));

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

	public List<Estabelecimento> recuperarEstabelecimentoNome(String nomeEstabelecimento) {

		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);

			raizEstabelecimento.fetch(Estabelecimento_.endereco, JoinType.LEFT);
			raizEstabelecimento.fetch(Estabelecimento_.categoria, JoinType.LEFT);
			
			criteria.select(raizEstabelecimento);
			criteria.where(
					construtor.like(raizEstabelecimento.get(Estabelecimento_.nome), "%" + nomeEstabelecimento + "%"));

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

	public List<Estabelecimento> recuperarEstabelecimentoEstado(String localidade) {
		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);
			Join<Estabelecimento, Endereco> endereco = raizEstabelecimento.join(Estabelecimento_.endereco);

			raizEstabelecimento.fetch(Estabelecimento_.endereco, JoinType.LEFT);
			raizEstabelecimento.fetch(Estabelecimento_.categoria, JoinType.LEFT);
			
			criteria.select(raizEstabelecimento);
			criteria.where(construtor.like(endereco.get(Endereco_.estado), localidade));

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

	public List<Estabelecimento> recuperarEstabelecimentoCidade(String localidade) {

		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);
			Join<Estabelecimento, Endereco> endereco = raizEstabelecimento.join(Estabelecimento_.endereco);

			raizEstabelecimento.fetch(Estabelecimento_.endereco, JoinType.LEFT);
			raizEstabelecimento.fetch(Estabelecimento_.categoria, JoinType.LEFT);
			
			criteria.select(raizEstabelecimento);
			criteria.where(construtor.like(endereco.get(Endereco_.cidade), "%" + localidade + "%"));

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

	public List<Estabelecimento> recuperarEstabelecimentoBairro(String localidade) {

		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);
			Join<Estabelecimento, Endereco> endereco = raizEstabelecimento.join(Estabelecimento_.endereco);

			raizEstabelecimento.fetch(Estabelecimento_.endereco, JoinType.LEFT);
			raizEstabelecimento.fetch(Estabelecimento_.categoria, JoinType.LEFT);
			
			criteria.select(raizEstabelecimento);
			criteria.where(construtor.like(endereco.get(Endereco_.bairro), localidade));

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

	public List<Estabelecimento> recuperarEstabelecimentoLogradouro(String localidade) {

		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);
			Join<Estabelecimento, Endereco> endereco = raizEstabelecimento.join(Estabelecimento_.endereco);

			raizEstabelecimento.fetch(Estabelecimento_.endereco, JoinType.LEFT);
			raizEstabelecimento.fetch(Estabelecimento_.categoria, JoinType.LEFT);
			
			criteria.select(raizEstabelecimento);
			criteria.where(construtor.like(endereco.get(Endereco_.logradouro), localidade));

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

	public List<Estabelecimento> recuperarEstabelecimentoCategoria(String nomeCategoria) {

		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);
			Join<Estabelecimento, Categoria> categoria = raizEstabelecimento.join(Estabelecimento_.categoria);

			raizEstabelecimento.fetch(Estabelecimento_.endereco, JoinType.LEFT);
			raizEstabelecimento.fetch(Estabelecimento_.categoria, JoinType.LEFT);
			
			criteria.select(raizEstabelecimento);
			criteria.where(construtor.like(categoria.get(Categoria_.nomeCategoria), nomeCategoria));

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

	public List<Estabelecimento> recuperarEstabelecimentoAvaliado(Long idUsuario) {
		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {

			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Avaliacao> raizAvaliacao = criteria.from(Avaliacao.class);

			Join<Avaliacao, Estabelecimento> estabelecimentoJoin = raizAvaliacao.join(Avaliacao_.estabelecimento);
			
			estabelecimentoJoin.fetch(Estabelecimento_.endereco, JoinType.LEFT);
			estabelecimentoJoin.fetch(Estabelecimento_.categoria, JoinType.LEFT);
			
			criteria.select(estabelecimentoJoin);

			criteria.where(construtor.equal(raizAvaliacao.get(Avaliacao_.usuario), idUsuario));

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

	public List<Estabelecimento> filtrarEstabelecimentos(Optional<String> nomeEstabelecimento,
			Optional<Categoria> categoriaEstabelecimento, Optional<Double> mediaAcessibilidade,
			Optional<String> nomeEstado, Optional<String> nomeCidade, Optional<String> nomeBairro) {

		Session sessao = null;
		List<Estabelecimento> estabelecimentos = null;

		try {
			sessao = fabrica.getConexao().openSession();
			sessao.beginTransaction();

			CriteriaBuilder construtor = sessao.getCriteriaBuilder();

			CriteriaQuery<Estabelecimento> criteria = construtor.createQuery(Estabelecimento.class);
			Root<Estabelecimento> raizEstabelecimento = criteria.from(Estabelecimento.class);
			Join<Estabelecimento, Endereco> joinEndereco = raizEstabelecimento.join(Estabelecimento_.endereco);
			raizEstabelecimento.fetch(Estabelecimento_.endereco, JoinType.LEFT);
			raizEstabelecimento.fetch(Estabelecimento_.categoria, JoinType.LEFT);
			raizEstabelecimento.fetch(Estabelecimento_.fotoEstabelecimento, JoinType.LEFT);
			
			criteria.select(raizEstabelecimento);

			List<Predicate> predicados = new ArrayList<>();

			nomeEstabelecimento.ifPresent(nome -> predicados
					.add(construtor.equal(raizEstabelecimento.get(Estabelecimento_.nome), nomeEstabelecimento.get())));
			categoriaEstabelecimento.ifPresent(categoria -> predicados.add(construtor
					.equal(raizEstabelecimento.get(Estabelecimento_.categoria), categoriaEstabelecimento.get())));
			mediaAcessibilidade.ifPresent(media -> predicados
					.add(construtor.equal(raizEstabelecimento.get(Estabelecimento_.pontoAcessibilidade),
							mediaAcessibilidade.get().toString())));
			nomeEstado.ifPresent(
					estado -> predicados.add(construtor.equal(joinEndereco.get(Endereco_.estado), nomeEstado.get())));
			nomeCidade.ifPresent(
					cidade -> predicados.add(construtor.equal(joinEndereco.get(Endereco_.cidade), nomeCidade.get())));
			nomeBairro.ifPresent(
					bairro -> predicados.add(construtor.equal(joinEndereco.get(Endereco_.bairro), nomeBairro.get())));
			
			if (!predicados.isEmpty()) {
				criteria.where(construtor.and(predicados.toArray(new Predicate[0])));
			}

			estabelecimentos = sessao.createQuery(criteria).getResultList();

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

		return estabelecimentos;
	}

}