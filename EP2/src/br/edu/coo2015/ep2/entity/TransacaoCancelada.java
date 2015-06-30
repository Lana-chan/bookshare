package br.edu.coo2015.ep2.entity;

public class TransacaoCancelada  implements TransacaoState {

	@Override
	public void mudaEstado(Transacao transacao) {
		transacao.setState(this);
	}
}
