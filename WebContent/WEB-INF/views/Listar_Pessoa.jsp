<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="pt">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="./resources/img/acessibilidade.jpg">
	<link rel="apple-touch-icon" sizes="76x76" href="./resources/img/acessibilidade.jpg">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Listar Pessoa</title>

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
					    <li class="nav-item"><a href="listarpessoa" class="nav-link"><i class=""></i> Listar Pessoas</a></li>
                   		<li class="nav-item"><a href="novapessoa" target="" class="btn btn-info btn-round">cadastrar pessoa</a></li>
				</ul>
	        </div>
		</div>
    </nav>
     <!-- Modal -->
            <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="modalLabel">Excluir Pessoa</h4>
                        </div>
                        <div class="modal-body">
                            Deseja realmente excluir esta pessoa?
                        </div>
                        <div class="modal-footer">
                            <form action="excluirPessoa" method="delete">
                                <input type="hidden" name="idPessoa" id="id_excluir" />
                                <button type="submit" class="btn btn-primary" name="acao" value="Excluir">Sim</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.modal -->
            <!-- Barra superior com os menus de navegação -->
		
            <!-- Container Principal -->
            <div id="main" class="container" style="margin-top:100px">
                <form action="listar_filmes" method="post">
                    <div id="top" class="row">
                        <div >
                            <h2>Pessoas Cadastradas</h2>
                        </div>

                        <!-- <div class="col-md-6">
                            <div class="input-group h2">
                                <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar (deixe vazio para trazer todos)">
                                <span class="input-group-btn">
                <button class="btn btn-primary" type="submit" name="acao" value="listar">
                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                                </span>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <a href="nova_pessoa" class="btn btn-primary pull-right h2">Cadastrar Pessoa</a>
                        </div> -->
                    </div>
                    <!-- /#top -->
                </form>
                <hr />
                <c:if test="${not empty pessoas}">
                <div id="list" class="row">
                    <div class="table-responsive col-md-12">
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>Sobrenome</th>
                                    <th>Email</th>
                                    <th class="actions">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
          					<c:forEach var="pessoa" items="${pessoas}">
                                       <tr>
                                            <td>
                                               ${pessoa.idPessoa}
                                            </td>
                                            <td>
                                                ${pessoa.nome}
                                            </td>
                                            <td>
                                                ${pessoa.sobrenome}
                                            </td>
                                            <td>
                                                ${pessoa.email}
                                            </td>
                                            <td class="actions">
                                                <a class="btn btn-success btn-xs" href="visualizar_pessoa?id=${pessoa.idPessoa}">Visualizar</a>
                                          	    <a class="btn btn-warning btn-xs" href="editar_pessoa?id=${pessoa.idPessoa}">Editar</a>
                                                <button id="btn${pessoa.idPessoa}%>" type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#delete-modal" data-filme="${pessoa.idPessoa}">Excluir</button>
                                            </td>
                                        </tr>
                            </c:forEach>

                            </tbody>
                        </table>

                    </div>
                </div>
                <!-- /#list -->

                </c:if>
                <!-- /#bottom -->
            </div>
            <!-- /#main -->
            <script src="./resources/js/jquery-3.2.1.js" type="text/javascript"></script>
			<script src="./resources/js/jquery-ui-1.12.1.custom.min.js" type="text/javascript"></script>
			<script src="./resources/js/tether.min.js" type="text/javascript"></script>
			<script src="./resources/js/bootstrap.min.js" type="text/javascript"></script>
            <script type="text/javascript">
                $("#delete-modal").on('show.bs.modal', function(event) {
                    var button = $(event.relatedTarget); //botao que disparou a modal
                    var recipient = button.data('filme');
                    $("#id_excluir").val(recipient);
                });
            </script>
</body>
</html>