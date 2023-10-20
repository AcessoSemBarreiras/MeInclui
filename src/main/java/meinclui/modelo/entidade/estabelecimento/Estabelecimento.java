package meinclui.modelo.entidade.estabelecimento;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import meinclui.modelo.entidade.avaliacao.Avaliacao;
import meinclui.modelo.entidade.categoria.Categoria;
import meinclui.modelo.entidade.comentario.Comentario;
import meinclui.modelo.entidade.endereco.Endereco;

@Entity
@Table(name = "estabelecimento", uniqueConstraints = {
		@UniqueConstraint(columnNames = { "nome_estabelecimento", "id_endereco" }) })
public class Estabelecimento implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_estabelecimento", nullable = false)
	private Long idEstabelecimento;

	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_categoria")
	private Categoria categoria;

	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_endereco")
	private Endereco endereco;

	@Column(name = "nome_estabelecimento", length = 60, nullable = false)
	private String nome;

	@Column(name = "media_acessibilidade_estabelecimento")
	private double pontoAcessibilidade;

	public Estabelecimento() {
	}

	public Estabelecimento(Long idEstabelecimento, Categoria categoria, String nome, Endereco endereco) {
		setIdEstabelecimento(idEstabelecimento);
		setCategoria(categoria);
		setNome(nome);
		setPontoAcessibilidade(pontoAcessibilidade);
		setEndereco(endereco);
	}

	public Estabelecimento(Categoria categoria, String nome, Endereco endereco) {
		setCategoria(categoria);
		setNome(nome);
		setEndereco(endereco);
	}

	public Long getIdEstabelecimento() {
		return idEstabelecimento;
	}

	public void setIdEstabelecimento(Long idEstabelecimento) {
		this.idEstabelecimento = idEstabelecimento;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getPontoAcessibilidade() {
		return pontoAcessibilidade;
	}

	public void setPontoAcessibilidade(double media) {
		this.pontoAcessibilidade = media;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
}