package it.project.work.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

 
@Entity
@Table(name="tipologie_abbonamento") // ex abbonamenti.
public class TipologiaAbbonamento {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int id_tipologia_abbonamento;
	@Column(name="tipologia")
	private String tipologia;
	@Column(name="descrizione")
	private String descrizione;
	@Column(name="prezzo")
	public int prezzo;
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany    // NON HO MESSO @joinTable  perchè sto user io non lo ho nella tabella di questa classe, 
	(
		mappedBy = "abbonato",// <-- FACOLTATIVO , LA METTO PERCHè SPECIFICO CHE NELLA CLASSE USER ho una variabile di tipo TipologiaAbb 
		cascade = CascadeType.ALL, // <----SEMPRE ALL 
		orphanRemoval = true
	)
	private  List<User> user ;
	 
	public int getId_tipologia_abbonamento() {
		return id_tipologia_abbonamento;
	}
	public void setId_tipologia_abbonamento(int id_tipologia_abbonamento) {
		this.id_tipologia_abbonamento = id_tipologia_abbonamento;
	}
	public List<User> getUser() {
		return user;
	}
	public void setUser(List<User> user) {
		this.user = user;
	}
	public String getTipologia() {
		return tipologia;
	}
	public void setTipologia(String tipologia) {
		this.tipologia = tipologia;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public int getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(int prezzo) {
		this.prezzo = prezzo;
	}
	
    
}
