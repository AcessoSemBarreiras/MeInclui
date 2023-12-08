package meinclui.modelo.entidade.endereco;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "endereco", uniqueConstraints = { @UniqueConstraint(columnNames = { "bairro_endereco", "cidade_endereco",
		"estado_endereco", "logradouro_endereco", "numero_endereco", "tipo_logradouro_endereco" }) })
public class Endereco implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_endereco")
	private int idEndereco;

	@Column(name = "logradouro_endereco", length = 70, nullable = false)
	private String logradouro;

	@Column(name = "tipo_logradouro_endereco", length = 60, nullable = false)
	private String tipoLogradouro;

	@Column(name = "numero_endereco", nullable = false)
	private int numero;

	@Column(name = "complemento_endereco", length = 60, nullable = true)
	private String complemento;

	@Column(name = "bairro_endereco", length = 60, nullable = false)
	private String bairro;

	@Column(name = "cidade_endereco", length = 60, nullable = false)
	private String cidade;

	@Column(name = "estado_endereco", length = 2, nullable = false)
	private String estado;

	public Endereco() {
	}

	public Endereco(int idEndereco, String logradouro, String tipoLogradouro, int numero, String complemento,
			String bairro, String cidade, String estado) {
		setIdEndereco(idEndereco);
		setLogradouro(logradouro);
		setTipoLogradouro(tipoLogradouro);
		setNumero(numero);
		setComplemento(complemento);
		setBairro(bairro);
		setCidade(cidade);
		setEstado(estado);
	}

	public Endereco(String logradouro, String tipoLogradouro, int numero, String complemento, String bairro,
			String cidade, String estado) {
		setLogradouro(logradouro);
		setTipoLogradouro(tipoLogradouro);
		setNumero(numero);
		setComplemento(complemento);
		setBairro(bairro);
		setCidade(cidade);
		setEstado(estado);
	}

	public int getIdEndereco() {
		return idEndereco;
	}

	public void setIdEndereco(int idEndereco) {
		this.idEndereco = idEndereco;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getTipoLogradouro() {
		return tipoLogradouro;
	}

	public void setTipoLogradouro(String tipoLogradouro) {
		this.tipoLogradouro = tipoLogradouro;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
}