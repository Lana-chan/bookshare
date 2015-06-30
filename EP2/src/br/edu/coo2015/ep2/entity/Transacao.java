package br.edu.coo2015.ep2.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Transacao implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int id;
	
	private Pessoa solicitante;
	private Exemplar exemplar;
	private TransacaoState state;
	
	
	Transacao(TransacaoState state, Pessoa solicitante, Exemplar exemplar){
		this.state=state;
		this.solicitante=solicitante;
		this.exemplar=exemplar;
	}
	
	Transacao(TransacaoState state){
		this.state=state;
	}
	
	
	
	

	public TransacaoState getState() {
		return state;
	}

	public void setState(TransacaoState state) {
		this.state = state;
	}

	public Pessoa getSolicitante() {
		return solicitante;
	}

	public void setSolicitante(Pessoa solicitante) {
		this.solicitante = solicitante;
	}

	public Exemplar getExemplar() {
		return exemplar;
	}

	public void setExemplar(Exemplar exemplar) {
		this.exemplar = exemplar;
	}
	
}
