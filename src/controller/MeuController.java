	package controller;

import java.net.URI;
import java.util.List;

import javax.validation.Valid;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import modelo.Pessoa;

@Controller
public class MeuController {

	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/")
	public String _default() {
		return "index";
	}
	
	@RequestMapping("/novapessoa")
	public String novaPessoa() {
		return "Cadastro";
	}
	
	@RequestMapping("/listarpessoa")
	public String listarPessoa(Model model) {
		String url = "http://localhost:8080/alfapinovo/";
		String endpoint = "rest/pessoa";
		HttpClient httpclient = new DefaultHttpClient();
		try {
			URIBuilder builder = new URIBuilder(url + endpoint);
			URI uri = builder.build();
			
			// request header
			HttpGet request = new HttpGet(uri); //alterar Http para tipo de método necessário (post, get, put, delete)
			request.setHeader("Content-Type", "application/json");
		
			// response
			HttpResponse response = httpclient.execute(request);
			HttpEntity entity = response.getEntity();
			String json = EntityUtils.toString(response.getEntity(), "UTF-8");
			
			Gson gson = new Gson();
			List<Pessoa> pessoas = gson.fromJson(json, new TypeToken<List<Pessoa>>(){}.getType());
			
			model.addAttribute("pessoas", pessoas);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "Listar_Pessoa";
	}

	// teste
	@RequestMapping("/pegaFoto64")
	public String pegaFoto64(Pessoa pessoa, @RequestParam(required = false, name = "file") String string64,
			Model model) {

		RestTemplate rt = new RestTemplate();
		String url = String.format("http://localhost:8080/alfapinovo/pegaFoto64/%s/%s", 
				pessoa.getNome(),
				pessoa.getSobrenome());
		pessoa = rt.getForObject(url, Pessoa.class);
		model.addAttribute("pessoa", pessoa);
		return "mostra_resultado";

	}

	@RequestMapping("/inserirPessoaFoto64")
	public String criarPessoaFoto64(@Valid Pessoa pessoa,
			@RequestParam(required = false, name = "file") String string64, Model model) {
		RestTemplate rt = new RestTemplate();
		String url = String.format("http://localhost:8080/alfapinovo/inserirPessoaFoto64/%s/%s/%s/%s/%s/%s/%s/%s/%s/%o", 
				pessoa.getNome(),
				pessoa.getSobrenome(),
				pessoa.getCpf(),
				pessoa.getRegistrosec(),
				pessoa.getEmail(),
				pessoa.getDataNascimento(),
				pessoa.getGenero(),
				pessoa.getTelResidencial(),
				pessoa.getTelSecundario(),
				pessoa.getEndereco());
		pessoa = rt.getForObject(url, Pessoa.class);
		model.addAttribute("pessoa", pessoa);
		return "mostra_resultado";
	}
	
	@RequestMapping("/inserirPessoa")
	public String inserirPessoa(Pessoa pessoa, BindingResult erros, Model model)
	{
		System.out.println(pessoa.toString());
		String url = "http://localhost:8080/alfapinovo/";
		String endpoint = "rest/pessoa";
		HttpClient httpclient = new DefaultHttpClient();
		try {
			URIBuilder builder = new URIBuilder(url + endpoint);
			URI uri = builder.build();
			
			// request header
			HttpPost request = new HttpPost(uri); //alterar Http para tipo de método necessário (post, get, put, delete)
			request.setHeader("Content-Type", "application/json");
			
			// request body
			StringEntity reqEntity = new StringEntity("{\r\n" + 
					"    \"codAzure\": \""+ null + "\",\r\n" + 
					"    \"foto\": \""+ pessoa.getFoto() + "\",\r\n" +
					"    \"idPessoa\": \""+ null + "\",\r\n" + 
					"    \"nome\": \""+ pessoa.getNome() + "\",\r\n" + 
					"    \"sobrenome\": \""+ pessoa.getSobrenome() + "\",\r\n" + 
					"    \"cpf\": \""+ pessoa.getCpf() + "\",\r\n" + 
					"    \"registrosec\": \""+ pessoa.getRegistrosec() + "\",\r\n" + 
					"    \"email\": \""+ pessoa.getEmail() + "\",\r\n" + 
					"    \"dataNascimento\": \""+ pessoa.getDataNascimento() + "\",\r\n" + 
					"    \"genero\": \""+ pessoa.getGenero() + "\",\r\n" + 
					"    \"telResidencial\": \""+ pessoa.getTelResidencial() + "\",\r\n" + 
					"    \"telSecundario\": \""+ pessoa.getTelSecundario() + "\",\r\n" + 
					"    \"endereco\": {\r\n" + 
					"        \"idEndereco\": \""+ null + "\",\r\n" + 
					"        \"cep\": \""+ pessoa.getEndereco().getCep() + "\",\r\n" + 
					"        \"tipoDeLogradouro\": \""+ pessoa.getEndereco().getTipoDeLogradouro() + "\",\r\n" + 
					"        \"endereco\": \""+ pessoa.getEndereco().getEndereco() + "\",\r\n" + 
					"        \"numero\": \""+ pessoa.getEndereco().getNumero() + "\",\r\n" + 
					"        \"bairro\": \""+ pessoa.getEndereco().getBairro() + "\",\r\n" + 
					"        \"cidade\": \""+ pessoa.getEndereco().getCidade() + "\",\r\n" + 
					"        \"estado\": \""+ pessoa.getEndereco().getEstado() + "\",\r\n" + 
					"        \"pais\": \""+ pessoa.getEndereco().getPais() + "\"\r\n" + 
					"    }\r\n" + 
					"}");		
			request.setEntity(reqEntity);
			
			// response
			HttpResponse response = httpclient.execute(request);
			HttpEntity entity = response.getEntity();
			String json = EntityUtils.toString(response.getEntity());
						
			if (entity != null) {
				// tratar a resposta da API
				final ObjectNode node = new ObjectMapper().readValue(json, ObjectNode.class);
				if (node.has("idPessoa"))
				{
					System.out.println(node.get("idPessoa").toString());
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "mostra_resultado";
	}
	
	
	
	
	@RequestMapping("/identificaPessoa")
	public String identificaPessoa(Pessoa pessoa, BindingResult erros, Model model)
	{
		String url = "http://localhost:8080/alfapinovo/";
		String endpoint = "rest/pessoa/identifica";
		HttpClient httpclient = new DefaultHttpClient();
		try {
			URIBuilder builder = new URIBuilder(url + endpoint);
			URI uri = builder.build();
			
			// request header
			HttpPost request = new HttpPost(uri); //alterar Http para tipo de método necessário (post, get, put, delete)
			request.setHeader("Content-Type", "application/json");
						
			// request body
			StringEntity reqEntity = new StringEntity("{\r\n" + 
					"    \"foto\": \""+ pessoa.getFoto() + "\",\r\n" +
					"    }\r\n" + 
					"}");		
			request.setEntity(reqEntity);
			
			// response
			HttpResponse response = httpclient.execute(request);
			HttpEntity entity = response.getEntity();
			String json = EntityUtils.toString(response.getEntity());
						
			if (entity != null) {
				// tratar a resposta da API
				final ObjectNode node = new ObjectMapper().readValue(json, ObjectNode.class);
				if (node.has("idPessoa"))
				{
					System.out.println(node.get("idPessoa").toString());
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "index";
	}
	
	@RequestMapping("/excluirPessoa")
	public String excluirPessoa(Pessoa pessoa, BindingResult erros, Model model)
	{
		
		System.out.println(pessoa.toString());
		String url = "http://localhost:8080/alfapinovo/";
		String endpoint = "rest/pessoa/"+pessoa.getIdPessoa();
		HttpClient httpclient = new DefaultHttpClient();
		try {
			URIBuilder builder = new URIBuilder(url + endpoint);
			URI uri = builder.build();
			
			// request header
			HttpDelete request = new HttpDelete(uri); //alterar Http para tipo de método necessário (post, get, put, delete)
			request.setHeader("Content-Type", "application/json");
		
			// response
			HttpResponse response = httpclient.execute(request);
			HttpEntity entity = response.getEntity();
			String json = EntityUtils.toString(response.getEntity(), "UTF-8");
			
			if (entity != null) {
				// tratar a resposta da API
				final ObjectNode node = new ObjectMapper().readValue(json, ObjectNode.class);
				if (node.has("idPessoa"))
				{
					System.out.println(node.get("idPessoa").toString());
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "redirect: listarpessoa";
	}
	
	@RequestMapping("/editar_pessoa")
	public String editarPessoa(Model model, int id)
	{
		
		System.out.println(id);
		String url = "http://localhost:8080/alfapinovo/";
		String endpoint = "rest/pessoa/"+id;
		HttpClient httpclient = new DefaultHttpClient();
		try {
			URIBuilder builder = new URIBuilder(url + endpoint);
			URI uri = builder.build();
			
			// request header
			HttpGet request = new HttpGet(uri); //alterar Http para tipo de método necessário (post, get, put, delete)
			request.setHeader("Content-Type", "application/json");
		
			// response
			HttpResponse response = httpclient.execute(request);
			HttpEntity entity = response.getEntity();
			String json = EntityUtils.toString(response.getEntity(), "UTF-8");
			
			if (entity != null) {
				// tratar a resposta da API
				final ObjectNode node = new ObjectMapper().readValue(json, ObjectNode.class);
				if (node.has("idPessoa"))
				{
					Gson gson = new Gson();
					Pessoa _pessoa = gson.fromJson(json, Pessoa.class);
					
					model.addAttribute("pessoa", _pessoa);
					System.out.println(node.get("idPessoa").toString());
					
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "Editar_Pessoa";
	}
	
	@RequestMapping("/visualizar_pessoa")
	public String vizualizarPessoa(Model model, int id)
	{
		
		System.out.println(id);
		String url = "http://localhost:8080/alfapinovo/";
		String endpoint = "rest/pessoa/"+id;
		HttpClient httpclient = new DefaultHttpClient();
		try {
			URIBuilder builder = new URIBuilder(url + endpoint);
			URI uri = builder.build();
			
			// request header
			HttpGet request = new HttpGet(uri); //alterar Http para tipo de método necessário (post, get, put, delete)
			request.setHeader("Content-Type", "application/json");
		
			// response
			HttpResponse response = httpclient.execute(request);
			HttpEntity entity = response.getEntity();
			String json = EntityUtils.toString(response.getEntity(), "UTF-8");
			
			if (entity != null) {
				// tratar a resposta da API
				final ObjectNode node = new ObjectMapper().readValue(json, ObjectNode.class);
				if (node.has("idPessoa"))
				{
					Gson gson = new Gson();
					Pessoa _pessoa = gson.fromJson(json, Pessoa.class);
					
					model.addAttribute("pessoa", _pessoa);
					System.out.println(node.get("idPessoa").toString());
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "visualizar_pessoa";
	}
	
	@RequestMapping("/atualizarCardastro")
	public String atualizarPessoa(Pessoa pessoa, Model model)
	{
		
		System.out.println(pessoa.toString());
		String url = "http://localhost:8080/alfapinovo/";
		String endpoint = "rest/pessoa";
		HttpClient httpclient = new DefaultHttpClient();
		try {
			URIBuilder builder = new URIBuilder(url + endpoint);
			URI uri = builder.build();
			
			// request header
			HttpPut request = new HttpPut(uri); //alterar Http para tipo de método necessário (post, get, put, delete)
			request.setHeader("Content-Type", "application/json");
			
			// request body
			StringEntity reqEntity = new StringEntity("{\r\n" + 
					"    \"codAzure\": \""+ null + "\",\r\n" + 
					"    \"foto\": \""+ pessoa.getFoto() + "\",\r\n" +
					"    \"idPessoa\": \""+ null + "\",\r\n" + 
					"    \"nome\": \""+ pessoa.getNome() + "\",\r\n" + 
					"    \"sobrenome\": \""+ pessoa.getSobrenome() + "\",\r\n" + 
					"    \"cpf\": \""+ pessoa.getCpf() + "\",\r\n" + 
					"    \"registrosec\": \""+ pessoa.getRegistrosec() + "\",\r\n" + 
					"    \"email\": \""+ pessoa.getEmail() + "\",\r\n" + 
					"    \"dataNascimento\": \""+ pessoa.getDataNascimento() + "\",\r\n" + 
					"    \"genero\": \""+ pessoa.getGenero() + "\",\r\n" + 
					"    \"telResidencial\": \""+ pessoa.getTelResidencial() + "\",\r\n" + 
					"    \"telSecundario\": \""+ pessoa.getTelSecundario() + "\",\r\n" + 
					"    \"endereco\": {\r\n" + 
					"        \"idEndereco\": \""+ pessoa.getEndereco().getIdEndereco() + "\",\r\n" + 
					"        \"cep\": \""+ pessoa.getEndereco().getCep() + "\",\r\n" + 
					"        \"tipoDeLogradouro\": \""+ pessoa.getEndereco().getTipoDeLogradouro() + "\",\r\n" + 
					"        \"endereco\": \""+ pessoa.getEndereco().getEndereco() + "\",\r\n" + 
					"        \"numero\": \""+ pessoa.getEndereco().getNumero() + "\",\r\n" + 
					"        \"bairro\": \""+ pessoa.getEndereco().getBairro() + "\",\r\n" + 
					"        \"cidade\": \""+ pessoa.getEndereco().getCidade() + "\",\r\n" + 
					"        \"estado\": \""+ pessoa.getEndereco().getEstado() + "\",\r\n" + 
					"        \"pais\": \""+ pessoa.getEndereco().getPais() + "\"\r\n" + 
					"    }\r\n" + 
					"}");		
			request.setEntity(reqEntity);
			
			System.out.println(reqEntity.toString());
		
			// response
			HttpResponse response = httpclient.execute(request);
			HttpEntity entity = response.getEntity();
			String json = EntityUtils.toString(response.getEntity(), "UTF-8");
			
			if (entity != null) {
				// tratar a resposta da API
				final ObjectNode node = new ObjectMapper().readValue(json, ObjectNode.class);
				if (node.has("idPessoa"))
				{
					System.out.println(node.get("idPessoa").toString());
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "index";
	}
	
	
}
