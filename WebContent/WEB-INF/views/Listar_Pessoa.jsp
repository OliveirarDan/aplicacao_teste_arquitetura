<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html>
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
                            <h4 class="modal-title" id="modalLabel">Excluir Filme</h4>
                        </div>
                        <div class="modal-body">
                            Deseja realmente excluir este filme?
                        </div>
                        <div class="modal-footer">
                            <form action="excluir_filme" method="post">
                                <input type="hidden" name="id" id="id_excluir" />
                                <button type="submit" class="btn btn-primary" name="acao" value="Excluir">Sim</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.modal -->
            <!-- Barra superior com os menus de navegação -->
			<c:import url="Menu.jsp"/>
            <!-- Container Principal -->
            <div id="main" class="container">
                <form action="listar_filmes" method="post">
                    <div id="top" class="row">
                        <br></br><br></br>
                        <div class="col-md-3">
                        <br></br><br>
                            <h3>Pessoas Cadastradas</h3>
                        </div>

                        <div class="col-md-6">
                            <div class="input-group h2">
                                <input name="chave" class="form-control" id="search" type="text" placeholder="Pesquisar Filmes (deixe vazio para trazer todos)">
                                <span class="input-group-btn">
                <button class="btn btn-primary" type="submit" name="acao" value="listar">
                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                                </span>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <a href="novo_filme" class="btn btn-primary pull-right h2">Novo Filme</a>
                        </div>
                    </div>
                    <!-- /#top -->
                </form>
                <hr />
                <c:if test="${not empty lista}">
                <div id="list" class="row">

                    <div class="table-responsive col-md-12">
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Título</th>
                                    <th>Direção</th>
                                    <th>Lançamento</th>
                                    <th>Gênero</th>
                                    <th class="actions">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
          					<c:forEach var="filme" items="${lista}">
                                       <tr>
                                            <td>
                                               ${filme.id }
                                            </td>
                                            <td>
                                                ${filme.titulo }
                                            </td>
                                            <td>
                                                ${filme.diretor }
                                            </td>
                                            <td>
                                                <fmt:formatDate value="${filme.dataLancamento}" pattern="dd/MM/yyyy"/>
                                            </td>
                                            <td>
                                                ${filme.genero.nome}
                                            </td>
                                            <td class="actions">
                                                <a class="btn btn-success btn-xs" href="visualizar_filme?id=${filme.id}">Visualizar</a>
                                                <a class="btn btn-warning btn-xs" href="alterar_filme?id=${filme.id}">Editar</a>
                                                <button id="btn${filme.id }%>" type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#delete-modal" data-filme="${filme.id }">Excluir</button>
                                            </td>
                                        </tr>
                            </c:forEach>

                            </tbody>
                        </table>

                    </div>
                </div>
                <!-- /#list -->

                <div id="bottom" class="row">
                    <div class="col-md-12">
                        <!-- paginação ainda não foi implementada -->
                        <ul class="pagination">
                            <li class="disabled"><a>&lt; Anterior</a>
                            </li>
                            <li class="disabled"><a>1</a>
                            </li>
                            <li><a href="#">2</a>
                            </li>
                            <li><a href="#">3</a>
                            </li>
                            <li class="next"><a href="#" rel="next">Próximo &gt;</a>
                            </li>
                        </ul>
                        <!-- /.pagination -->
                    </div>
                </div>
                </c:if>
                <!-- /#bottom -->
            </div>
            <!-- /#main -->
            <script src="js/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script type="text/javascript">
                $("#delete-modal").on('show.bs.modal', function(event) {
                    var button = $(event.relatedTarget); //botao que disparou a modal
                    var recipient = button.data('filme');
                    $("#id_excluir").val(recipient);
                });
            </script>

</body>
</html>