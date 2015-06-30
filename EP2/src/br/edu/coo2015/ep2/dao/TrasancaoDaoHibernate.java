package br.edu.coo2015.ep2.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.edu.coo2015.ep2.entity.Transacao;


@Component
public class TrasancaoDaoHibernate implements Serializable {

	private static final long serialVersionUID = 1L;

	private final Session session;

	public TrasancaoDaoHibernate(Session session) {
		this.session = session;
	}

	//cria nova Transação
	public void adiciona(Transacao t) {
		Transaction tx = this.session.beginTransaction();
		this.session.save(t);
		tx.commit();
	}

	//atualiza o estado da transação
	public void atualizaEstado(Transacao t){
		Transaction tx = this.session.beginTransaction();
		this.session.update(t);
		tx.commit();
	}
	
	//retorna o estado da transação de um exemplar
	public Transacao busca(Transacao estado) {
		return (Transacao) session.createCriteria(Transacao.class)
				.add(Restrictions.eq("exemplar", estado.getExemplar())).uniqueResult();
	}

	//lista transacoes de usuario
	@SuppressWarnings("unchecked")
	public List<Transacao> buscaTransacoesUsuario(int numUsp) {
		return session.createCriteria(Transacao.class)
				.add(Restrictions.eq("exemplar.getDono()", numUsp)).list();
	}
	
	//lista transacoes de exemplar
	@SuppressWarnings("unchecked")
	public List<Transacao> buscaTransacoesExemplar(int exemplar) {
		return session.createCriteria(Transacao.class)
				.add(Restrictions.eq("exemplar", exemplar)).list();
	}

	
}
