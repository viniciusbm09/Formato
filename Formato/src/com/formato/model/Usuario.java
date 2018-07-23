package com.formato.model;

public class Usuario {
	private String nomecompleto;
	private String email;
	private String telefone;
	private String login;
	private String senha;
	private String aceitaTermos;
	
	public Usuario(String nomecompleto, String email, String telefone, String login, String senha,
			String aceitaTermos) {
		super();
		this.nomecompleto = nomecompleto;
		this.email = email;
		this.telefone = telefone;
		this.login = login;
		this.senha = senha;
		this.aceitaTermos = aceitaTermos;
	}
	
	public Usuario() {
		
	}
	
	public String getNomecompleto() {
		return nomecompleto;
	}
	public void setNomecompleto(String nomecompleto) {
		this.nomecompleto = nomecompleto;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String isAceitaTermos() {
		return aceitaTermos;
	}
	public void setAceitaTermos(String aceitaTermos) {
		this.aceitaTermos = aceitaTermos;
	}
	
	
	
}//fim da classe
