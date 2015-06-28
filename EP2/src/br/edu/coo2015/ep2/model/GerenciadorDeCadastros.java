package br.edu.coo2015.ep2.model;

import br.com.caelum.vraptor.ioc.Component;
import br.edu.coo2015.ep2.dao.PessoaDaoHibernate;
import br.edu.coo2015.ep2.entity.Pessoa;

@Component
public class GerenciadorDeCadastros {

	private PessoaDaoHibernate pessoaDaoHibernate;

	public void setPessoaDao(PessoaDaoHibernate pessoaDaoHibernate) {
		this.pessoaDaoHibernate = pessoaDaoHibernate;
	}
	
	public boolean cadastraUsuarioComum(Pessoa pessoa, String senha) throws CadastroException {
		return true;
	}
}
