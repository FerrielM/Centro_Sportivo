package it.project.work.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="ordini")

public class Ordine {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id_ordine;
@Column(name="totale_ordine")
private double totaleOrdine;
@Column(name="data_acquisto")
private Date dataAcquisto;
@Column(name="nome_cliente")
private String nomeCliente;
@ManyToMany(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
@JoinTable(name="ordini_prodotti",
joinColumns=@JoinColumn(name="id_ordine",referencedColumnName="id_ordine"),
inverseJoinColumns = @JoinColumn(name="id_prodotto",referencedColumnName="id_prodotto")
)
private List<Prodotto>prodotti;
public Date getDataAcquisto() {
	return dataAcquisto;
}
public void setDataAcquisto(Date dataAcquisto) {
	this.dataAcquisto = dataAcquisto;
}
public int getId_ordine() {
	return id_ordine;
}
public void setId_ordine(int id_ordine) {
	this.id_ordine = id_ordine;
}
public double getTotaleOrdine() {
	return totaleOrdine;
}
public void setTotaleOrdine(double totaleOrdine) {
	this.totaleOrdine = totaleOrdine;
}
public List<Prodotto> getProdotti() {
	return prodotti;
}
public void setProdotti(List<Prodotto> prodotti) {
	this.prodotti = prodotti;
}
public String getNomeCliente() {
	return nomeCliente;
}
public void setNomeCliente(String nomeCliente) {
	this.nomeCliente = nomeCliente;
}


}
