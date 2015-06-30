package br.edu.coo2015.ep2.model;

import br.com.caelum.vraptor.ioc.Component;
import br.edu.coo2015.ep2.dao.TrasancaoDaoHibernate;
import br.edu.coo2015.ep2.entity.Transacao;


@Component
public class GerenciadorTransacao {
	
	private TrasancaoDaoHibernate transacaoDaoHibernate;
	

	public void setTransacaoDao(TrasancaoDaoHibernate transacaoDaoHibernate) {
		this.transacaoDaoHibernate = transacaoDaoHibernate;
	}
	
	public boolean atualizaEstado(Transacao transacao) throws CadastroException {
		Transacao estado = transacaoDaoHibernate.busca(transacao);
		if(!(estado == transacao.getState())) throw new CadastroException("Esse pedido já foi realizado!");
		
		transacaoDaoHibernate.atualizaEstado(transacao);
		
		return true;
	}
}
