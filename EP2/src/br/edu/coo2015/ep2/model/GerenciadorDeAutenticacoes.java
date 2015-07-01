package br.edu.coo2015.ep2.model;

import br.com.caelum.vraptor.ioc.Component;
import br.edu.coo2015.ep2.dao.PessoaDaoHibernate;
import br.edu.coo2015.ep2.entity.Pessoa;

@Component
public class GerenciadorDeAutenticacoes {

	private PessoaDaoHibernate pessoaDaoHibernate;

	public void setPessoaDao(PessoaDaoHibernate pessoaDaoHibernate) {
		this.pessoaDaoHibernate = pessoaDaoHibernate;
	}
	
	public Pessoa autenticaUsuarioComum(Pessoa pessoa) throws AutenticacaoException {
		
		//vai no banco de dados e procura pelo usu‡rio
		/*if(!"Raulzito".equalsIgnoreCase(pessoa.getUsuario())) {
			throw new AutenticacaoException("Usu‡rio " + pessoa.getUsuario() + " inexistente.");
		}*/
		Pessoa usuario = pessoaDaoHibernate.buscaUsuario(pessoa);
		if(usuario == null) throw new AutenticacaoException("Usuário com nusp " + pessoa.getNusp() + " inexistente.");
		
		// compara a senha digitada com a senha encontrada no BD
		/*if(!"Gita".equalsIgnoreCase(pessoa.getSenha())) {
			throw new AutenticacaoException("Senha incorreta.");
		}*/
		if(!usuario.getSenha().equals(pessoa.getSenha())) throw new AutenticacaoException("Senha incorreta.");
		
		// recupera outras informa�›es do usu‡rio no BD  
		/*pessoa.setNome("Raul Seixas da Silva");*/
		return usuario;
	}
}
