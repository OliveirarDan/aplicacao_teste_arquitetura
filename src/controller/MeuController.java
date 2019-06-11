package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import modelo.Medico;

@Controller
public class MeuController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	
	@RequestMapping("/medicos")
	public String medicos() {
		return "medicos";
	}
	
	@RequestMapping("/listaMedicos")
	public String inserirPessoa(Medico medico, BindingResult erros, Model model) throws IOException {

		
		
		String url = "http://localhost:8080/api/medico";
	     URL obj = new URL(url);
	     HttpURLConnection con = (HttpURLConnection) obj.openConnection();
	     // optional default is GET
	     con.setRequestMethod("GET");
	     //add request header
	     con.setRequestProperty("User-Agent", "Mozilla/5.0");
	     int responseCode = con.getResponseCode();
	     System.out.println("\nSending 'GET' request to URL : " + url);
	     System.out.println("Response Code : " + responseCode);
	     BufferedReader in = new BufferedReader(
	             new InputStreamReader(con.getInputStream()));
	     String inputLine;
	     StringBuffer response = new StringBuffer();
	     while ((inputLine = in.readLine()) != null) {
	     	response.append(inputLine);
	     }
	     in.close();
	     //print in String
	     System.out.println(response.toString());
		
	     model.addAttribute("medicos", response);

	     
		// response
		
	     Gson g = new Gson();
	     String json = g.toJson(response);

	     //ArrayList<Medico> p =  g.fromJson(response.toString(), Medico.class);
	     ObjectMapper objectMapper = new ObjectMapper();
	     System.out.println(json);
	     List<Medico> items = objectMapper.readValue(response.toString(),objectMapper.getTypeFactory().constructParametricType(List.class, Object.class));
	     
	     
	     model.addAttribute("ms", items);
		 //	
		 
		 
		 
		
		return "resultado-busca";
	}
	
//	@RequestMapping("/novapessoa")
//	public String novaPessoa() {
//		return "novaPessoa";
//	}
//
//	// teste
//	@RequestMapping("/pegaFoto64")
//	public String pegaFoto64(Pessoa pessoa, @RequestParam(required = false, name = "file") String string64,
//			Model model) {
//
//		RestTemplate rt = new RestTemplate();
//		String url = String.format("http://localhost:8080/alfapi_hibernate/pegaFoto64/%s/%s", 
//				pessoa.getNome(),
//				pessoa.getSobrenome());
//		pessoa = rt.getForObject(url, Pessoa.class);
//		model.addAttribute("pessoa", pessoa);
//		return "mostra_resultado";
//
//	}
//
//	@RequestMapping("/inserirPessoaFoto64")
//	public String criarPessoaFoto64(@Valid Pessoa pessoa,
//			@RequestParam(required = false, name = "file") String string64, Model model) {
//		RestTemplate rt = new RestTemplate();
//		String url = String.format("http://localhost:8080/alfapi_hibernate/inserirPessoaFoto64/%s/%s/%s/%s/%s/%s/%s/%s/%s/%o", 
//				pessoa.getNome(),
//				pessoa.getSobrenome(),
//				pessoa.getCpf(),
//				pessoa.getRegistrosec(),
//				pessoa.getEmail(),
//				pessoa.getDataNascimento(),
//				pessoa.getGenero(),
//				pessoa.getTelResidencial(),
//				pessoa.getTelSecundario(),
//				pessoa.getEndereco());
//		pessoa = rt.getForObject(url, Pessoa.class);
//		model.addAttribute("pessoa", pessoa);
//		return "mostra_resultado";
//	}
////	
//	@RequestMapping("/inserirPessoa")
//	public String inserirPessoa(Pessoa pessoa, BindingResult erros, Model model)
//	{
//		String url = "http://localhost:8080/alfapi_hibernate/";
//		String endpoint = "rest/pessoa";
//		HttpClient httpclient = new DefaultHttpClient();
//		try {
//			URIBuilder builder = new URIBuilder(url + endpoint);
//			URI uri = builder.build();
//			
//			// request header
//			HttpPost request = new HttpPost(uri); //alterar Http para tipo de m�todo necess�rio (post, get, put, delete)
//			request.setHeader("Content-Type", "application/json");
//						
//			// request body
//			StringEntity reqEntity = new StringEntity("{\r\n" + 
//					"    \"codAzure\": \""+ null + "\",\r\n" + 
//					"    \"fotos\": \""+ null + "\",\r\n" +  //colocar foto
//					"    \"idPessoa\": \""+ null + "\",\r\n" + 
//					"    \"nome\": \""+ pessoa.getNome() + "\",\r\n" + 
//					"    \"sobrenome\": \""+ pessoa.getSobrenome() + "\",\r\n" + 
//					"    \"cpf\": \""+ pessoa.getCpf() + "\",\r\n" + 
//					"    \"registrosec\": \""+ pessoa.getRegistrosec() + "\",\r\n" + 
//					"    \"email\": \""+ pessoa.getEmail() + "\",\r\n" + 
//					"    \"dataNascimento\": \""+ pessoa.getDataNascimento() + "\",\r\n" + 
//					"    \"genero\": \""+ pessoa.getGenero() + "\",\r\n" + 
//					"    \"telResidencial\": \""+ pessoa.getTelResidencial() + "\",\r\n" + 
//					"    \"telSecundario\": \""+ pessoa.getTelSecundario() + "\",\r\n" + 
//					"    \"endereco\": {\r\n" + 
//					"        \"idEndereco\": \""+ null + "\",\r\n" + 
//					"        \"cep\": \""+ pessoa.getEndereco().getCep() + "\",\r\n" + 
//					"        \"tipoDeLogradouro\": \""+ pessoa.getEndereco().getTipoDeLogradouro() + "\",\r\n" + 
//					"        \"endereco\": \""+ pessoa.getEndereco().getEndereco() + "\",\r\n" + 
//					"        \"numero\": \""+ pessoa.getEndereco().getNumero() + "\",\r\n" + 
//					"        \"bairro\": \""+ pessoa.getEndereco().getBairro() + "\",\r\n" + 
//					"        \"cidade\": \""+ pessoa.getEndereco().getCidade() + "\",\r\n" + 
//					"        \"estado\": \""+ pessoa.getEndereco().getEstado() + "\",\r\n" + 
//					"        \"pais\": \""+ pessoa.getEndereco().getPais() + "\"\r\n" + 
//					"    }\r\n" + 
//					"}");		
//			request.setEntity(reqEntity);
//			System.out.println(request.toString());
//			
//			// response
//			HttpResponse response = httpclient.execute(request);
//			HttpEntity entity = response.getEntity();
//			String json = EntityUtils.toString(response.getEntity());
//			
//			System.out.println(json); //s� para teste
//			
//			if (entity != null) {
//				// tratar a resposta da API
//				final ObjectNode node = new ObjectMapper().readValue(json, ObjectNode.class);
//				if (node.has("idPessoa"))
//				{
//					System.out.println(node.get("idPessoa").toString());
//				}
//			}
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//		return "index";
//	}

	
	
}
