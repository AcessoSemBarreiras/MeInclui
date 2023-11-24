package meinclui.modelo.entidade.usuario;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import meinclui.modelo.entidade.avaliacao.Avaliacao;
import meinclui.modelo.entidade.estabelecimento.Estabelecimento;
import meinclui.modelo.entidade.foto.Foto;

@Entity
@Table(name = "usuario")
public class Usuario implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_usuario", nullable = false)
	private Long idUsuario;

	@Column(name = "nome_usuario", length = 50, nullable = false)
	private String nome;
	
	@Column(name = "pronome_usuario", length = 12, nullable = false)
	private String pronome;
	
	@Column(name = "nome_de_usuario", length = 60, nullable = false, unique = true)
	private String nomeDeUsuario;
	
	@Column(name = "email_usuario", length = 70, nullable = false, unique = true)
	private String email;
	
	@Column(name = "cpf_usuario", length = 14, nullable = false, unique = true)
	private String cpf;
	
	@Column(name = "senha_usuario", length = 50, nullable = false)
	private String senha;
	
	@Column(name = "data_nascimento_usuario", nullable = false)
	private LocalDate dataNascimento;

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@Column(name="avaliacao")
	private List<Avaliacao> avaliacoes = new ArrayList<Avaliacao>();
	
	@ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	@JoinTable(name = "estabelecimentos_favoritos", joinColumns = @JoinColumn(name = "id_usuario"), inverseJoinColumns = @JoinColumn(name = "id_estabelecimento"))
	private List<Estabelecimento> estabelecimentosFavoritos = new ArrayList<Estabelecimento>();
	
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	private Foto fotoUsuario;

	public Usuario() {}
	
	public Usuario(Long idUsuario, String nome,String pronome, String nomeDeUsuario, String email, String cpf, String senha, LocalDate dataNascimento, Foto fotoUsuario) {
		setIdUsuario(idUsuario);
		setNome(nome);
		setPronome(pronome);
		setNomeDeUsuario(nomeDeUsuario);
		setEmail(email);
		setCpf(cpf);
		setSenha(senha);
		setDataNascimento(dataNascimento);
		setFotoUsuario(fotoUsuario);
	}
	
	public Usuario(String nome,String pronome, String nomeDeUsuario, String email, String cpf, String senha, LocalDate dataNascimento, Foto fotoUsuario) {
		setNome(nome);
		setPronome(pronome);
		setNomeDeUsuario(nomeDeUsuario);
		setEmail(email);
		setCpf(cpf);
		setSenha(senha);
		setDataNascimento(dataNascimento);
		setFotoUsuario(fotoUsuario);
	}
	
	public Long getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getPronome() {
		return pronome;
	}

	public void setPronome(String pronome) {
		this.pronome = pronome;
	}

	public String getNomeDeUsuario() {
		return nomeDeUsuario;
	}

	public void setNomeDeUsuario(String nomeDeUsuario) {
		this.nomeDeUsuario = nomeDeUsuario;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public LocalDate getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(LocalDate dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	
	public List<Estabelecimento> getEstabelecimentoFavorito(){
		return estabelecimentosFavoritos;
	}
	
	public void setEstabelecimentoFavorito(Estabelecimento estabelecimento) {
		this.estabelecimentosFavoritos.add(estabelecimento);
	}
	
	public List<Avaliacao> getAvaliacoes(){
		return avaliacoes;
	}
	
	public void setAvaliacao(Avaliacao avaliacao) {
		this.avaliacoes.add(avaliacao);
	}

	public Foto getFotoUsuario() {
		return fotoUsuario;
	}

	public void setFotoUsuario(Foto fotoUsuario) {
		this.fotoUsuario = fotoUsuario;
	}
	
}
