package br.edu.coo2015.ep2.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public enum Unidade implements Serializable {
	each(0,"EACH"),
	ime(1,"IME"),
	med(2,"MED"),
	poli(3,"POLI");
	
	@Id
    private int _value;
	private String nome;

    Unidade(int Value, String nome) {
        this._value = Value;
        this.nome = nome;
    }

    public int getValue() {
    	return _value;
    }
    
    public String getNome() {
    	return nome;
    }

    public static Unidade fromInt(int i) {
        for (Unidade b : Unidade.values()) {
            if (b.getValue() == i) { return b; }
        }
        return null;
    }
}
