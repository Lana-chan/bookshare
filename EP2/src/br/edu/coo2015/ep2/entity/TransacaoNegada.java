package br.edu.coo2015.ep2.entity;

public class TransacaoNegada  implements TransacaoState {

	@Override
	public void mudaEstado(Transacao transacao) {
		transacao.setState(this);
	}

}
