<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/memoriam.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Consulta Operadoras</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>
				Memori<i class="glyphicon glyphicon-phone"></i>m
			</h2>
			
			<nav class="navbar navbar-default">
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav">
			      </ul>
			     </div>
			</nav>
			<table class="table table-striped">
				<tr align="left">
					<th></th>
					<th>Nome</th>
					<th>Prefixo</th>
				</tr>
				<form action="${pageContext.request.contextPath}/controller.do?op=deleteope" id="form_del" method="POST">
				<c:forEach var="operadora" items="${operadoras}">
					<tr align="left">
						<td><input class="selections" name="del_selected" type="checkbox" value="${operadora.id}"/></td>
						<td><a href="controller.do?op=edtope&id=${operadora.id}">${operadora.nome}</a></td>
						<td>${operadora.prefixo}</td>
					</tr>
				</c:forEach>
				</form>
			</table>
			<a class="form-control btn btn-danger btn_delete" style="display: none;">Apagar selecionados</a>
			<a class="form-control btn btn-primary" href="${pageContext.request.contextPath}">Voltar</a>
		</div>
	</div>
	<form id="form_oculto" action="" style="display: none;"></form>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script>
	$(document).ready(
			function() {

				$(".selections").change(function() {
					if ($('.selections:checkbox:checked').length > 0) {
						$(".btn_delete").show();
						$(".btn_novo").hide();
					} else {
						$(".btn_delete").hide();
						$(".btn_novo").show();
					}

				});

				$(".btn_delete").click(
						function() {
							selecionados = $('.selections:checkbox:checked');
							if (confirm("Deseja realmente apagar "
									+ selecionados.length + " operadora(s)?")) {
								$("#form_del").submit();
							}
						});

			});
</script>
</html>