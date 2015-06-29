<!doctype html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>BookShare | Login</title>
		<link rel="stylesheet" href="/WEB-INF/css/estilo.css">
		<link rel="stylesheet" href="/WEB-INF/css/estilo2.css">
	</head>
	
    
  <body id="paginasFixas">
    
  <header id="cabecalho">
  <div id="cabecalhoLogo">
        <a href="pesquisa.html">
            <img src="imgs/logo_32.png">
            <h1> BookShare </h1>
        </a>
   </div>
   </header>
		
    <section id="cadastro">
        
        <form action="autentica">
        <fieldset class="grupo">
        <legend> Login </legend>       
            <div class="campo">
            <label>NUSP: </label>
            <input type="number" name="pessoa.nusp" autofocus>
            </div>
            
            <div class="campo">
            <label>Senha: </label>
            <input type="password" name="pessoa.senha">
            </div>
            
            <label><input type="checkbox" name="vehicle">Mantenha-me conectado.</label>
        </fieldset>
            <button type="submit" class="btnAcesso" id="btnPaginaFixa">Entrar</button>
            <br><br>
        </form>
        <p> Ainda não faz parte? <a href="/WEB-INF/cadastroUsuario">Cadastre-se!</a> </p>
    </section>
</body>
</html>