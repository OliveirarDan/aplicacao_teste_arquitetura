<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar Pessoa</title>
</head>
<body>
	<h3>Cadastrar Pessoa</h3>
	
	<br>
	<br>
	<form action="inserirPessoaFoto64" enctype="multipart/form-data" >
		Nome <br><input type="text" name="nome" id="nome"
						maxlength="60" placeholder="nome"/><br/>
		Sobrenome <br><input type="text" name="sobrenome" id="sobrenome"
						maxlength="60" placeholder="sobrenome"/><br/>
		CPF <br><input type="text" name="cpf" id="cpf"
						maxlength="60" placeholder="cpf"/><br/>
		RG/RNE <br><input type="text" name="registrosec" id="registrosec"
						maxlength="60" placeholder="RG ou RNE"/><br/>
		E-mail <br><input type="text" name="email" id="email"
						maxlength="60" placeholder="e-mail"/><br/>
		Data de Nascimento <br><input type="text" name="dataNascimento" id="dataNascimento"
						maxlength="60" placeholder="dd/mm/aaaa"/><br/>
		Genero <br><input type="text" name="genero" id="genero"
						maxlength="60" placeholder="genero"/><br/>
		Telefone Residencial <br><input type="text" name="telResidencial" id="telResidencial"
						maxlength="60" placeholder="(xx)xxxx-xxxx"/><br/>
		Telefone Secundario <br><input type="text" name="telSecundario" id="telSecundario"
						maxlength="60" placeholder="Telefone Secundario"/><br/>
		CEP <br><input type="text" name="endereco.cep" id="cep"
						maxlength="60" placeholder="xxxxx-xxx"/><br/>
		Tipo de Logradouro <br><input type="text" name="endereco.tipoDeLogradouro" id="tipoDeLogradouro"
						maxlength="60" placeholder="Rua, Avenida, etc..."/><br/>
		Endereco <br><input type="text" name="endereco.endereco" id="endereco"
						maxlength="60" placeholder="Nome da rua, avenida, etc..."/><br/>
		Numero <br><input type="text" name="endereco.numero" id="numero"
						maxlength="60" placeholder="Número"/><br/>
		Bairro <br><input type="text" name="endereco.bairro" id="bairro"
						maxlength="60" placeholder="Bairro"/><br/>
		Cidade <br><input type="text" name="endereco.cidade" id="cidade"
						maxlength="60" placeholder="Cidade"/><br/>
		Estado <br><input type="text" name="endereco.estado" id="estado"
						maxlength="60" placeholder="Estado"/><br/>
		Pais <br><input type="text" name="endereco.pais" id="pais"
						maxlength="60" placeholder="Pais"/><br/>
		
		<div class="row">
				<div>
					<video id="video" width="640" height="480" autoplay></video>
					<input type="button" id="snap" title="Capturar Foto" value="Captura Imagem"> 
					<canvas id="canvas" width="640" height="480"></canvas>
					<script type="text/javascript">
						// Grab elements, create settings, etc.
						var video = document.getElementById('video');
						// Get access to the camera!
						if (navigator.mediaDevices
								&& navigator.mediaDevices.getUserMedia) {
							// Not adding `{ audio: true }` since we only want video now
							navigator.mediaDevices.getUserMedia({
								video : true
							}).then(function(stream) {
								video.src = window.URL.createObjectURL(stream);
								video.play();
							});
						}
						// Elements for taking the snapshot
						var canvas = document.getElementById('canvas');
						var context = canvas.getContext('2d');
						var video = document.getElementById('video');
						// Trigger photo take
						document.getElementById("snap")
								.addEventListener(
										"click",
										function() {
											context.drawImage(video, 0, 0, 640,
													480);
											var input = document
													.createElement('input');
											input.type = "text";
											input.name = "file";
											input.value = canvas.toDataURL();
											document.getElementById("foto")
													.appendChild(input);
										});
					</script>
				</div>
				<!-- <div id="foto">
					<form:errors path="file" cssStyle="color:red" />
				</div> -->
			</div>
			
			<button type="submit" class="btn btn-primary" name="acao"
						value="criar">Salvar</button>
		
	</form>
</body>
</html>