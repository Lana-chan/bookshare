package br.edu.coo2015.ep2.controller;

import java.io.Serializable;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.edu.coo2015.ep2.entity.Pessoa;

@Component
@SessionScoped
public class UsuarioSession implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private Pessoa pessoa;
	
	public boolean estaLogado(){
		return pessoa != null;
	}
	
	public void login(Pessoa pessoa) {
		this.pessoa = pessoa;
	}
	
	public void logout() {
		this.pessoa = null;
	}
	
	public Pessoa getUsuarioLogado() {
		return pessoa;
	}
	
	public int numUspUsuario(){
		return pessoa.getNusp();
	}
}
