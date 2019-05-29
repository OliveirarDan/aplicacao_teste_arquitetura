package modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "convenios")
public class Convenio {

	// Atributos

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotNull
	private String codConvenio;
	@NotNull
	private String nome;
	
	

	public Convenio( @NotNull String codConvenio, @NotNull String nome) {
		super();
		this.codConvenio = codConvenio;
		this.nome = nome;
	}
	
	public Convenio(Long id, @NotNull String codConvenio, @NotNull String nome) {
		super();
		this.id = id;
		this.codConvenio = codConvenio;
		this.nome = nome;
	}


	public Convenio() {
		super();
	}


	public Long getId() {
		return id;
	}


	public String getCodConvenio() {
		return codConvenio;
	}


	public String getNome() {
		return nome;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public void setCodConvenio(String codConvenio) {
		this.codConvenio = codConvenio;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	@Override
	public String toString() {
		return "Convenio [id=" + id + ", codConvenio=" + codConvenio + ", nome=" + nome + "]";
	}
	
	
	
	
	
}
