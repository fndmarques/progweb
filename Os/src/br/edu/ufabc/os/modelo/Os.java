package br.edu.ufabc.os.modelo;

import javax.persistence.*;

@Entity
@Table(name="suporte", schema="public")
public class Os {
	@Id
	@GeneratedValue
	private Long id;
	@Column(name="os_DataAbertura")
	private String os_DataAbertura;
	@Column(name="os_Titulo")
	private String os_Titulo;
	@Column(name="empresa")
	private String empresa;
	@Column(name="nome")
	private String nome;
	@Column(name="telefone")
	private String telefone;
	@Column(name="email")
	private String email;
	@Column(name="os_Descricao")
	private String os_Descricao;
	@Column(name="os_Solucao")
	private String os_Solucao;
	@Column(name="os_Prioridade")
	private String os_Prioridade;
	@Column(name="os_DataConclusao")
	private String os_DataConclusao;
	@Column(name="os_Obs")
	private String os_Obs;
	
	// getters e setters
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getOs_DataAbertura() {
		return os_DataAbertura;
	}
	public void setOs_DataAbertura(String os_DataAbertura) {
		this.os_DataAbertura = os_DataAbertura;
	}
	public String getOs_Titulo() {
		return os_Titulo;
	}
	public void setOs_Titulo(String os_Titulo) {
		this.os_Titulo = os_Titulo;
	}
	public String getEmpresa() {
		return empresa;
	}
	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOs_Descricao() {
		return os_Descricao;
	}
	public void setOs_Descricao(String os_Descricao) {
		this.os_Descricao = os_Descricao;
	}
	public String getOs_Solucao() {
		return os_Solucao;
	}
	public void setOs_Solucao(String os_Solucao) {
		this.os_Solucao = os_Solucao;
	}
	public String getOs_Prioridade() {
		return os_Prioridade;
	}
	public void setOs_Prioridade(String os_Prioridade) {
		this.os_Prioridade = os_Prioridade;
	}
	public String getOs_DataConclusao() {
		return os_DataConclusao;
	}
	public void setOs_DataConclusao(String os_DataConclusao) {
		this.os_DataConclusao = os_DataConclusao;
	}
	public String getOs_Obs() {
		return os_Obs;
	}
	public void setOs_Obs(String os_Obs) {
		this.os_Obs = os_Obs;
	}

}
