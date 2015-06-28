package br.edu.coo2015.ep2.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

import br.edu.coo2015.ep2.util.StringUtils;

@Entity
public class Livro implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	private Long ISBN;
	
	private String autor; 
	private String titulo;
	private String editora;

	public Livro(Long isbn, String autor, String titulo, String editora) {
		ISBN = isbn;
		this.autor = autor;
		this.titulo = titulo;
		this.editora = editora;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getEditora() {
		return editora;
	}

	public void setEditora(String editora) {
		this.editora = editora;
	}

	// sobrescrevemos o método "toString" para imprimir o objeto Livro no
	// console
	@Override
	public String toString() {
		return StringUtils.fillOrTruncate(getTitulo(), 40, ' ') + StringUtils.fillOrTruncate(getAutor(), 30, ' ')
				+ StringUtils.fillOrTruncate(getEditora(), 20, ' ');
	}
}
