package it.project.work.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="istruttori")
public class Istruttore {
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_istruttore;
	@Column(name="nome")
	private String nome;
	@Column(name="cognome")
	private String cognome;
	@Column(name="descrizione")
	private String descrizione;
	@Column(name="img")
    private String img; 
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getId_istruttore() {
		return id_istruttore;
	}
	public void setId_istruttore(int id_istruttore) {
		this.id_istruttore = id_istruttore;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
 
	
}
