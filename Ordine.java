package it.project.work.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ordini")

public class Ordine {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id_ordine;
@Column(name="totaleOrdine")
private String totaleOrdine;

public int getId_ordine() {
	return id_ordine;
}
public void setId_ordine(int id_ordine) {
	this.id_ordine = id_ordine;
}
public String getTotaleOrdine() {
	return totaleOrdine;
}
public void setTotaleOrdine(String totaleOrdine) {
	this.totaleOrdine = totaleOrdine;
}

}
