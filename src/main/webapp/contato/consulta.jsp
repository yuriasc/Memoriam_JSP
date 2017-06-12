<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Memoriam</title>
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/memoriam.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>
				Memori<i class="glyphicon glyphicon-phone"></i>m.
			</h2>
			<table>

				<tr align="left">
					<th></th>
					<th style="width: 30%">Nome</th>
					<th>Telefone</th>
					<th>Operadora</th>
				</tr>
				<c:forEach var="contato" items="${contatos}">
					<tr align="left">
						<td><input type="checkbox" /></td>
						<td><a href="controller.do?op=edtctt&id=${contato.id}">${contato.nome}</a></td>
						<td>${contato.fone}</td>
						<td>${contato.operadora.nome}</td>
					</tr>
				</c:forEach>
			</table>
			<a href="contato/cadastro.jsp" class="form-control btn btn-primary">Novo</a>
		</div>
	</div>
</body>
</html>
