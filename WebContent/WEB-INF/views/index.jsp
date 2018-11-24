<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<spring:url value="/resources/img/apple-icon.png" var="icon" />
<link href="${icon}" rel="icon" />

<spring:url value="/resources/img/favicon.ico" var="icon" />
<link href="${icon}" rel="apple-touch-icon" />

<title>API - Grupo 0 - Alpha</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<spring:url value="/resources/css/demo.css" var="stylecss" />
<link href="${stylecss}" rel="stylesheet" />

<spring:url value="/resources/css/bootstrap.min.css" var="stylecss" />
<link href="${stylecss}" rel="stylesheet" />

<spring:url value="/resources/css/paper-kit.css?v=2.0.1" var="stylecss" />
<link href="${stylecss}" rel="stylesheet" />

<spring:url value="/resources/css/nucleo-icons.css" var="stylecss" />
<link href="${stylecss}" rel="stylesheet" />



<!--     Fonts and icons     -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,300,700' rel='stylesheet' type='text/css'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">

</head>

<body>
	<nav class="navbar navbar-toggleable-md fixed-top navbar-transparent" color-on-scroll="300">

		<div class="container">
			<div class="navbar-translate">
				<button class="navbar-toggler navbar-toggler-right navbar-burger"
					type="button" data-toggle="collapse" data-target="#navbarToggler"
					aria-controls="navbarTogglerDemo02" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-bar"></span> 
					<span class="navbar-toggler-bar"></span> 
					<span class="navbar-toggler-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">Início</a>
			</div>
			<div class="collapse navbar-collapse" id="navbarToggler">
				<ul class="navbar-nav ml-auto">

					<li class="nav-item"><a href="listarpessoa" class="nav-link"><i class=""></i> Listar Pessoas</a></li>
					<li class="nav-item"><a href="novapessoa" target="" class="btn btn-info btn-round">cadastrar pessoa</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="wrapper">
		<div class="page-header section-dark"
			style="background-image: url('./resources/img/antoine-barres.jpg')">
			<div class="filter"></div>
			<div class="content-center">
				<div class="container">
					<div class="title-brand">
						<div class="fog-low">
							<img src="/resources/img/fog-low.png" alt="">

						</div>
						<div class="fog-low right">
							<img src="/resources/img/fog-low.png" alt="">
						</div>
					</div>
				</div>
			</div>
			<div class="moving-clouds"
				style="background-image: url('/resources/img/clouds.png');"></div>
			<h6 class="">
				<a href="" target="_"> <img src="" class="">
				</a>
			</h6>
		</div>
		
		<form action="identificaPessoa" method="post" class="contact-form">
		<center>
           <div id="capturaFoto">
				<div>
					<video id="video" width="640" height="480" autoplay></video><br></br>
					<input type="button" id="snap" title="Capturar Foto" value="Captura Imagem"><br></br> 
					<canvas id="canvas" width="640" height="480"></canvas>
					<script type="text/javascript">			
				// Grab elements, create settings, etc.
				var video = document.getElementById('video');
				// Get access to the camera!
				if(navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
				    // Not adding `{ audio: true }` since we only want video now
				    navigator.mediaDevices.getUserMedia({ video: true }).then(function(stream) {
				        video.src = window.URL.createObjectURL(stream);
				        video.play();
				    });
				}
				// Elements for taking the snapshot
				var canvas = document.getElementById('canvas');
				var context = canvas.getContext('2d');
				var video = document.getElementById('video');
				// Trigger photo take
				document.getElementById("snap").addEventListener("click", function() {
					context.drawImage(video, 0, 0, 640, 480);
					var input = document.createElement('input');
					input.type = "text";
					input.name = "file";
					input.value = canvas.toDataURL();
					document.getElementById("foto").appendChild(input);
				});
				</script>
				</div>
				<div id="foto">
					
				</div>
               
		</div>
		
			<div class="row">
                <div class="col-md-4 offset-md-4">
                    <button type="submit" class="btn btn-outline-info btn-round">Salvar</button>
				    <button type="button" class="btn btn-outline-danger btn-round">Cancelar</button>
                </div>
            </div>
		</center>
		</form>
		<div class="main">
			<div class="section section-buttons">
				<div class="container">
					<div class=""></div>
					<div id="buttons">
						<div class="tim-title"></div>
						<footer class="footer">
							<div class="container">
								<div class="row">
									<div class="credits ml-auto">
										<span class=""> </span>
									</div>
								</div>
							</div>
						</footer>
					</div>
				</div>
			</div>
		</div>
</body>

<!-- Core JS Files -->
<spring:url value="/resources/js/jquery-3.2.1.js" var="javascript" />
<link href="${javascript}" rel="text/javascript" />

<spring:url value="/resources/js/jquery-ui-1.12.1.custom.min.js"
	var="javascript" />
<link href="${javascript}" rel="text/javascript" />

<spring:url value="/resources/js/tether.min.js" var="javascript" />
<link href="${javascript}" rel="text/javascript" />


<spring:url value="/resources/js/bootstrap.min.js" var="javascript" />
<link href="${javascript}" rel="text/javascript" />


<!-- Switches -->
<spring:url value="/resources/js/bootstrap-switch.min.js"
	var="javascript" />
<link href="${javascript}" rel="text/javascript" />

<!--  Plugins for Slider -->
<spring:url value="/resources/js/nouislider.js" var="javascript" />
<link href="${javascript}" rel="text/javascript" />

<!--  Plugins for DateTimePicker -->
<spring:url value="/resources/js/moment.min.js" var="javascript" />
<link href="${javascript}" rel="text/javascript" />

<spring:url value="/resources/js/bootstrap-datetimepicker.min.js"
	var="javascript" />
<link href="${javascript}" rel="text/javascript" />

<!--  Paper Kit Initialization and functons -->
<spring:url value="/resources/js/paper-kit.js?v=2.0.1" var="javascript" />
<link href="${javascript}" rel="text/javascript" />

</html>
