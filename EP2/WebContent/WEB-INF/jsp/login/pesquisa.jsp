<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta charset="utf-8">
<title>BookShare | Pesquisa</title>
	
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
          <input type="radio" value="exemplar.titulo"> Título
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
   <c:choose>
		<c:when test="${empty transacoesList}">
			<h5>Não há resultados para essa pesquisa</h5>
			<button type="button" class="btnAcesso" id="btnPaginaNormal">Cadastrar Livro</button>			
		</c:when>
	<c:otherwise>
		<c:forEach var="exemplar" items="${ExemplarList}">
			<c:if test="${true transacoes.recebida}">
				<pp class="tab-hello">
					<div id="tab1">
						<table class="tabelaColecao">
							<tr>
								<!--1 coluna-->
								<td>
								    <z4><u>${exemplar.titulo}</u></z4> <br>
									<z3><i>${exemplar.autor}</i></z3> <br>
									<z>Proprietário: @${exemlar.dono}</z><br>
									<z>Unidade: @{exemplar.dono.unidade}</z>
								</td>

								<!--2 coluna: botoes de ação-->
								<td class="colunaBotoesAcao">
									<button type="submit" class="btnAcesso" id="btnPaginaNormal"
									action="transacao.solicita">Solicitar Livro</button>
								</td>
							</tr>
						</table>
					</div>
					</pp>
				</c:if>
			</c:forEach>
		</c:otherwise>
	</c:choose> </section>



</body>
</html>
