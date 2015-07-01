package br.edu.coo2015.ep2.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.edu.coo2015.ep2.dao.LivroDaoHibernate;
import br.edu.coo2015.ep2.dao.PessoaDaoHibernate;
import br.edu.coo2015.ep2.entity.Pessoa;
import br.edu.coo2015.ep2.entity.Unidade;
import br.edu.coo2015.ep2.model.AutenticacaoException;
import br.edu.coo2015.ep2.model.CadastroException;
import br.edu.coo2015.ep2.model.BibliotecaCompartilhadaFacade;
import br.edu.coo2015.ep2.model.GerenciadorDeAutenticacoes;
import br.edu.coo2015.ep2.model.GerenciadorDeCadastros;
import br.edu.coo2015.ep2.security.RestritoUsuarioCadastrado;

// 
/**
 * 
 * Este Ž um exemplo de como utilizar o VRaptor no EP2
 * 
 * Framework VRaptor para controlador web: http://www.vraptor.org/ A vers‹o mais
 * recente do vraptor Ž a 4, mas estamos utilizando o VRaptor 3
 * 
 * Material para estudo: http://www.caelum.com.br/apostila-vraptor-hibernate/
 * 
 */

@Resource
public class LoginController {

	private final Validator validator;
	private final Result result;

	private final UsuarioSession usuarioSession;

	private final GerenciadorDeAutenticacoes gerenciadorDeAutenticacoes;
	private final GerenciadorDeCadastros gerenciadorDeCadastros;

	private final BibliotecaCompartilhadaFacade bibliotecaCompartilhadaFacade;

	private final LivroDaoHibernate livroDaoHibernate;
	private final PessoaDaoHibernate pessoaDaoHibernate;

	public LoginController(Validator validator, Result result,
			LivroDaoHibernate livroDaoHibernate, PessoaDaoHibernate pessoaDaoHibernate, 
			UsuarioSession usuarioSession,
			GerenciadorDeAutenticacoes gerenciadorDeAutenticacoes,
			GerenciadorDeCadastros gerenciadorDeCadastros,
			BibliotecaCompartilhadaFacade bibliotecaCompartilhadaFacade) {
		this.validator = validator;
		this.result = result;
		this.usuarioSession = usuarioSession;
		this.gerenciadorDeAutenticacoes = gerenciadorDeAutenticacoes;
		this.gerenciadorDeCadastros = gerenciadorDeCadastros;
		this.bibliotecaCompartilhadaFacade = bibliotecaCompartilhadaFacade;
		this.livroDaoHibernate = livroDaoHibernate;
		this.pessoaDaoHibernate = pessoaDaoHibernate;
		bibliotecaCompartilhadaFacade.setLivroDao(this.livroDaoHibernate);
		gerenciadorDeAutenticacoes.setPessoaDao(this.pessoaDaoHibernate);
		gerenciadorDeCadastros.setPessoaDao(this.pessoaDaoHibernate);
	}
	
	public void errorPage() {
	}
	
	public void mostraMensagem(String msg) {
		result.include("msg", msg);
	}

	public void informaUsuarioSenha() {
		if(usuarioSession.estaLogado()) { usuarioSession.logout(); }
	}
	
	public void cadastroUsuario() {
		if(usuarioSession.estaLogado()) { usuarioSession.logout(); }
		result.include("unidades", Arrays.asList(Unidade.values()));
	}	

	public void autentica(@Valid Pessoa pessoa) {
		validator.onErrorUsePageOf(LoginController.class).errorPage();
		try {
			gerenciadorDeAutenticacoes.autenticaUsuarioComum(pessoa);
			usuarioSession.login(pessoa);
			result.redirectTo(this).logadoComSucesso();
		} catch (AutenticacaoException e) {
			// No redirectTo, o request Ž perdido (Ž iniciado um novo)
			// No forwardTo o request Ž passado para frente
			usuarioSession.logout();
			result.redirectTo(this).problemaNaAutenticacao(e.getMessage());
		}
	}
	
	public void cadastra(@NotNull @Valid Pessoa pessoa, @NotNull String senha) {
		validator.onErrorUsePageOf(LoginController.class).errorPage();
		try {
			gerenciadorDeCadastros.cadastraUsuarioComum(pessoa, senha);
			usuarioSession.login(pessoa);
			result.redirectTo(this).logadoComSucesso();
		} catch(CadastroException e) {
			usuarioSession.logout();
			result.redirectTo(this).problemaNaAutenticacao(e.getMessage());
		}
	}
	
	public void atualiza(@NotNull @Valid Pessoa pessoa, String nome, String email, String senha) {
		validator.onErrorUsePageOf(LoginController.class).errorPage();
		try {
			gerenciadorDeCadastros.atualizaUsuario(pessoa, nome, email, senha);
			result.redirectTo(this).configuracoes();
		} catch(CadastroException e) {
			result.redirectTo(this).problemaNaAutenticacao(e.getMessage());
		}
	}

	public void problemaNaAutenticacao(String mensagem) {
		result.include("mensagem", mensagem);
	}

	@RestritoUsuarioCadastrado
	public void logadoComSucesso() {
		result.include("nome", usuarioSession.getUsuarioLogado().getNome());
	}
	
	@RestritoUsuarioCadastrado
	public void listaLivros() {
		result.include("livros",
				bibliotecaCompartilhadaFacade.listaTodosLivros());
	}
	
	@RestritoUsuarioCadastrado
	public void minhaColecao() {
		result.include("exemplares",
				usuarioSession.getUsuarioLogado().getExemplares());
	}
	
	@RestritoUsuarioCadastrado
	public void configuracoes() {
		result.include("pessoa",
				usuarioSession.getUsuarioLogado());
	}
	
	public void alteraEstado(){
		
	}
}
