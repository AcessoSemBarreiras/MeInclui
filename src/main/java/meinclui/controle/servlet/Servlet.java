package meinclui.controle.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.List;
import java.util.Optional;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import meinclui.modelo.dao.Foto.FotoDAO;
import meinclui.modelo.dao.Foto.FotoDAOImpl;
import meinclui.modelo.dao.UsuarioTemConquista.UsuarioTemConquistaDAO;
import meinclui.modelo.dao.UsuarioTemConquista.UsuarioTemConquistaDAOImpl;
import meinclui.modelo.dao.avaliacao.AvaliacaoDAO;
import meinclui.modelo.dao.avaliacao.AvaliacaoDAOImpl;
import meinclui.modelo.dao.avaliacaoComentario.AvaliacaoComentarioDAO;
import meinclui.modelo.dao.avaliacaoComentario.AvaliacaoComentarioDAOImpl;
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
import meinclui.modelo.dto.usuario.UsuarioComunidadeDTO;
import meinclui.modelo.entidade.avaliacao.Avaliacao;
import meinclui.modelo.entidade.avaliacao.AvaliacaoId;
import meinclui.modelo.entidade.avaliacaoComentario.AvaliacaoComentario;
import meinclui.modelo.entidade.categoria.Categoria;
import meinclui.modelo.entidade.comentario.Comentario;
import meinclui.modelo.entidade.conquista.Conquista;
import meinclui.modelo.entidade.endereco.Endereco;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento;
import meinclui.modelo.entidade.foto.Foto;
import meinclui.modelo.entidade.usuario.Usuario;
import meinclui.modelo.enumeracao.TipoReacao;
import meinclui.util.ConversorImagem;

@WebServlet("/")
@MultipartConfig
public class Servlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private AvaliacaoDAO avaliacaoDAO;
	private CategoriaDAO categoriaDAO;
	private ComentarioDAO comentarioDAO;
	private ConquistaDAO conquistaDAO;
	private EnderecoDAO enderecoDAO;
	private EstabelecimentoDAO estabelecimentoDAO;
	private UsuarioDAO usuarioDAO;
	private UsuarioTemConquistaDAO usuarioTemConquistaDAO;
	private FotoDAO fotoDAO;
	private ConversorImagem converterImagem;
	private AvaliacaoComentarioDAO avaliacaoComentarioDAO;

	public void init() {
		avaliacaoDAO = new AvaliacaoDAOImpl();
		categoriaDAO = new CategoriaDAOImpl();
		comentarioDAO = new ComentarioDAOImpl();
		conquistaDAO = new ConquistaDAOImpl();
		enderecoDAO = new EnderecoDAOImpl();
		estabelecimentoDAO = new EstabelecimentoDAOImpl();
		usuarioDAO = new UsuarioDAOImpl();
		usuarioTemConquistaDAO = new UsuarioTemConquistaDAOImpl();
		avaliacaoComentarioDAO = new AvaliacaoComentarioDAOImpl();
		fotoDAO = new FotoDAOImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		try {

			switch (action) {
			case "/tela-inicial":
				mostrarTelaInicial(request, response);
				break;

			case "/login-usuario":
				mostrarFormularioLogin(request, response);
				break;

			case "/entrar":
				confirmarFormularioLogin(request, response);
				break;

			case "/cadastro-usuario":
				mostrarFormularioCadastroUsuario(request, response);
				break;
			case "/inserir-usuario":
				inserirUsuario(request, response);
				break;
			case "/deletar-usuario":
				deletarUsuario(request, response);
				break;
			case "/atualizar-usuario":
				atualizarUsuario(request, response);
				break;
			case "/perfil-usuario":
				mostrarPerfilUsuario(request, response);
				break;
			case "/ranque-usuario":
				mostrarRanque(request, response);
				break;
			case "/editar-perfil-usuario":
				mostrarFormularioEditarUsuario(request, response);
				break;
				
			case "/cadastro-estabelecimento":
				mostrarFormularioCadastroEstabelecimento(request, response);
				break;
			case "/inserir-estabelecimento":
				inserirEstabelecimento(request, response);
				break;
			case "/deletar-estabelecimento":
				deletarEstabelecimento(request, response);
				break;
			case "/atualizar-estabelecimento":
				atualizarEstabelecimento(request, response);
				break;
			case "/perfil-estabelecimento":
				mostrarPerfilEstabelecimento(request, response);
				break;
			case "/encontrar-estabelecimentos":
				mostrarTelaPesquisaEstabelecimento(request, response);
				break;
			case "/mostrar-estabelecimentos-pesquisados":
				mostrarEstabelecimentosPesquisados(request, response);
				break;
			case "/filtrar-estabelecimentos":
				filtrarEstabelecimentos(request, response);
				break;
			case "/editar-perfil-estabelecimento":
				mostrarFormularioEditarEstabelecimento(request, response);
				break;
			case "/favoritar-estabelecimento":
				favoritarEstabelecimento(request, response);
				break;
			case "/desfavoritar-estabelecimento":
				desfavoritarEstabelecimento(request, response);
				break;

			case "/cadastrar-comentario":
				mostrarFormularioCadastroComentario(request, response);
				break;
			case "/inserir-comentario":
				inserirComentario(request, response);
				break;
			case "/responder-comentario":
				responderComentario(request, response);
				break;
			case "/deletar-comentario":
				deletarComentario(request, response);
				break;
			case "/atualizar-comentario":
				atualizarComentario(request, response);
				break;
			case "/recuperar-comentario":
				recuperarComentario(request, response);
				break;

			case "/avaliacao-estabelecimento":
				mostrarFormularioAvaliacaoEstabelecimento(request, response);
				break;
			case "/inserir-avaliacao":
				inserirAvaliacao(request, response);
				break;
			case "/deletar-avaliacao":
				deletarAvaliacao(request, response);
				break;
			case "/atualizar-avaliacao":
				atualizarAvaliacao(request, response);
				break;
			case "/recuperar-avaliacao":
				recuperarAvaliacao(request, response);
				break;
			case "/encerrar-sessao":
				encerrarSessao(request, response);
				break;
			case "/cadastro-categoria":
				mostrarCadastroCategoria(request, response);
				break;
			case "/inserir-categoria":
				inserirCategoria(request, response);
				break;
			case "/atualizar-categoria":
				atualizarCategoria(request, response);
				break;
			case "/deletar-categoria":
				deletarCategoria(request, response);
				break;

			case "/cadastro-conquista":
				mostrarFormularioCadastroConquista(request, response);
				break;
			case "/inserir-conquista":
				inserirConquista(request, response);
				break;
			case "/adicionar-quantidade-gostei":
				adicionarGostei(request, response);
				break;
			case "/adicionar-quantidade-nao-gostei":
				adicionarNaoGostei(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	/* TELA INICIAL */
	private void mostrarTelaInicial(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");	
		request.setAttribute("usuario", usuario);
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}

	/* AVALIAÇÃO */
	private void mostrarFormularioAvaliacaoEstabelecimento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		
		request.setAttribute("usuario", usuario);
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/avaliacao/cadastro-avaliacao.jsp");
		dispatcher.forward(request, response);
	}


	private void inserirAvaliacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		
        Estabelecimento estabelecimento = estabelecimentoDAO.recuperarEstabelecimentoId(Long.parseLong(request.getParameter("id")));

        byte resposta1 = Byte.parseByte(request.getParameter("resposta-1"));
        byte resposta2 = Byte.parseByte(request.getParameter("resposta-2"));
        byte resposta3 = Byte.parseByte(request.getParameter("resposta-3"));
        byte resposta4 = Byte.parseByte(request.getParameter("resposta-4"));
        byte resposta5 = Byte.parseByte(request.getParameter("resposta-5"));
        double media = (double) (resposta1 + resposta2 + resposta3 + resposta4 + resposta5) / 5;
        ZonedDateTime data = ZonedDateTime.now();
        avaliacaoDAO.inserirAvaliacao(new Avaliacao(usuario, estabelecimento, resposta1, resposta2, resposta3, resposta4, resposta5, media, data));
        
        List<Avaliacao> avaliacoes = avaliacaoDAO.recuperarAvaliacaoDoEstabelecimento(estabelecimento.getIdEstabelecimento());
        double soma = 0;
        for (Avaliacao a : avaliacoes) {
        	soma += a.getMediaFinal();
        }
        double mediaEstabelecimento = soma / avaliacoes.size();
        estabelecimento.setPontoAcessibilidade(mediaEstabelecimento);
        estabelecimentoDAO.atualizarEstabelecimento(estabelecimento);

        request.setAttribute("id", estabelecimento.getIdEstabelecimento());
        RequestDispatcher dispatcher = request.getRequestDispatcher("perfil-estabelecimento");
        dispatcher.forward(request, response);
	}

	private void recuperarAvaliacao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		AvaliacaoId id = AvaliacaoId.class.cast(request.getParameter("avaliacao-id"));
		Avaliacao avaliacao = avaliacaoDAO.recuperarAvaliacaoPorId(id);
		request.setAttribute("avaliacao", avaliacao);
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/avaliacao/editar-avaliacao.jsp");
		dispatcher.forward(request, response);

	}

	private void atualizarAvaliacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AvaliacaoId id = AvaliacaoId.class.cast(request.getParameter("avaliacao-id"));
		byte resposta1 = Byte.parseByte(request.getParameter("resposta-1"));
		byte resposta2 = Byte.parseByte(request.getParameter("resposta-2"));
		byte resposta3 = Byte.parseByte(request.getParameter("resposta-3"));
		byte resposta4 = Byte.parseByte(request.getParameter("resposta-4"));
		byte resposta5 = Byte.parseByte(request.getParameter("resposta-5"));
		double media = (double) (resposta1 + resposta2 + resposta3 + resposta4 + resposta5) / 5;
		ZonedDateTime dataOriginal = ZonedDateTime.parse(request.getParameter("data-original"));
		ZonedDateTime dataEdicao = ZonedDateTime.now();
		avaliacaoDAO.atualizarAvaliacao(new Avaliacao(id, resposta1, resposta2, resposta3, resposta4, resposta5, media,
				dataOriginal, dataEdicao));
		RequestDispatcher dispatcher = request.getRequestDispatcher("tela-inicial");
		dispatcher.forward(request, response);
	}

	private void deletarAvaliacao(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		AvaliacaoId id = AvaliacaoId.class.cast(request.getParameter("avaliacao-id"));
		avaliacaoDAO.deletarAvaliacao(id);
		response.sendRedirect("tela-inicial");
	}

	/* COMENTÁRIO */

	private void mostrarFormularioCadastroComentario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		
		request.setAttribute("usuario", usuario);
		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastrar-comentario");
		dispatcher.forward(request, response);
	}

	private void recuperarComentario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Comentario> comentarios = comentarioDAO.recuperarComentariosPeloEstabelecimento(Long.parseLong(request.getParameter("estabelecimento")));
		request.setAttribute("comentario", comentarios);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("assets/paginas/estabelecimento/perfil-estabelecimento.jsp");
		dispatcher.forward(request, response);
	}

	private void atualizarComentario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Long id = Long.parseLong(request.getParameter("id"));
		String comentario = request.getParameter("comentario");
		Comentario comentarioRespondido = Comentario.class.cast(request.getParameter("comentario-respondido"));
		int qtdGostei = Integer.parseInt(request.getParameter("quantidade-gostei"));
		int qtdNaoGostei = Integer.parseInt(request.getParameter("quantidade-nao-gostei"));
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		Estabelecimento estabelecimento = Estabelecimento.class.cast("estabelecimento");
		ZonedDateTime data = ZonedDateTime.class.cast("data");
		comentarioDAO.atualizarComentario(new Comentario(id, comentario, comentarioRespondido, qtdGostei, qtdNaoGostei,
				usuario, estabelecimento, data));
		response.sendRedirect("tela-inicial");

	}

	private void deletarComentario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id-comentario"));
		comentarioDAO.deletarComentario(id);
		response.sendRedirect("tela-inicial");

	}

	private void inserirComentario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String comentario = request.getParameter("comentario");
		Comentario comentarioRespondido = null;
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		Estabelecimento estabelecimento = estabelecimentoDAO.recuperarEstabelecimentoId(Long.parseLong(request.getParameter("id")));
		ZonedDateTime data = ZonedDateTime.now();
		comentarioDAO
				.inserirComentario(new Comentario(comentario, comentarioRespondido, usuario, estabelecimento, data));
		request.setAttribute("id", estabelecimento.getIdEstabelecimento());
		RequestDispatcher dispatcher = request.getRequestDispatcher("perfil-estabelecimento");
		dispatcher.forward(request, response);

	}

	private void responderComentario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Comentario comentarioRespondido = comentarioDAO.recuperarComentarioId(Integer.parseInt(request.getParameter("id-comentario")));
		String comentario = request.getParameter("resposta-comentario");
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		Estabelecimento estabelecimento = estabelecimentoDAO.recuperarEstabelecimentoId(Long.parseLong(request.getParameter("id")));
		ZonedDateTime data = ZonedDateTime.now();
		comentarioDAO.inserirComentario(new Comentario(comentario, comentarioRespondido, usuario, estabelecimento, data));
		request.setAttribute("id", estabelecimento.getIdEstabelecimento());
		RequestDispatcher dispatcher = request.getRequestDispatcher("perfil-estabelecimento");
		dispatcher.forward(request, response);
	}

	/* ESTABELECIMENTO */
	private void mostrarFormularioCadastroEstabelecimento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		
		request.setAttribute("usuario", usuario);
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/estabelecimento/cadastro-estabelecimento.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarFormularioEditarEstabelecimento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		
		request.setAttribute("usuario", usuario);
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/estabelecimento/editar-perfil-estabelecimento.jsp");

		dispatcher.forward(request, response);
	}

	private void mostrarTelaPesquisaEstabelecimento(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		
		request.setAttribute("usuario", usuario);
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/pesquisa.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarEstabelecimentosPesquisados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Estabelecimento> estabelecimentos = estabelecimentoDAO.recuperarEstabelecimentoNome(request.getParameter("q"));
		request.setAttribute("estabelecimentos", estabelecimentos);
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/pesquisa.jsp");
		dispatcher.forward(request, response);
	}

	private void filtrarEstabelecimentos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nomeEstabelecimento = request.getParameter("nome");
		Optional<String> nomeOp = (nomeEstabelecimento == "") ? Optional.empty() : Optional.of(nomeEstabelecimento);
		
		Categoria categoria = categoriaDAO.recuperarCategoriaNome(request.getParameter("categoria"));
		Optional<Categoria> categoriaOp = (categoria == null) ? Optional.empty() : Optional.of(categoria);
		
		String nomeEstado = request.getParameter("nome-estado");
		Optional<String> estadoOp = (nomeEstado == "") ? Optional.empty() : Optional.of(nomeEstado);
		
		String nomeCidade = request.getParameter("nome-cidade");
		Optional<String> cidadeOp = (nomeCidade == "") ? Optional.empty() : Optional.of(nomeCidade);
		
		String nomeBairro = request.getParameter("nome-bairro");
		Optional<String> bairroOp = (nomeBairro == "") ? Optional.empty() : Optional.of(nomeBairro);
		
		String mediaAcessibilidade = request.getParameter("media");
		Optional<Double> mediaOp = (mediaAcessibilidade == "") ? Optional.empty() : Optional.of(Double.parseDouble(mediaAcessibilidade));
		
		List<Estabelecimento> estabelecimentos = estabelecimentoDAO.filtrarEstabelecimentos(nomeOp, categoriaOp, mediaOp, estadoOp, cidadeOp, bairroOp);

		request.setAttribute("estabelecimentos", estabelecimentos);
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/pesquisa.jsp");
		dispatcher.forward(request, response);
	}

	private void mostrarPerfilEstabelecimento(HttpServletRequest request, HttpServletResponse response)

            throws ServletException, IOException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");

		Estabelecimento estabelecimento = estabelecimentoDAO.recuperarEstabelecimentoId(Long.parseLong(request.getParameter("id")));

        
        List<Comentario> comentarios = comentarioDAO.recuperarComentariosPeloEstabelecimento(estabelecimento.getIdEstabelecimento());
        List<Comentario> respostas = comentarioDAO.recuperarComentariosRespostas(estabelecimento);
        
        request.setAttribute("estabelecimento", estabelecimento);
        request.setAttribute("usuario", usuario);
        request.setAttribute("comentarios", comentarios);
        request.setAttribute("respostas", respostas);
        RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/estabelecimento/perfil-estabelecimento.jsp");
        dispatcher.forward(request, response);
    }

	private void atualizarEstabelecimento(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int idEndereco = Integer.parseInt(request.getParameter("id-endereco"));
		String logradouro = request.getParameter("logradouro");
		String tipoLogradouro = request.getParameter("tipo_logradouro");
		int numero = Integer.parseInt(request.getParameter("numero"));
		String complemento = request.getParameter("complemento");
		String bairro = request.getParameter("bairro");
		String cidade = request.getParameter("cidade");
		String estado = request.getParameter("estado");
		Endereco endereco = new Endereco(idEndereco, logradouro, tipoLogradouro, numero, complemento, bairro, cidade,
				estado);
		enderecoDAO.inserirEndereco(endereco);

		Long idEstabelecimento = Long.parseLong(request.getParameter("id-estabelecimento"));
		Categoria categoria = Categoria.class.cast(request.getParameter("categoria"));
		String nome = request.getParameter("nome");

		Part partEstabelecimento = request.getPart("foto-estabelecimento");
		String extensao = partEstabelecimento.getContentType();
		byte[] binarioFoto = ConversorImagem.obterBytesImagem(partEstabelecimento);
		Foto fotoEstabelecimento = new Foto(binarioFoto, extensao);
		fotoDAO.inserirFoto(fotoEstabelecimento);

		estabelecimentoDAO.atualizarEstabelecimento(
				new Estabelecimento(idEstabelecimento, categoria, nome, endereco, fotoEstabelecimento));
		response.sendRedirect("tela-inicial");
	}

	private void deletarEstabelecimento(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		Long id = Long.parseLong(request.getParameter("id-estabelecimento"));
		estabelecimentoDAO.deletarEstabelecimento(id);
		response.sendRedirect("tela-inicial");
	}

	private void inserirEstabelecimento(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		String logradouro = request.getParameter("logradouro");
		String tipoLogradouro = request.getParameter("tipo-logradouro");
		int numero = Integer.parseInt(request.getParameter("numero"));
		String complemento = request.getParameter("complemento");
		String bairro = request.getParameter("bairro");
		String cidade = request.getParameter("cidade");
		String estado = request.getParameter("estado");

		Endereco endereco = new Endereco(logradouro, tipoLogradouro, numero, complemento, bairro, cidade, estado);
		enderecoDAO.inserirEndereco(endereco);

		Categoria categoria = categoriaDAO.recuperarCategoriaNome(request.getParameter("categoria-estabelecimento"));

		Part partEstabelecimento = request.getPart("foto-estabelecimento");
		String extensao = partEstabelecimento.getContentType();
		byte[] binarioFoto = ConversorImagem.obterBytesImagem(partEstabelecimento);
		Foto fotoEstabelecimento = new Foto(binarioFoto, extensao);
		fotoDAO.inserirFoto(fotoEstabelecimento);

		String nome = request.getParameter("nome-estabelecimento");
		estabelecimentoDAO.inserirEstabelecimento(new Estabelecimento(categoria, nome, endereco, fotoEstabelecimento));
		response.sendRedirect("tela-inicial");
	}

	private void favoritarEstabelecimento(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		Long id = Long.parseLong(request.getParameter("id"));
		Estabelecimento estabelecimento = estabelecimentoDAO.recuperarEstabelecimentoId(id);
		usuario.setEstabelecimentoFavorito(estabelecimento);
		usuarioDAO.atualizarUsuario(usuario);
		request.setAttribute("id", id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("perfil-estabelecimento");
		dispatcher.forward(request, response);
		
	}

	private void desfavoritarEstabelecimento(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		Long id = Long.parseLong(request.getParameter("id"));
		Estabelecimento estabelecimento = estabelecimentoDAO.recuperarEstabelecimentoId(id);
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		usuario.getEstabelecimentoFavorito().remove(estabelecimento);
		usuarioDAO.atualizarUsuario(usuario);
		request.setAttribute("id", id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("perfil-estabelecimento");
		dispatcher.forward(request, response);
	}

	/* USUÁRIO */

	private void mostrarFormularioCadastroUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/usuario/cadastro-usuario.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirUsuario(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		String nome = request.getParameter("nome-usuario");
		String nomeDeUsuario = request.getParameter("nome-de-usuario");
		String cpf = request.getParameter("cpf-usuario");
		String email = request.getParameter("email-usuario");
		String pronome = request.getParameter("pronome-usuario");
		LocalDate data = LocalDate.parse(request.getParameter("data-nascimento-usuario"));
		String senha = request.getParameter("senha-usuario");

		Part partPerfil = request.getPart("foto-usuario");
		String extensao = partPerfil.getContentType();
		byte[] binarioFoto = ConversorImagem.obterBytesImagem(partPerfil);
		Foto fotoPerfil = new Foto(binarioFoto, extensao);
		fotoDAO.inserirFoto(fotoPerfil);
		usuarioDAO.inserirUsuario(new Usuario(nome, pronome, nomeDeUsuario, email, cpf, senha, data, fotoPerfil));
		response.sendRedirect("tela-inicial");
	}

	private void atualizarUsuario(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		Long id = Long.parseLong(request.getParameter("id-usuario"));
		String pronome = request.getParameter("pronome-usuario");
		String email = request.getParameter("email-usuario");
		String nomeDeUsuario = request.getParameter("nome-de-usuario");
		String senha = request.getParameter("senha-usuario");
		String nome = request.getParameter("nome-usuario");
		String cpf = request.getParameter("cpf-usuario");
		LocalDate data = LocalDate.parse(request.getParameter("data-nascimento-usuario"));

		Part partPerfil = request.getPart("foto-usuario");
		String extensao = partPerfil.getContentType();
		byte[] binarioFoto = ConversorImagem.obterBytesImagem(partPerfil);
		Foto fotoPerfil = new Foto(binarioFoto, extensao);
		fotoDAO.inserirFoto(fotoPerfil);

		usuarioDAO.atualizarUsuario(new Usuario(id, nome, pronome, nomeDeUsuario, email, cpf, senha, data, fotoPerfil));
		response.sendRedirect("perfil-usuario");
	}
	
	private void mostrarPerfilUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{

		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		
		int pontuacao = usuarioDAO.recuperarPontuacaoUsuario(usuario.getIdUsuario());
		List<Conquista> conquistas = conquistaDAO.recuperarConquistasMaisRecentes(usuario.getIdUsuario());
		List<Comentario> comentarios = comentarioDAO.recuperarComentariosOrdenadoMaisRecente(usuario.getIdUsuario());
		List<Estabelecimento> estabelecimentos = estabelecimentoDAO.recuperarEstabelecimentoAvaliado(usuario.getIdUsuario());
		
		request.setAttribute("usuario", usuario);
		request.setAttribute("pontuacao", pontuacao);
		request.setAttribute("conquistas", conquistas);
		request.setAttribute("comentarios", comentarios);
		request.setAttribute("estabelecimentos", estabelecimentos);
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/usuario/perfil-usuario.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarFormularioLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/usuario/login.jsp");
		dispatcher.forward(request, response);
	}

	private void confirmarFormularioLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		boolean existe = false;
		existe = usuarioDAO.verificarUsuario(email, senha);

		if (existe) {
			HttpSession sessao = request.getSession();
			Usuario usuario = usuarioDAO.recuperarUsuarioEmail(email);
			System.out.println(usuario.getEmail());
			sessao.setAttribute("usuario-logado", usuario);
			RequestDispatcher dispatcher = request.getRequestDispatcher("perfil-usuario");
			dispatcher.forward(request, response);
		} else {

			RequestDispatcher dispatcher = request.getRequestDispatcher("login-usuario");
			dispatcher.forward(request, response);
		}
	}


	private void mostrarFormularioEditarUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		request.setAttribute("usuario", usuario);
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/usuario/editar-perfil-usuario.jsp");
		dispatcher.forward(request, response);

	}

	private void encerrarSessao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getSession().invalidate();
		response.sendRedirect("tela-inicial");
	}

	private void deletarUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		usuarioDAO.deletarUsuario(usuario);
		response.sendRedirect("tela-inicial");
	}

	private void mostrarRanque(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		
		List<UsuarioComunidadeDTO> comunidade = usuarioDAO.recuperarUsuarioRanque();
		
		for (UsuarioComunidadeDTO usuarioComunidadeDTO : comunidade) {
			System.out.println(usuarioComunidadeDTO.getNomeDeUsuario());
		}
		request.setAttribute("usuario", usuario);
		request.setAttribute("comunidade", comunidade);
		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/usuario/ranque-usuario.jsp");
		dispatcher.forward(request, response);
	}

	/* CONQUISTA */
	private void mostrarFormularioCadastroConquista(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/conquista/cadastro-conquista.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirConquista(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		
		String nome = request.getParameter("nome");
		byte nivel = Byte.parseByte(request.getParameter("nivel"));
		int reputacao = Integer.parseInt(request.getParameter("reputacao"));

		Part partReputacao = request.getPart("foto-conquista");
		String extensao = partReputacao.getContentType();
		byte[] binarioFoto = ConversorImagem.obterBytesImagem(partReputacao);
		Foto fotoReputacao = new Foto(binarioFoto, extensao);
		fotoDAO.inserirFoto(fotoReputacao);

		conquistaDAO.inserirConquista(new Conquista(nome, nivel, reputacao, fotoReputacao));
		response.sendRedirect("tela-inicial");
	}

	// CATEGORIA

	private void mostrarCadastroCategoria(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("assets/paginas/categoria/cadastro-categoria.jsp");
		dispatcher.forward(request, response);
	}

	private void inserirCategoria(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nome = request.getParameter("nome-categoria");
		categoriaDAO.inserirCategoria(new Categoria(nome));
		response.sendRedirect("tela-inicial");
	}

	private void atualizarCategoria(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nomeCategoria = request.getParameter("nome-categoria");
		int idCategoria = Integer.parseInt(request.getParameter("id_categoria"));

		categoriaDAO.atualizarCategoria(new Categoria(idCategoria, nomeCategoria));
		response.sendRedirect("tela-inicial");

	}

	private void deletarCategoria(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		

		int idCategoria = Integer.parseInt(request.getParameter("id_categoria"));
		categoriaDAO.deletarCategoria(idCategoria);
		response.sendRedirect("tela-inicial");

	}

	/* GOSTEI E NÃO GOSTEI */

	private void adicionarGostei(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		Comentario comentario = comentarioDAO.recuperarComentarioId(Integer.parseInt(request.getParameter("id")));
		LocalDate dataAtual = LocalDate.now();
		AvaliacaoComentario avaliacaoComentario = new AvaliacaoComentario(usuario, comentario, dataAtual,
				TipoReacao.GOSTEI);
		avaliacaoComentarioDAO.inserirAvaliacaoComentario(avaliacaoComentario);
		comentario.setQuantidadeGostei(comentario.getQuantidadeGostei() + 1);
		comentarioDAO.atualizarComentario(comentario);
		response.sendRedirect("perfil-estabelecimento");

	}

	private void adicionarNaoGostei(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessao = request.getSession();
		Usuario usuario = (Usuario) sessao.getAttribute("usuario-logado");
		Comentario comentario = comentarioDAO.recuperarComentarioId(Integer.parseInt(request.getParameter("id")));
		LocalDate dataAtual = LocalDate.now();
		AvaliacaoComentario avaliacaoComentario = new AvaliacaoComentario(usuario, comentario, dataAtual,
				TipoReacao.NAO_GOSTEI);
		avaliacaoComentarioDAO.inserirAvaliacaoComentario(avaliacaoComentario);
		comentario.setQuantidadeNaoGostei(comentario.getQuantidadeNaoGostei() + 1);
		comentarioDAO.atualizarComentario(comentario);
		response.sendRedirect("perfil-estabelecimento");

	}
}
