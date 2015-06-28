package br.edu.coo2015.ep2.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

import br.edu.coo2015.ep2.entity.Unidade;


@Entity
public class Pessoa implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@NotNull
	private int nusp;
	
	@Length(min = 3, message="Senha deve ter mínimo de 3 caracteres")
	private String senha;
	
	private String nome;
	private String email;
	private Unidade unidade;
	
	public Pessoa() {}
	
	public Pessoa(int nusp, String senha, String nome, String email,
			Unidade unidade) {
		this.nusp = nusp;
		this.senha = senha;
		this.nome = nome;
		this.email = email;
		this.unidade = unidade;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public int getNusp() {
		return nusp;
	}

	public void setNusp(int nusp) {
		this.nusp = nusp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Unidade getUnidade() {
		return unidade;
	}

	public void setUnidade(Unidade unidade) {
		this.unidade = unidade;
	}
}
