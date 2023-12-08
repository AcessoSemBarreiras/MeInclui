package meinclui.modelo.entidade.avaliacao;

import java.io.Serializable;
import java.time.ZonedDateTime;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import meinclui.modelo.entidade.estabelecimento.Estabelecimento;
import meinclui.modelo.entidade.usuario.Usuario;

@Table(name = "avaliacao")
@Entity
public class Avaliacao implements Serializable {

	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private AvaliacaoId avaliacaoId = new AvaliacaoId();

	@ManyToOne
    @MapsId("usuarioId")
	private Usuario usuario;
	
	@ManyToOne
	@MapsId("estabelecimentoId")
	private Estabelecimento estabelecimento;
	
	@Column(name = "resposta_1_avaliacao", nullable = false)
	private byte resposta1;

	@Column(name = "resposta_2_avaliacao", nullable = false)
	private byte resposta2;

	@Column(name = "resposta_3_avaliacao", nullable = false)
	private byte resposta3;

	@Column(name = "resposta_4_avaliacao", nullable = false)
	private byte resposta4;

	@Column(name = "resposta_5_avaliacao", nullable = false)
	private byte resposta5;

	@Column(name = "nota_avaliacao_estabelecimento", nullable = false)
	private double mediaFinal;

	@Column(name = "data_original", nullable = false)
	private ZonedDateTime dataAvaliacao;

	@Column(name = "data_edicao")
	private ZonedDateTime dataEdicaoAvaliacao;
	
	

	public Avaliacao() {
	}

	public Avaliacao(AvaliacaoId avaliacaoId, byte resposta1, byte resposta2, byte resposta3, byte resposta4,
			byte resposta5, double mediaFinal, ZonedDateTime dataOriginal, ZonedDateTime dataEdicao) {
		setAvaliacaoId(avaliacaoId);
		setResposta1(resposta1);
		setResposta2(resposta2);
		setResposta3(resposta3);
		setResposta4(resposta4);
		setResposta5(resposta5);
		setMediaFinal(mediaFinal);
		setDataAvaliacao(dataOriginal);
		setDataEdicaoAvaliacao(dataEdicao);
	}

	public Avaliacao(Usuario usuario, Estabelecimento estabelecimento, byte resposta1, byte resposta2, byte resposta3, byte resposta4, byte resposta5, double mediaFinal, ZonedDateTime dataAvaliacao) {

		setUsuario(usuario);
		setEstabelecimento(estabelecimento);
		setResposta1(resposta1);
		setResposta2(resposta2);
		setResposta3(resposta3);
		setResposta4(resposta4);
		setResposta5(resposta5);
		setMediaFinal(mediaFinal);
		setDataAvaliacao(dataAvaliacao);
	}

	public AvaliacaoId getAvaliacaoId() {
		return avaliacaoId;
	}

	public void setAvaliacaoId(AvaliacaoId avaliacaoId) {
		this.avaliacaoId = avaliacaoId;
	}
	
	public Usuario getUsuario() {
		return usuario;
	}
	
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	public Estabelecimento getEstabelecimento() {
		return estabelecimento;
	}
	
	public void setEstabelecimento(Estabelecimento estabelecimento) {
		this.estabelecimento = estabelecimento;
	}
	
	public byte getResposta1() {
		return resposta1;
	}

	public void setResposta1(byte resposta1) {
		this.resposta1 = resposta1;
	}

	public byte getResposta2() {
		return resposta2;
	}

	public void setResposta2(byte resposta2) {
		this.resposta2 = resposta2;
	}

	public byte getResposta3() {
		return resposta3;
	}

	public void setResposta3(byte resposta3) {
		this.resposta3 = resposta3;
	}

	public byte getResposta4() {
		return resposta4;
	}

	public void setResposta4(byte resposta4) {
		this.resposta4 = resposta4;
	}

	public byte getResposta5() {
		return resposta5;
	}

	public void setResposta5(byte resposta5) {
		this.resposta5 = resposta5;
	}

	public double getMediaFinal() {
		return mediaFinal;
	}

	public void setMediaFinal(double mediaFinal2) {
		this.mediaFinal = mediaFinal2;
	}

	public ZonedDateTime getDataAvaliacao() {
		return dataAvaliacao;
	}

	public void setDataAvaliacao(ZonedDateTime dataAvaliacao) {
		this.dataAvaliacao = dataAvaliacao;
	}
	
	public ZonedDateTime getDataEdicaoAvaliacao() {
		return dataEdicaoAvaliacao;
	}

	public void setDataEdicaoAvaliacao(ZonedDateTime dataEdicaoAvaliacao) {
		this.dataEdicaoAvaliacao = dataEdicaoAvaliacao;
	}
	
}
