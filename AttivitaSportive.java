package it.project.work.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="attivita_sportive")
public class AttivitaSportive {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id_attivita_sportiva;
	@Column(name="descrizione")
	private String descrizione;
	public int getId_attivita_sportiva() {
		return id_attivita_sportiva;
	}
 
	public void setId_attivita_sportiva(int id_attivita_sportiva) {
		this.id_attivita_sportiva = id_attivita_sportiva;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	
}
