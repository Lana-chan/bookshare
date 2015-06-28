package br.edu.coo2015.ep2.model;

public class CadastroException extends Exception {

	private static final long serialVersionUID = 1L;

	public CadastroException() {
	}
	
	public CadastroException(String mensagem) {
		super(mensagem);
	}
}
