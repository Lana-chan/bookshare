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
	
	private String titulo;
	private String autor; 
	private String editora;
	private String sinopse;
	private String idioma;
	private int edicao;
	private int numPags;

	public Livro(Long iSBN, String titulo, String autor, String editora,
			String sinopse, String idioma, int edicao, int numPags) {
		ISBN = iSBN;
		this.titulo = titulo;
		this.autor = autor;
		this.editora = editora;
		this.sinopse = sinopse;
		this.idioma = idioma;
		this.edicao = edicao;
		this.numPags = numPags;
	}

	public Long getISBN() {
		return ISBN;
	}

	public void setISBN(Long iSBN) {
		ISBN = iSBN;
	}

	public String getSinopse() {
		return sinopse;
	}

	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}

	public String getIdioma() {
		return idioma;
	}

	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}

	public int getEdicao() {
		return edicao;
	}

	public void setEdicao(int edicao) {
		this.edicao = edicao;
	}

	public int getNumPags() {
		return numPags;
	}

	public void setNumPags(int numPags) {
		this.numPags = numPags;
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
