package br.edu.coo2015.ep2.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.ManyToOne;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;

@Entity
public class Exemplar implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int id;
	
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn
	private Pessoa dono;
	private Livro livro;

	public Exemplar(int id, Pessoa dono, Livro livro) {	
		this.id = id;
		this.dono = dono;
		this.livro = livro;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Pessoa getDono() {
		return dono;
	}
	public void setDono(Pessoa dono) {
		this.dono = dono;
	}
	public Livro getLivro() {
		return livro;
	}
	public void setLivro(Livro livro) {
		this.livro = livro;
	}
}
