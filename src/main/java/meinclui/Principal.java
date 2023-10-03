package meinclui;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.temporal.TemporalAdjusters;
import java.util.List;

import javax.persistence.Tuple;

import meinclui.modelo.dao.UsuarioTemConquista.UsuarioTemConquistaDAO;
import meinclui.modelo.dao.UsuarioTemConquista.UsuarioTemConquistaDAOImpl;
import meinclui.modelo.dao.avaliacao.AvaliacaoDAO;
import meinclui.modelo.dao.avaliacao.AvaliacaoDAOImpl;
import meinclui.modelo.dao.categoria.CategoriaDAO;
import meinclui.modelo.dao.categoria.CategoriaDAOImpl;
import meinclui.modelo.dao.comentario.ComentarioDAO;
import meinclui.modelo.dao.comentario.ComentarioDAOImpl;
import meinclui.modelo.dao.conquista.ConquistaDAO;
import meinclui.modelo.dao.conquista.ConquistaDAOImpl;
import meinclui.modelo.dao.endereco.EnderecoDAO;
import meinclui.modelo.dao.endereco.EnderecoDAOImpl;
import meinclui.modelo.dao.estabelecimento.EstabelecimentoDAO;
import meinclui.modelo.dao.estabelecimento.EstabelecimentoDAOImpl;
import meinclui.modelo.dao.usuario.UsuarioDAO;
import meinclui.modelo.dao.usuario.UsuarioDAOImpl;
import meinclui.modelo.entidade.avaliacao.Avaliacao;
import meinclui.modelo.entidade.categoria.Categoria;
import meinclui.modelo.entidade.comentario.Comentario;
import meinclui.modelo.entidade.conquista.Conquista;
import meinclui.modelo.entidade.endereco.Endereco;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento;
import meinclui.modelo.entidade.usuario.Usuario;
import meinclui.modelo.entidade.usuariotemconquista.UsuarioTemConquista;

public class Principal {

	public static void main(String[] args) {

		//// ENDERECO
		EnderecoDAO enderecoDAO = new EnderecoDAOImpl();

		String logradouro = "Nereu Ramos";
		String tipoLogradouro = "Rua";
		int numero = 133;
		String bairro = "Centro";
		String cidade = "Blumenau";
		String estado = "SC";

		Endereco endereco1 = new Endereco();

		endereco1.setLogradouro(logradouro);
		endereco1.setTipoLogradouro(tipoLogradouro);
		endereco1.setNumero(numero);
		endereco1.setBairro(bairro);
		endereco1.setCidade(cidade);
		endereco1.setEstado(estado);
		enderecoDAO.inserirEndereco(endereco1);

		logradouro = "São Paulo";
		tipoLogradouro = "Rua";
		numero = 220;
		bairro = "Itoupava Central";
		cidade = "Blumenau";
		estado = "SC";

		Endereco endereco2 = new Endereco();

		endereco2.setLogradouro(logradouro);
		endereco2.setTipoLogradouro(tipoLogradouro);
		endereco2.setNumero(numero);
		endereco2.setBairro(bairro);
		endereco2.setCidade(cidade);
		endereco2.setEstado(estado);
		enderecoDAO.inserirEndereco(endereco2);

		logradouro = "7 de Setembro";
		tipoLogradouro = "Rua";
		numero = 450;
		bairro = "Centro";
		cidade = "Blumenau";
		estado = "SC";

		Endereco endereco3 = new Endereco();

		endereco3.setLogradouro(logradouro);
		endereco3.setTipoLogradouro(tipoLogradouro);
		endereco3.setNumero(numero);
		endereco3.setBairro(bairro);
		endereco3.setCidade(cidade);
		endereco3.setEstado(estado);
		enderecoDAO.inserirEndereco(endereco3);

		List<Endereco> enderecos = enderecoDAO.recuperarEnderecos();

		//// CATEGORIA
		CategoriaDAO categoriaDAO = new CategoriaDAOImpl();

		String nomeCategoria = "Cafeteria";
		Categoria categoria1 = new Categoria();
		categoria1.setNomeCategoria(nomeCategoria);
		categoriaDAO.inserirCategoria(categoria1);

		nomeCategoria = "Lanchonete";
		Categoria categoria2 = new Categoria();
		categoria2.setNomeCategoria(nomeCategoria);
		categoriaDAO.inserirCategoria(categoria2);

		nomeCategoria = "Loja";
		Categoria categoria3 = new Categoria();
		categoria3.setNomeCategoria(nomeCategoria);
		categoriaDAO.inserirCategoria(categoria3);

		List<Categoria> categorias = categoriaDAO.recuperarCategorias();

		//// ESTABELECIMENTO
		EstabelecimentoDAO estabelecimentoDAO = new EstabelecimentoDAOImpl();

		String nomeEstabelecimento = "ChocoLatte";
		Estabelecimento estabelecimento1 = new Estabelecimento();
		estabelecimento1.setCategoria(categoria1);
		estabelecimento1.setEndereco(endereco1);
		estabelecimento1.setNome(nomeEstabelecimento);
		estabelecimentoDAO.inserirEstabelecimento(estabelecimento1);

		nomeEstabelecimento = "Lanches João";
		Estabelecimento estabelecimento2 = new Estabelecimento();
		estabelecimento2.setCategoria(categoria2);
		estabelecimento2.setEndereco(endereco2);
		estabelecimento2.setNome(nomeEstabelecimento);
		estabelecimentoDAO.inserirEstabelecimento(estabelecimento2);

		nomeEstabelecimento = "Lojas Maria";
		Estabelecimento estabelecimento3 = new Estabelecimento();
		estabelecimento3.setCategoria(categoria3);
		estabelecimento3.setEndereco(endereco3);
		estabelecimento3.setNome(nomeEstabelecimento);
		estabelecimentoDAO.inserirEstabelecimento(estabelecimento3);

		List<Estabelecimento> estabelecimentos = estabelecimentoDAO.recuperarEstabelecimentos();

		//// USUARIO
		UsuarioDAO usuarioDAO = new UsuarioDAOImpl();

		String nomeUsuario = "Carlos";
		String sobrenomeUsuario = "Silvleira";
		String nomeDeUsuario = "carl";
		String emailUsuario = "carloss@gmail.com";
		String cpfUsuario = "123.456.789-10";
		String senha = "Carlos123$";
		LocalDate dataNascimentoUsuario = LocalDate.of(1999, 06, 13);

		Usuario usuario1 = new Usuario();
		usuario1.setNome(nomeUsuario);
		usuario1.setSobrenome(sobrenomeUsuario);
		usuario1.setNomeDeUsuario(nomeDeUsuario);
		usuario1.setEmail(emailUsuario);
		usuario1.setCpf(cpfUsuario);
		usuario1.setSenha(senha);
		usuario1.setDataNascimento(dataNascimentoUsuario);
		usuarioDAO.inserirUsuario(usuario1);

		nomeUsuario = "Pedro";
		sobrenomeUsuario = "Luis";
		nomeDeUsuario = "Pedro";
		emailUsuario = "Pedro@gmail.com";
		cpfUsuario = "313.356.749-40";
		senha = "Pedro2!";
		dataNascimentoUsuario = LocalDate.of(2001, 03, 15);

		Usuario usuario2 = new Usuario();

		usuario2.setNome(nomeUsuario);
		usuario2.setSobrenome(sobrenomeUsuario);
		usuario2.setNomeDeUsuario(nomeDeUsuario);
		usuario2.setEmail(emailUsuario);
		usuario2.setCpf(cpfUsuario);
		usuario2.setSenha(senha);
		usuario2.setDataNascimento(dataNascimentoUsuario);
		usuarioDAO.inserirUsuario(usuario2);

		nomeUsuario = "Fernando";
		sobrenomeUsuario = "Oil";
		nomeDeUsuario = "Ferd";
		emailUsuario = "nando@gmail.com";
		cpfUsuario = "331.253.679-00";
		senha = "Oil2!";
		dataNascimentoUsuario = LocalDate.of(1980, 05, 01);

		Usuario usuario3 = new Usuario();
		usuario3.setNome(nomeUsuario);
		usuario3.setSobrenome(sobrenomeUsuario);
		usuario3.setNomeDeUsuario(nomeDeUsuario);
		usuario3.setEmail(emailUsuario);
		usuario3.setCpf(cpfUsuario);
		usuario3.setSenha(senha);
		usuario3.setDataNascimento(dataNascimentoUsuario);
		usuarioDAO.inserirUsuario(usuario3);

		List<Usuario> usuarios = usuarioDAO.recuperarUsuarios();

		//// CONQUISTA
		ConquistaDAO conquistaDAO = new ConquistaDAOImpl();

		String nomeConquista = "Avaliação";
		byte nivelConquista = 1;
		int reputacaoConquista = 10;

		Conquista conquista1 = new Conquista();
		conquista1.setNomeConquista(nomeConquista);
		conquista1.setNivelConquista(nivelConquista);
		conquista1.setReputacao(reputacaoConquista);
		conquistaDAO.inserirConquista(conquista1);

		nomeConquista = "Like";
		nivelConquista = 1;
		reputacaoConquista = 15;

		Conquista conquista2 = new Conquista();
		conquista2.setNomeConquista(nomeConquista);
		conquista2.setNivelConquista(nivelConquista);
		conquista2.setReputacao(reputacaoConquista);
		conquistaDAO.inserirConquista(conquista2);

		nomeConquista = "Avaliação";
		nivelConquista = 2;
		reputacaoConquista = 30;

		Conquista conquista3 = new Conquista();

		conquista3.setNomeConquista(nomeConquista);
		conquista3.setNivelConquista(nivelConquista);
		conquista3.setReputacao(reputacaoConquista);
		conquistaDAO.inserirConquista(conquista3);

		nomeConquista = "Like";
		nivelConquista = 2;
		reputacaoConquista = 35;

		Conquista conquista4 = new Conquista();

		conquista4.setNomeConquista(nomeConquista);
		conquista4.setNivelConquista(nivelConquista);
		conquista4.setReputacao(reputacaoConquista);
		conquistaDAO.inserirConquista(conquista4);

		nomeConquista = "Avaliação";
		nivelConquista = 3;
		reputacaoConquista = 45;

		Conquista conquista5 = new Conquista();

		conquista5.setNomeConquista(nomeConquista);
		conquista5.setNivelConquista(nivelConquista);
		conquista5.setReputacao(reputacaoConquista);
		conquistaDAO.inserirConquista(conquista5);

		nomeConquista = "Comentario";
		nivelConquista = 1;
		reputacaoConquista = 10;

		Conquista conquista6 = new Conquista();

		conquista6.setNomeConquista(nomeConquista);
		conquista6.setNivelConquista(nivelConquista);
		conquista6.setReputacao(reputacaoConquista);
		conquistaDAO.inserirConquista(conquista6);

		nomeConquista = "Comentario";
		nivelConquista = 2;
		reputacaoConquista = 25;

		Conquista conquista7 = new Conquista();

		conquista7.setNomeConquista(nomeConquista);
		conquista7.setNivelConquista(nivelConquista);
		conquista7.setReputacao(reputacaoConquista);
		conquistaDAO.inserirConquista(conquista7);

		List<Conquista> conquistas = conquistaDAO.recuperarConquistas();

		// AVALIACAO
		AvaliacaoDAO avaliacaoDAO = new AvaliacaoDAOImpl();

		byte resposta1 = 5;
		byte resposta2 = 5;
		byte resposta3 = 4;
		byte resposta4 = 3;
		byte resposta5 = 4;
		float mediaFinal = (float) ((resposta1 + resposta2 + resposta3 + resposta4 + resposta5)) / (float) 5;
		ZonedDateTime dataAvaliacao = ZonedDateTime.of(2020, 06, 13, 12, 0, 0, 0, ZoneId.of("America/Sao_Paulo"));

		Avaliacao avaliacao1 = new Avaliacao();

		avaliacao1.setResposta1(resposta1);
		avaliacao1.setResposta2(resposta2);
		avaliacao1.setResposta3(resposta3);
		avaliacao1.setResposta4(resposta4);
		avaliacao1.setResposta5(resposta5);
		avaliacao1.setMediaFinal(mediaFinal);
		avaliacao1.setUsuario(usuario1);
		avaliacao1.setEstabelecimento(estabelecimento1);
		avaliacao1.setDataAvaliacao(dataAvaliacao);
		avaliacaoDAO.inserirAvaliacao(avaliacao1);

		Avaliacao avaliacao2 = new Avaliacao();

		resposta1 = 1;
		resposta2 = 3;
		resposta3 = 4;
		resposta4 = 5;
		resposta5 = 2;
		mediaFinal = (float) ((resposta1 + resposta2 + resposta3 + resposta4 + resposta5)) / (float) 5;
		dataAvaliacao = ZonedDateTime.of(2022, 8, 11,12, 0, 0, 0, ZoneId.of("America/Sao_Paulo"));

		avaliacao2.setResposta1(resposta1);
		avaliacao2.setResposta2(resposta2);
		avaliacao2.setResposta3(resposta3);
		avaliacao2.setResposta4(resposta4);
		avaliacao2.setResposta5(resposta5);
		avaliacao2.setMediaFinal(mediaFinal);
		avaliacao2.setUsuario(usuario2);
		avaliacao2.setEstabelecimento(estabelecimento1);
		avaliacao2.setDataAvaliacao(dataAvaliacao);

		avaliacaoDAO.inserirAvaliacao(avaliacao2);

		resposta1 = 5;
		resposta2 = 5;
		resposta3 = 4;
		resposta4 = 5;
		resposta5 = 4;
		mediaFinal = (float) ((resposta1 + resposta2 + resposta3 + resposta4 + resposta5)) / (float) 5;
		dataAvaliacao = ZonedDateTime.of(2023, 5, 15,12, 0, 0, 0, ZoneId.of("America/Sao_Paulo"));
		Avaliacao avaliacao3 = new Avaliacao();

		avaliacao3.setResposta1(resposta1);
		avaliacao3.setResposta2(resposta2);
		avaliacao3.setResposta3(resposta3);
		avaliacao3.setResposta4(resposta4);
		avaliacao3.setResposta5(resposta5);
		avaliacao3.setMediaFinal(mediaFinal);
		avaliacao3.setUsuario(usuario3);
		avaliacao3.setEstabelecimento(estabelecimento3);
		avaliacao3.setDataAvaliacao(dataAvaliacao);
		avaliacaoDAO.inserirAvaliacao(avaliacao3);

		List<Avaliacao> avaliacoes = avaliacaoDAO.recuperarAvaliacoes();

		// USUARIOTEMCONQUISTA

		UsuarioTemConquistaDAO usuarioTemConquistaDAO = new UsuarioTemConquistaDAOImpl();

		LocalDate dataConquista = LocalDate.now();
		UsuarioTemConquista usuarioConquista1 = new UsuarioTemConquista();
		usuarioConquista1.setUsuario(usuario1);
		usuarioConquista1.setConquista(conquista1);
		usuarioConquista1.setDataConquista(dataConquista);
		usuarioTemConquistaDAO.inserirUsuarioTemConquista(usuarioConquista1);

		dataConquista = LocalDate.now();
		UsuarioTemConquista usuarioConquista2 = new UsuarioTemConquista();
		usuarioConquista2.setUsuario(usuario1);
		usuarioConquista2.setConquista(conquista3);
		usuarioConquista2.setDataConquista(dataConquista);
		usuarioTemConquistaDAO.inserirUsuarioTemConquista(usuarioConquista2);

		dataConquista = LocalDate.now();
		UsuarioTemConquista usuarioConquista3 = new UsuarioTemConquista();
		usuarioConquista3.setUsuario(usuario1);
		usuarioConquista3.setConquista(conquista5);
		usuarioConquista3.setDataConquista(dataConquista);
		usuarioTemConquistaDAO.inserirUsuarioTemConquista(usuarioConquista3);

		dataConquista = LocalDate.now();
		UsuarioTemConquista usuarioConquista4 = new UsuarioTemConquista();
		usuarioConquista4.setUsuario(usuario2);
		usuarioConquista4.setConquista(conquista1);
		usuarioConquista4.setDataConquista(dataConquista);
		usuarioTemConquistaDAO.inserirUsuarioTemConquista(usuarioConquista4);

		dataConquista = LocalDate.now();
		UsuarioTemConquista usuarioConquista5 = new UsuarioTemConquista();
		usuarioConquista5.setUsuario(usuario2);
		usuarioConquista5.setConquista(conquista2);
		usuarioConquista5.setDataConquista(dataConquista);
		usuarioTemConquistaDAO.inserirUsuarioTemConquista(usuarioConquista5);

		dataConquista = LocalDate.now();
		UsuarioTemConquista usuarioConquista6 = new UsuarioTemConquista();
		usuarioConquista6.setUsuario(usuario3);
		usuarioConquista6.setConquista(conquista1);
		usuarioConquista6.setDataConquista(dataConquista);
		usuarioTemConquistaDAO.inserirUsuarioTemConquista(usuarioConquista6);

		dataConquista = LocalDate.now();
		UsuarioTemConquista usuarioConquista7 = new UsuarioTemConquista(usuario3, conquista2, dataConquista);
		usuarioConquista7.setUsuario(usuario3);
		usuarioConquista7.setConquista(conquista2);
		usuarioConquista7.setDataConquista(dataConquista);
		usuarioTemConquistaDAO.inserirUsuarioTemConquista(usuarioConquista7);

		// ADICIONAR AVALIACAO E CONQUISTA NO USUARIO

		usuario1.setAvaliacao(avaliacao1);
		usuario1.setEstabelecimentoFavorito(estabelecimento1);
		usuarioDAO.atualizarUsuario(usuario1);

		usuario2.setAvaliacao(avaliacao2);
		usuario2.setEstabelecimentoFavorito(estabelecimento2);
		usuarioDAO.atualizarUsuario(usuario2);

		usuario3.setAvaliacao(avaliacao3);
		usuario3.setEstabelecimentoFavorito(estabelecimento3);
		usuarioDAO.atualizarUsuario(usuario3);

		// COMENTARIO

		ComentarioDAO comentarioDAO = new ComentarioDAOImpl();

		String comentario = "Local muito agradável, atendeu grande parte das minhas necessidades!";
		ZonedDateTime dataComentario = ZonedDateTime.now();
		Comentario comentario1 = new Comentario();
		comentario1.setComentario(comentario);
		comentario1.setUsuario(usuario1);
		comentario1.setEstabelecimento(estabelecimento1);
		comentario1.setData(dataComentario);
		comentarioDAO.inserirComentario(comentario1);

		comentario = "Gostei do local porem tem algumas áreas que não sao acessiveis";
		dataComentario = ZonedDateTime.now();
		Comentario comentario2 = new Comentario();
		comentario2 = new Comentario();
		comentario2.setComentario(comentario);
		comentario2.setUsuario(usuario2);
		comentario2.setEstabelecimento(estabelecimento3);
		comentario2.setData(dataComentario);
		comentarioDAO.inserirComentario(comentario2);

		comentario = "Estabelecimento não é acessivel";
		dataComentario = ZonedDateTime.now();
		Comentario comentario3 = new Comentario();
		comentario3 = new Comentario();
		comentario3.setComentario(comentario);
		comentario3.setUsuario(usuario3);
		comentario3.setEstabelecimento(estabelecimento2);
		comentario3.setData(dataComentario);
		comentarioDAO.inserirComentario(comentario3);

		comentario = "Estabelecimento muito bom";

		dataComentario = ZonedDateTime.now();

		Comentario comentario4 = new Comentario();

		comentario4 = new Comentario();

		comentario4.setComentario(comentario);

		comentario4.setUsuario(usuario3);

		comentario4.setEstabelecimento(estabelecimento1);

		comentario4.setData(dataComentario);

		comentario4.setComentarioRespondido(comentario1);

		comentarioDAO.inserirComentario(comentario4);

		List<Comentario> comentarios = comentarioDAO.recuperarComentariosUsuarioOrdenadoMaiorQuantidadeGostei((long) 1);

		
		for (Comentario coment : comentarios) {

			System.out.println(coment.getComentario());
	
		}
		
		LocalDate hoje = LocalDate.now();
			
		Long id = (long) 1;
		System.out.println(usuarioDAO.recuperarPontuacaoUsuario(id));
		List<Tuple> listaResult = usuarioDAO.recuperarUsuariosMaiorRanqueDia(hoje);

		for (Tuple tuple : listaResult) {
			List<Conquista> listaConq = conquistaDAO.recuperarConquistasMaiorReputacao(tuple.get(0 , Long.class));
			System.out.println("Name: " + tuple.get(1, String.class));	
			
			for(Conquista conq : listaConq) {
				System.out.println("Nome: " + conq.getNomeConquista());
				System.out.println("Nível: " + conq.getNivelConquista() + "\n");
			}
			
			System.out.println("Pontuação: " + tuple.get(2, Long.class));
		}
		
		
		
		LocalDate ultimoDiaDoMes = hoje.with(TemporalAdjusters.lastDayOfMonth());

		LocalDate primeiroDiaDoMes = hoje.with(TemporalAdjusters.firstDayOfMonth());	
		
		
		
		
	
		List<Tuple> listaResultMes = usuarioDAO.recuperarUsuariosMaiorRanqueMes(primeiroDiaDoMes, ultimoDiaDoMes);
		
		for (Tuple tuple : listaResultMes) {
			List<Conquista> listaConq = conquistaDAO.recuperarConquistasMaiorReputacao(tuple.get(0 , Long.class));
			System.out.println("Name: " + tuple.get(1, String.class));	
			
			for(Conquista conq : listaConq) {
				System.out.println("Nome: " + conq.getNomeConquista());
				System.out.println("Nível: " + conq.getNivelConquista() + "\n");
			}
			
			System.out.println("Pontuação: " + tuple.get(2, Long.class));
		}
		
	}
	
	
		
	
}