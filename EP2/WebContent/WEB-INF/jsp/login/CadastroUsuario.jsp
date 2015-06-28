
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>BookShare | Cadastro de Usuário</title>
		
				<link rel="stylesheet" href="css/estilo.css">
		<link rel="stylesheet" href="css/estilo2.css">
	</head>
	
	<body id="paginasFixas">
    
  <header id="cabecalho">
  <div id="cabecalhoLogo">
    	<a href="paginaInicial.html">
        	<img src="imgs/logo_32.png">
        	<h1> BookShare </h1>
        </a>
   </div>
   </header>


	<section id="cadastro">		
		<form action="">
            <fieldset class="grupo">
            <legend> Dados da Matrícula </legend>
            
            <div class="campo">
            
				<label>NUSP: </label>
                <input type="text" name="pessoa.nusp" autofocus>             
             </div>
             <div class="campo">
				<label>Unidade: </label>
                <select name="pessoa.unidade" style="width: 36px; ">
                  <option value="">--</option>
              	</select>
           </div>
            </fieldset>
            
            
            <fieldset class="grupo">
            <legend> Dados do aluno </legend>
            <div class="campo">
				<label>Nome: </label>
                <input type="text" name="pessoa.nusp" autofocus>
            </div>
            <div class="campo">
				<label>Email: </label>
                <input type="email" name="pessoa.email" autofocus>
             </div>
             <div class="campo">
				<label>Senha: </label>
                <input type="password" name="pessoa.senha" autofocus>
             </div>
            </fieldset>
            
			<div class="campo">
            <label><input type="checkbox" name="vehicle">Li e concordo com os Termos de Uso.</label>
            </div>
			
			<form action="">
            <button type="submit" class="btnAcesso" id="btnPaginaFixa" style="width: 103px; height: 40px; ">Cadastre-me!</button>
            </form>
            
		</form>
		</section>
	</body>
</html>
