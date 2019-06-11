<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="pt">

<head>
<!-- Include de todos os imports e meta tags -->

<title>ClickMed</title>
</head>

<body>
	<!--================ Header Area =================-->
<%-- 	${medicos}	 --%>
	
	
	
	
	<div class="row">
				<c:forEach items="${ms}" var="m">
					<form class="contact_form" action="selecionaMedico" method="get"
						id="selecionaMedico">
						<div class="wrapper col-md-4 col-4">
							<div class="card radius shadowDepth1">
								<div class="row card-line card__padding">
									
									<div class="card-head-title">
										Nome: ${m.nome}  |  Sobrenome:  ${m.sobrenome}  |  CRM: ${m.crm}
										
										<br>
										<hr>
										<br>
									</div>
									
								</div>
<!-- 								<div class="card__content card-line card__padding"> -->
<!-- 									<div class="row card__meta"> -->
<!-- 										<div class="col-md-12 col-12"> -->
<!-- 											<a class="card-title">Especialidade:</a> -->
<%-- 											<c:forEach items="${m.especialidades}" var="e"> --%>
<%-- 												<a>${e.nome}</a> --%>
<!-- 												<br> -->
<%-- 											</c:forEach> --%>
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 									<div class="row"> -->
<!-- 										<div class="col-md-2 col-2"> -->
<!-- 											<i class="fa-card fa-map-marker"></i> -->
<!-- 										</div> -->
<!-- 										<div class="col-md-10 col-10"> -->
<%-- 											<c:forEach items="${m.clinicas}" var="c"> --%>
<%-- 												<a>${c.rua}, ${c.numero} - ${c.cidade}/${c.estado}</a> --%>
<!-- 												<br> -->
<%-- 											</c:forEach> --%>
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 									<div class="row"> -->
<!-- 										<div class="col-md-12 col-12"> -->
<!-- 											<a class="card-title">Telefone:</a><br> -->
<%-- 												<a>${m.telefone1}</a> --%>
<!-- 												<br> -->
<%-- 												<a>${m.telefone2}</a> --%>
<!-- 												<br> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->

<!-- 								<div class="card__content card-line card__padding"> -->
<%-- 									<a class="card-title">Nota: ${avaliacao}</a><br> --%>
<!-- 								</div> -->
<!-- 								<button class="card-button" type="submit" name="selecionaMedico" -->
<!-- 									value="selecionaMedico">Visualizar</button> -->
							</div>
						</div>
					</form>
				</c:forEach>
			</div>
	
	
</body>
</html>