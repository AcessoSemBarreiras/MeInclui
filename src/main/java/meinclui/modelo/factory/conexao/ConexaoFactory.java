package meinclui.modelo.factory.conexao;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class ConexaoFactory {
	
	public SessionFactory getConexao() {
		
		Configuration configuracao = new Configuration();
		
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.avaliacao.Avaliacao.class);
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.avaliacao.AvaliacaoId.class);
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.categoria.Categoria.class);
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.usuariotemconquista.UsuarioTemConquista.class);
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.usuariotemconquista.UsuarioTemConquistaId.class);
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.comentario.Comentario.class);
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.conquista.Conquista.class);
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.endereco.Endereco.class);
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.estabelecimento.Estabelecimento.class);
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.usuario.Usuario.class);
		configuracao.addAnnotatedClass(meinclui.modelo.entidade.foto.Foto.class);
		
		configuracao.configure("hibernate.cfg.xml");
		
		ServiceRegistry servico = new StandardServiceRegistryBuilder().applySettings(configuracao.getProperties()).build();
		SessionFactory fabricaSessao = configuracao.buildSessionFactory(servico);
		
		return fabricaSessao;		
		
	}
}
