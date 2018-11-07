package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.validation.Valid;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import modelo.Endereco;
import modelo.Pessoa;

@Controller
public class MeuController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	// teste
	@RequestMapping("/pegaFoto64")
	public String pegaFoto64(Pessoa pessoa, @RequestParam(required = false, name = "file") String string64,
			Model model) {

		RestTemplate rt = new RestTemplate();
		String url = String.format("http://localhost:8080/alfapi_hibernate/pegaFoto64/%s/%s", 
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
		String url = String.format("http://localhost:8080/alfapi_hibernate/inserirPessoaFoto64/%s/%s/%s/%s/%s/%s/%s/%s/%s/%o", 
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
}
