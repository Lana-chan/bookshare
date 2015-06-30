package br.edu.coo2015.ep2.entity;

public class TransacaoRecebida implements TransacaoState {

	@Override
	public void mudaEstado(Transacao transacao) {
		transacao.setState(this);
	}

}
