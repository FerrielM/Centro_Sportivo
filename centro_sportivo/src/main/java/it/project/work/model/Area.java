package it.project.work.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name="area")
@Entity
public class Area {
@Id 
@GeneratedValue(strategy=GenerationType.IDENTITY)
int id_area;
@Column(name="descrizione")
String descrizione;

@ManyToOne(cascade = CascadeType.MERGE)
@JoinColumn(name = "id_corso", referencedColumnName = "id_corso")
Corso corso ;
 

public int getId_area() {
	return id_area;
}

public void setId_area(int id_area) {
	this.id_area = id_area;
}

public String getDescrizione() {
	return descrizione;
}

public void setDescrizione(String descrizione) {
	this.descrizione = descrizione;
}

public Corso getCorso() {
	return corso;
}

public void setCorso(Corso corso) {
	this.corso = corso;
}




}
