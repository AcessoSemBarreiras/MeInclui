package meinclui.controle.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

@WebServlet("/")
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
	
	public void init() {
		avaliacaoDAO = new AvaliacaoDAOImpl();
		categoriaDAO = new CategoriaDAOImpl();
		comentarioDAO = new ComentarioDAOImpl();
		conquistaDAO = new ConquistaDAOImpl();
		enderecoDAO = new EnderecoDAOImpl();
		estabelecimentoDAO = new EstabelecimentoDAOImpl();
		usuarioDAO = new UsuarioDAOImpl();
		usuarioTemConquistaDAO = new UsuarioTemConquistaDAOImpl();
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
			case "/avaliacao-estabelecimento":
				mostrarFormularioAvaliacaoEstabelecimento(request, response);
				break;
			case "/encontrar-estabelecimentos":
				mostrarTelaPesquisaEstabelecimento(request, response);
				break;
			case "/editar-perfil-estabelecimento":
				mostrarFormularioEditarEstabelecimento(request, response);
				break;
				
			case "/cadastrar-comentario":
				mostrarFormularioCadastroComentario(request, response);
				break;
			case "/inserir-comentario":
				inserirComentario(request, response);
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
				
			case "/cadastrar-avaliacao":
				mostrarFormularioCadastroAvaliacao(request, response);
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
				
			case "/cadastrar-endereco":
				mostrarFormularioCadastroEndereco(request, response);
				break;
			case "/inserir-endereco":
				inserirEndereco(request, response);
				break;
			case "/deletar-endereco":
				deletarEndereco(request, response);
				break;
			case "/atualizar-endereco":
				atualizarEndereco(request, response);
				break;
			case "/recuperar-endereco":
				recuperarEndereco(request, response);
				break;
			
			
			
			}} catch (SQLException ex) {
				throw new ServletException(ex);
			}
		}
	
}

