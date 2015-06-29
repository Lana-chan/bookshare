package br.edu.coo2015.ep2.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.edu.coo2015.ep2.entity.Pessoa;

@Component
public class PessoaDaoHibernate implements Serializable  {

	private static final long serialVersionUID = 1L;

	private final Session session;

	public PessoaDaoHibernate(Session session) {
		this.session = session;
	}

	public void adiciona(Pessoa pessoa) {
		Transaction tx = this.session.beginTransaction();
		this.session.save(pessoa);
		tx.commit();
	}
	
	public void atualiza(Pessoa pessoa) {
		Transaction tx = this.session.beginTransaction();
		this.session.update(pessoa);
		tx.commit();
	}

	public Pessoa busca(Pessoa pessoa) {
		return (Pessoa) session.createCriteria(Pessoa.class)
				.add(Restrictions.eq("nusp", pessoa.getNusp())).uniqueResult();
	}

	@SuppressWarnings("unchecked")
	public List<Pessoa> buscaPorNome(String nome) {
		return session.createCriteria(Pessoa.class)
				.add(Restrictions.eq("nome", nome)).list();
	}

	public void remove(Pessoa pessoa) {
		Transaction tx = session.beginTransaction();
		session.delete(busca(pessoa));
		tx.commit();
	}

	@SuppressWarnings("unchecked")
	public List<Pessoa> listaTodos() {
		return session.createCriteria(Pessoa.class).list();
	}
}
