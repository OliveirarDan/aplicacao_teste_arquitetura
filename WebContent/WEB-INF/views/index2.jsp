<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu - Identificar Pessoa</title>
</head>
<body>
	<h3>Menu - Identificar Pessoa</h3>
	<a href="novaPessoa.jsp">Cadastre uma pessoa </a>
	<input type="submit" value="inserir nova pessoa" action="novaPessoa"/>
	<br>
	<br>
	<form action="pegaFoto64" enctype="multipart/form-data" >
		Nome <br><input type="text" name="nome" id="nome"
						maxlength="60" placeholder="nome"/><br/>
		
		<br/>
		
		<div id="capturaFoto">
				<div>
					<video id="video" width="640" height="480" autoplay></video>
					<input type="button" id="snap" title="Capturar Foto" value="Captura Imagem"> 
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
				
				<input type="submit" value="Identificar Pessoa"/>
	</form>
	
</body>
</html>