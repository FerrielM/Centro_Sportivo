package it.project.work.model;

import java.util.List;

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

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

 
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
	//NELLA TABELLA USER HO UN ID_TIPOLOGIA_ABBONAMENTO PERCIL DICHIARO UN'OGGETTO QUI
	 @ManyToOne(cascade = CascadeType.ALL )//, fetch = FetchType.EAGER) // SE NON METTI CASCADE.ALL SI BLOCCA;
    @JoinColumn(name = "id_tipologia_abbonamento")  // <-- NOME DELLA VARIABILE CHE  IN TIPOLOGIAABBONAMENTO CORRISPONDE ALL'ID
	private TipologiaAbbonamento abbonato;
	 
	 @OneToMany(                
				mappedBy = "user", //MAPPO IL NOME DELLA  VARIABILE PRESENTE IN CLASSE corso <--- è OPZIONALE
				cascade = CascadeType.ALL,  //SEMPRE ALL IN OneToMany
				orphanRemoval = true,fetch= FetchType.EAGER) // se rimane un oggetto orfano viene eliminato;
              private List< Corso> corso;
	 
    public TipologiaAbbonamento getAbbonato() {
		return abbonato;
	}

	public void setAbbonato(TipologiaAbbonamento abbonato) {
		this.abbonato = abbonato;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	@Column(name="descrizione")
    String descrizione;
	public int getId_user() {
		return id_user;
	}
	
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

	public List<Corso> getCorso() {
		return corso;
	}

	public void setCorso(List<Corso> corso) {
		this.corso = corso;
	}
	
 

	 
}
