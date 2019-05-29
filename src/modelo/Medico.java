/**
 * 
 */
package modelo;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "medicos")
public class Medico {

	// Atributos
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotNull
	private String crm;
	private String nome;
	private String sobrenome;
	private String experienciaProfissional;
	private String formacaoAcademica;
	private String planosConvenio;
	private String telefone1;
	private String telefone2;
	private String horaInicioAtendimento;
	private String horaFimAtendimento;
	private String diasAtendimento;
	private String especialidade;
	private String sexo;
	
	/**
	 * Para futura vinculação de especialidades --@ManyToOne private Especialidade
	 * especialidade
	 */

	private String foto;

	@OneToOne
	private Usuario usuario;

	@ManyToMany
	@JoinTable(name = "medicos_has_convenios", joinColumns = { @JoinColumn(name = "medico_id") }, inverseJoinColumns = {
			@JoinColumn(name = "convenio_id") })
	private List<Convenio> convenios;

	public Medico() {
		super();
	}

	public Medico(@NotNull String nome, @NotNull String crm, Usuario usuario) {
		super();
		this.nome = nome;
		this.crm = crm;
		this.usuario = usuario;
	}
	
	

	public Medico(Long id, @NotNull String crm, String nome, String sobrenome, String experienciaProfissional,
			String formacaoAcademica, String planosConvenio, String telefone1, String telefone2,
			String horaInicioAtendimento, String horaFimAtendimento, String diasAtendimento, String especialidade,
			String sexo, String foto, Usuario usuario, List<Convenio> convenios) {
		super();
		this.id = id;
		this.crm = crm;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.experienciaProfissional = experienciaProfissional;
		this.formacaoAcademica = formacaoAcademica;
		this.planosConvenio = planosConvenio;
		this.telefone1 = telefone1;
		this.telefone2 = telefone2;
		this.horaInicioAtendimento = horaInicioAtendimento;
		this.horaFimAtendimento = horaFimAtendimento;
		this.diasAtendimento = diasAtendimento;
		this.especialidade = especialidade;
		this.sexo = sexo;
		this.foto = foto;
		this.usuario = usuario;
		this.convenios = convenios;
	}

	public Long getId() {
		return id;
	}

	public String getCrm() {
		return crm;
	}

	public String getNome() {
		return nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public String getExperienciaProfissional() {
		return experienciaProfissional;
	}

	public String getTelefone1() {
		return telefone1;
	}

	public String getTelefone2() {
		return telefone2;
	}

	public String getHoraInicioAtendimento() {
		return horaInicioAtendimento;
	}

	public String getEspecialidade() {
		return especialidade;
	}

	public String getFoto() {
		return foto;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public List<Convenio> getConvenios() {
		return convenios;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setCrm(String crm) {
		this.crm = crm;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public void setExperienciaProfissional(String experienciaProfissional) {
		this.experienciaProfissional = experienciaProfissional;
	}

	public void setTelefone1(String telefone1) {
		this.telefone1 = telefone1;
	}

	public void setTelefone2(String telefone2) {
		this.telefone2 = telefone2;
	}

	public void setHoraInicioAtendimento(String horarioAtendimento) {
		this.horaInicioAtendimento = horarioAtendimento;
	}

	public void setEspecialidade(String especialidade) {
		this.especialidade = especialidade;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public void setConvenios(List<Convenio> convenios) {
		this.convenios = convenios;
	}	

	public String getFormacaoAcademica() {
		return formacaoAcademica;
	}

	public void setFormacaoAcademica(String formacaoAcademica) {
		this.formacaoAcademica = formacaoAcademica;
	}
	

	public String getDiasAtendimento() {
		return diasAtendimento;
	}

	public void setDiasAtendimento(String diasAtendimento) {
		this.diasAtendimento = diasAtendimento;
	}

	public String getPlanosConvenio() {
		return planosConvenio;
	}

	public void setPlanosConvenio(String planosConvenio) {
		this.planosConvenio = planosConvenio;
	}

	public String getHoraFimAtendimento() {
		return horaFimAtendimento;
	}

	public void setHoraFimAtendimento(String horaFimAtendimento) {
		this.horaFimAtendimento = horaFimAtendimento;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	@Override
	public String toString() {
		return "Medico [id=" + id + ", crm=" + crm + ", nome=" + nome + ", sobrenome=" + sobrenome
				+ ", experienciaProfissional=" + experienciaProfissional + ", formacaoAcademica=" + formacaoAcademica
				+ ", planosConvenio=" + planosConvenio + ", telefone1=" + telefone1 + ", telefone2=" + telefone2
				+ ", horaInicioAtendimento=" + horaInicioAtendimento + ", horaFimAtendimento=" + horaFimAtendimento
				+ ", diasAtendimento=" + diasAtendimento + ", especialidade=" + especialidade + ", sexo=" + sexo
				+ ", foto=" + foto + ", usuario=" + usuario + ", convenios=" + convenios + "]";
	}
	
	

}
