package modelo;

import java.io.File;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="pessoa")
public class Pessoa extends Azure {

	// Atributos
	@Id
	@NotNull 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idPessoa;
	private String nome;
	private String sobrenome;
	private String cpf;
	private String registrosec;
	private String email;
	private String dataNascimento;
	private String genero;
	private String telResidencial;
	private String telSecundario;
	private String codAzure;
	private File foto;
	public File getFoto() {
		return foto;
	}


	public void setFoto(File foto) {
		this.foto = foto;
	}
	
	@NotNull
	@OneToOne
	@JoinColumn(name="Endereco_idEndereco")
	private Endereco endereco;

	// Construtores
	public Pessoa() {
		// TODO Auto-generated constructor stub
	}

	
	public Pessoa(String codAzure, int idPessoa, String nome, String sobrenome, String cpf, String registrosec, String email,
			String dataNascimento, String genero, String telResidencial, String telSecundario, Endereco endereco) {
		super(codAzure);
		this.idPessoa = idPessoa;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.cpf = cpf;
		this.registrosec = registrosec;
		this.email = email;
		this.dataNascimento = dataNascimento;
		this.genero = genero;
		this.telResidencial = telResidencial;
		this.telSecundario = telSecundario;
		this.endereco = endereco;
	}

	// M�todos Getters e Setters
	public int getIdPessoa() {
		return idPessoa;
	}

	public void setIdPessoa(int idPessoa) {
		this.idPessoa = idPessoa;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRegistrosec() {
		return registrosec;
	}

	public void setRegistrosec(String registrosec) {
		this.registrosec = registrosec;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getTelResidencial() {
		return telResidencial;
	}

	public void setTelResidencial(String telResidencial) {
		this.telResidencial = telResidencial;
	}

	public String getTelSecundario() {
		return telSecundario;
	}

	public void setTelSecundario(String telSecundario) {
		this.telSecundario = telSecundario;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	

	public String getCodAzure() {
		return codAzure;
	}


	public void setCodAzure(String codAzure) {
		this.codAzure = codAzure;
	}


	// M�todo toString
	@Override
	public String toString() {
		return "Pessoa [idPessoa=" + idPessoa + ", nome=" + nome + ", sobrenome=" + sobrenome + ", cpf=" + cpf
				+ ", registrosec=" + registrosec + ", email=" + email + ", dataNascimento=" + dataNascimento
				+ ", genero=" + genero + ", telResidencial=" + telResidencial + ", telSecundario=" + telSecundario
				+ ", endereco=" + endereco + "]";
	}

}
