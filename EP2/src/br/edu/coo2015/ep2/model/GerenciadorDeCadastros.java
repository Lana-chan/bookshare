package br.edu.coo2015.ep2.model;

import br.com.caelum.vraptor.ioc.Component;
import br.edu.coo2015.ep2.dao.PessoaDaoHibernate;
import br.edu.coo2015.ep2.entity.Pessoa;
import br.edu.coo2015.ep2.entity.Unidade;

@Component
public class GerenciadorDeCadastros {

	private PessoaDaoHibernate pessoaDaoHibernate;

	public void setPessoaDao(PessoaDaoHibernate pessoaDaoHibernate) {
		this.pessoaDaoHibernate = pessoaDaoHibernate;
	}
	
	public boolean cadastraUsuarioComum(Pessoa pessoa, String senha) throws CadastroException {
		Pessoa usuario = pessoaDaoHibernate.busca(pessoa);
		if(!(usuario == null)) throw new CadastroException("Usuário com nusp " + pessoa.getNusp() + " já existe.");
		if(!pessoa.getSenha().equals(senha)) throw new CadastroException("Senha digitada não é igual em ambos os campos.");
		
		pessoaDaoHibernate.adiciona(pessoa);
		
		return true;
	}
	
	
	public boolean atualizaUsuario(Pessoa pessoa, String nome, String email, String senha) throws CadastroException {
		Pessoa usuario = pessoaDaoHibernate.busca(pessoa);
		if(!(usuario == null)) throw new CadastroException("Usuário com nusp " + pessoa.getNusp() + " já existe.");
		if(nome == null) throw new CadastroException("Não deixe campos em branco!");
		if(!pessoa.getSenha().equals(senha)) throw new CadastroException("Senha digitada não é igual em ambos os campos.");
		
		pessoaDaoHibernate.atualiza(pessoa, nome, email, senha);
		
		return true;
	}
}
