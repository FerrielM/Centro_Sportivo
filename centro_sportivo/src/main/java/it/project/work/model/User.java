package it.project.work.model;

 
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="user")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_user;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="id_anagrafica")
	private Anagrafica anagrafica;
	
	 
 	@Column(name="username")
	private String username;
	@Column(name="password")
 	private String password;
	 @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "id_tipologia_abbonamento", referencedColumnName = "id_tipologia_abbonamento")
	private TipologiaAbbonamento abbonato;
   
    @Column(name="descrizione")
    String descrizione;
	public int getId_user() {
		return id_user;
	}
	
	@OneToMany
	(
		mappedBy = "user", 
		cascade = CascadeType.ALL,
		fetch = FetchType.EAGER,
		orphanRemoval = true
	)
	private Ordini ordine;
	
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	
	public Anagrafica getAnagrafica() {
		return anagrafica;
	}
	public void setAnagrafica(Anagrafica anagrafica) {
		this.anagrafica = anagrafica;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public TipologiaAbbonamento getAbbonamento() {
		return abbonato;
	}

	public void setAbbonamento(TipologiaAbbonamento abbonato) {
		this.abbonato = abbonato;
	}
	
 

	 
}
