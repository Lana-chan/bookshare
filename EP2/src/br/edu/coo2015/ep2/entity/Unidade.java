package br.edu.coo2015.ep2.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public enum Unidade implements Serializable {
	each(0),
	ime(1),
	med(2),
	poli(3);
	
	@Id
    private int _value;

    Unidade(int Value) {
        this._value = Value;
    }

    public int getValue() {
    	return _value;
    }

    public static Unidade fromInt(int i) {
        for (Unidade b : Unidade .values()) {
            if (b.getValue() == i) { return b; }
        }
        return null;
    }
}
