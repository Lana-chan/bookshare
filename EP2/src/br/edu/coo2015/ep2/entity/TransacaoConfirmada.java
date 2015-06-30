package br.edu.coo2015.ep2.entity;

public class TransacaoConfirmada  implements TransacaoState {

	@Override
	public void mudaEstado(Transacao transacao) {
		transacao.setState(this);
	}
}
