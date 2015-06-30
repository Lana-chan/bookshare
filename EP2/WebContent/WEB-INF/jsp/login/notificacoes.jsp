<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BookShare | Notifições</title>

	<link rel="stylesheet" href="../content/css/estilo.css">

</head>

<body>

<jsp:include page='cabecalho.jsp'/>

<!-----------Corpo------------------->
<header id="cabecalhoSecao">
	<h2> Notificações </h2>
</header>

<section id="notificacoes">

   <c:choose>
		<c:when test="${empty transacoesList}">
			<h4>Não há nenhuma notificação pra você.</h4>
		</c:when>
		<c:otherwise>
			<c:forEach var="transacoes" items="${transacoesList}">
				<c:if test="${true transacoes.recebida}">
					<div class="solicitacaoRecebida">
						<p>@{$transacoes.solicitante} solicita @{$transacoes.exemplar}</p>
						<blockquote>${transacoes.mensagem}</blockquote>
					</div>
				</c:if>

				<c:if test="${true transacoes.negada}">
					<div class="solicitacaoNegada">
						<p>@{$transacoes.solicitado} negou
							@{$transacoes.exemplar.titulo}</p>
					</div>
				</c:if>

				<c:if test="${true transacoes.confirmada}">
					<div class="transacaoConfirmada">
						<p>A transação de ${transacoes.exemplar.titulo} foi confirmada
							por @${transacoes.exemplar.nome}.</p>
					</div>
				</c:if>

				<c:if test="${true transacoes.cancelada}">
					<div class="transaçãoCancelada">
						<p>A transação de ${transacoes.exemplar.titulo} foi cancelada
							por @${transacoes.exemplar.nome}.</p>
					</div>
				</c:if>
			</c:forEach>
		</c:otherwise>
	</c:choose>
    
</section>

</body>

</html>