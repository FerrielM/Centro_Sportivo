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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="ordini")

public class Ordine {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_ordine;
	
	@Column(name="totale_ordine")
	private double totaleOrdine;
	
	@Column(name = "data_acquisto")
	@Temporal(TemporalType.DATE)
	private Date data_acquisto;
	
	@Column(name = "nome_cliente")
	private String nome_cliente;
	
	
	@ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
	@JoinTable
		( 
			name = "ordini_prodotti",
			joinColumns = @JoinColumn(name = "id_ordine", referencedColumnName = "id_ordine"),
			inverseJoinColumns = @JoinColumn(name = "id_prodotto", referencedColumnName = "id_prodotto")
		)
	private List<Prodotto> prodotti;
	
	public int getId_ordine() {
		return id_ordine;
	}
	public void setId_ordine(int id_ordine) {
		this.id_ordine = id_ordine;
	}
	public double getTotaleOrdine() {
		return totaleOrdine;
	}
	public void setTotaleOrdine(Double totaleOrdine) {
		this.totaleOrdine = totaleOrdine;
	}
	public String getNome_cliente() {
		return nome_cliente;
	}
	public void setNome_cliente(String nome_cliente) {
		this.nome_cliente = nome_cliente;
	}
	public Date getData_acquisto() {
		return data_acquisto;
	}
	public void setData_acquisto(Date data_acquisto) {
		this.data_acquisto = data_acquisto;
	}
	public List<Prodotto> getProdotti() {
		return prodotti;
	}
	public void setProdotti(List<Prodotto> prodotti) {
		this.prodotti = prodotti;
	}
	
	
	

}
