<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="./resources/img/acessibilidade.jpg">
	<link rel="apple-touch-icon" sizes="76x76" href="./resources/img/acessibilidade.jpg">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Pagina de Cadastro</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./resources/css/paper-kit.css?v=2.0.1" rel="stylesheet"/>
    <link href="./resources/css/demo.css" rel="stylesheet" />
    <link href="./resources/css/style.css" rel="stylesheet" />

    <!--     Fonts and icons     -->
	<link href='http://fonts.googleapis.com/css?family=Montserrat:400,300,700' rel='stylesheet' type='text/css'>
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
	<link href="./resources/css/nucleo-icons.css" rel="stylesheet">

</head>
<body>
    <nav class="navbar navbar-toggleable-md fixed-top navbar-transparant" color-on-scroll="300">

        <div class="container">
			<div class="navbar-translate">
	            <button class="navbar-toggler navbar-toggler-right navbar-burger" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-bar"></span>
					<span class="navbar-toggler-bar"></span>
					<span class="navbar-toggler-bar"></span>
	            </button>
	            <a class="navbar-brand" href="index.html">Início</a>
			</div>
	        <div class="collapse navbar-collapse" id="navbarToggler">
	            <ul class="navbar-nav ml-auto">
					                                   
					    <li class="nav-item">
                        <a href="listarpessoa" class="nav-link"><i class=""></i> Listar Pessoas</a>
                    </li>
                    <li class="nav-item">
						<a href="novapessoa" class="btn btn-info btn-round">cadastrar pessoa</a>
					</li>
	            </ul>
	        </div>
		</div>
    </nav>
		<div class="page-header" data-parallax="true" style="background-image: url('assets/img/acessibilidade.jpg');">
	            <div class="section landing-section" >
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <h2 class="text-center">NOVO CADASTRO</h2>
                            <form action="inserirPessoa" method="post" class="contact-form">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Nome </label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text" name='nome' class="form-control" placeholder="Primeiro nome" maxlength="15">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Sobrenome</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text" name='sobrenome' class="form-control" placeholder="Sobrenome" maxlength="30">
	                                    </div>
                                    </div>
									
                                    <div class="col-md-6">
                                        <label>CPF</label>
										<div class="input-group">
											<span class="input-group-addon">
												<i class="nc-icon nc-single-02"></i>
											</span>
											<input type="number" name='cpf' class="form-control" placeholder="999.999.999-99" maxlength="11">
										</div>
                                    </div>
									
									<div class="col-md-6">
                                        <label>RG ou RNE</label>
										<div class="input-group">
											<span class="input-group-addon">
												<i class="nc-icon nc-single-02"></i>
											</span>
											<input type="text" name='registrosec' class="form-control" placeholder="RG ou RNE" >
										</div>
                                    </div>
									<div class="col-md-6">
                                        <label>E-mail</label>
										<div class="input-group">
											<span class="input-group-addon">
												<i class="nc-icon nc-single-02"></i>
											</span>
											<input type="text" name='email' class="form-control" placeholder="email@email.com" >
										</div>
                                    </div>
									
									<div class="col-md-6">
                                        <label>Data de nascimento</label>
										<div class="input-group">
											<span class="input-group-addon">
												<i class="nc-icon nc-single-02"></i>
											</span>
											<input type="text"  name='dataNascimento'class="form-control" placeholder="99/99/9999">
										</div>
                                    </div>
									
									<div class="col-md-6">
                                        <label>Genero</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text"  name='genero' class="form-control" placeholder="M ou F" maxlength="1">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Telefone Residencial</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text"  name='telResidencial' class="form-control" placeholder="(00)0000-0000" maxlength="10">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Telefone Secundario</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text"  name='telSecundario' class="form-control" placeholder="(99)99999-9999" maxlength="11">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>CEP</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text"  name='endereco.cep' class="form-control" placeholder="99999-999" maxlength="8">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>	Tipo de logradouro</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text"  name='endereco.tipoDeLogradouro' class="form-control" placeholder="Avenida, Rua, etc" maxlength="10">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Endereço</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text"  name='endereco.endereco' class="form-control" placeholder="Nome de logradouro definido acima" maxlength="30">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Número</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="number"  name='endereco.numero' class="form-control" placeholder="999" maxlength="6">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Bairro</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text"  name='endereco.bairro' class="form-control" placeholder="Digite bairro" maxlength="10">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Cidade</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text"  name='endereco.cidade' class="form-control" placeholder="Digite cidade" maxlength="15">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Estado</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text"  name='endereco.estado' class="form-control" placeholder="Ex: SP" maxlength="2"> 
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>País</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                           <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text"  name='endereco.pais' class="form-control" placeholder="Ex: Brasil" maxlength="10">
	                                    </div>
                                    </div>
										
																
                                </div>
								 
								 <hr>
								 
				<center> 
				<div id="capturaFoto">
				<div>
					<video id="video" width="640" height="480" autoplay></video> </br></br>
					<input type="button" id="snap" title="Capturar Foto" value="Captura Imagem"> </br></br>
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
					input.name = "foto";
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
                        </div>
                    </div>
                </div>
            </div>
	</div>
	<footer class="footer section-dark">
		<div class="container">
			<div class="row">
				<nav class="footer-nav">
					<ul>
						<li><a href="landing.html">Grupo 0-ALFHA USJT</a></li>
					</ul>
				</nav>
				<div class="credits ml-auto">
					<span class="copyright">
						© <script>document.write(new Date().getFullYear())</script>, by Grupo 0-ALFHA USJT
					</span>
				</div>
			</div>
		</div>
	</footer>
	
</body>

<!-- Core JS Files -->
<script src="./resources/js/jquery-3.2.1.js" type="text/javascript"></script>
<script src="./resources/js/jquery-ui-1.12.1.custom.min.js" type="text/javascript"></script>
<script src="./resources/js/tether.min.js" type="text/javascript"></script>
<script src="./resources/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Paper Kit Initialization snd functons -->
<script src="./resources/js/paper-kit.js?v=2.0.1"></script>

</html>