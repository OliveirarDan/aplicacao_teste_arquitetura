<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="./resources/img/acessibilidade.jpg">
	<link rel="apple-touch-icon" sizes="76x76" href="./resources/img/acessibilidade.jpg">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Vizualizar Pessoa</title>

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
                        <a href="listarpessoa.html" class="nav-link"><i class=""></i> Listar Pessoas</a>
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
                            <h2 class="text-center">VISUALIZAR PESSOA</h2>
                            <form action="atualizarCardastro" method="put" class="contact-form">
                            	<input type="hidden"  name='idPessoa' class="form-control" placeholder="CEP" value="${pessoa.idPessoa}">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Nome: </label>
										<div class="input-group">
	                                        <input type="text" name='nome' class="form-control" placeholder="nome" value="${pessoa.nome}" readonly="true" >
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Sobrenome</label>
										<div class="input-group">
	                                        <input type="text" name='sobrenome' class="form-control" placeholder="sobrenome" value="${pessoa.sobrenome}" readonly="true" >
	                                    </div>
                                    </div>
									
                                    <div class="col-md-6">
                                        <label>Cpf</label>
										<div class="input-group">
											<input type="text" name='cpf' class="form-control" placeholder="cpf" value="${pessoa.cpf}" readonly="true">
										</div>
                                    </div>
									
									<div class="col-md-6">
                                        <label>RG ou RE</label>
										<div class="input-group">
											<input type="text" name='registrosec' class="form-control" placeholder="rg ou re" value="${pessoa.registrosec}" readonly="true">
										</div>
                                    </div>
									<div class="col-md-6">
                                        <label>Email</label>
										<div class="input-group">
											<input type="text" name='email' class="form-control" placeholder="email" value="${pessoa.email}" readonly="true">
										</div>
                                    </div>
									
									<div class="col-md-6">
                                        <label>Data de nascimento</label>
										<div class="input-group">
											<input type="text"  name='dataNascimento'class="form-control" placeholder=" data de nascimento"  value='${pessoa.dataNascimento }' readonly="true">
										</div>
                                    </div>
									
									<div class="col-md-6">
                                        <label>Genero</label>
										<div class="input-group">
	                                        <input type="text"  name='genero' class="form-control" placeholder="genero" value="${pessoa.genero }" readonly="true">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Telefone Residencial</label>
										<div class="input-group">
	                                        <input type="text"  name='telResidencial' class="form-control" placeholder="telefone residencial" value="${pessoa.telResidencial}" readonly="true">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Telefone Secundario</label>
										<div class="input-group">
	                                        <input type="text"  name='telSecundario' class="form-control" placeholder="telefone secundario" value="${pessoa.telSecundario}" readonly="true">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>CEP</label>
										<div class="input-group">
	                                        <input type="hidden"  name='endereco.idEndereco' class="form-control" placeholder="CEP" value="${pessoa.endereco.idEndereco}">
	                                        <input type="text"  name='endereco.cep' class="form-control" placeholder="CEP" value="${pessoa.endereco.cep}" readonly="true">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>	Tipo de longradouro</label>
										<div class="input-group">
	                                        <input type="text"  name='endereco.tipoDeLogradouro' class="form-control" placeholder="nome" value="${pessoa.endereco.tipoDeLogradouro}" readonly="true">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Endereço</label>
										<div class="input-group">
	                                        <input type="text"  name='endereco.endereco' class="form-control" placeholder="endereço" value="${pessoa.endereco.endereco}" readonly="true">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Numero</label>
										<div class="input-group">
	                                        <input type="text"  name='endereco.numero' class="form-control" placeholder="numero" value="${pessoa.endereco.numero}" readonly="true">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Bairro</label>
										<div class="input-group">
	                                        <input type="text"  name='endereco.bairro' class="form-control" placeholder="bairro" value="${pessoa.endereco.bairro}" readonly="true">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Cidade</label>
										<div class="input-group">
	                                        <input type="text"  name='endereco.cidade' class="form-control" placeholder="cidade" value="${pessoa.endereco.cidade}" readonly="true">
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Estado</label>
										<div class="input-group">
	                                        <input type="text"  name='endereco.estado' class="form-control" placeholder="estado" value="${pessoa.endereco.estado}" readonly="true"> 
	                                    </div>
                                    </div>
									<div class="col-md-6">
                                        <label>Pais</label>
										<div class="input-group">
	                                        <input type="text"  name='endereco.pais' class="form-control" placeholder="pais" value="${pessoa.endereco.pais}" readonly="true">
	                                    </div>
                                    </div>
										
																
                                </div>
								 
								 <hr>
								 
					
							
                                
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