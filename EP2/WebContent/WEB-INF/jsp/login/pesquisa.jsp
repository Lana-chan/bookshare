<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta charset="utf-8">
<title>BookShare | Notificações</title>
	
	<link rel="stylesheet" href="../content/css/estilo.css">

</head>

<body>

<jsp:include page='cabecalho.jsp'/>


<!-----------Corpo------------------->

<section id="guiaAcesso">
	<div id="Pesquisa">
      <input type="search" size="50">
      <button type="submit" class="btnAcesso" id="btnPaginaNormal"><img src="imgs/pesquisa_32.png" alt="Pesquisar"></button>
        <z2><br> Buscar por: 
          <input type="radio" value="exemplar.titulo"> 
          Título
        <input type="radio" value="exemplar.autor"> Autor
        <input type="radio" value="exemplar.ISBN"> ISBN
    	<input type="checkbox" value="exemplar.unidade"> Pesquisar somente na minha unidade.
    </z2>
</div>
</section>

<section id="resultados">
	<div>
	<h5>Resultados encontrados para "Física":</h5>
    </div>
</section>

<section>
		<div class="campo">
            
            <div>
        		<z4><u>Memórias de um Sargento de Milícias</u></z4>
            	<z3><br><i>Manuel Antônio de Almeida</i></z3>
            	<z><br>Proprietário: @Usuario</z>
            	<z><br>Unidade: @Unidade </z>
        	</div>
			<div>
    			<button type="submit" class="btnAcesso" id="btnPaginaNormal">Incluir livro</button>
    		</div>
        </div>
        </section>



</body>
</html>
