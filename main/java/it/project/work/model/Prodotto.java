package it.project.work.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="prodotti")
public class Prodotto {
	@Id 
	@GeneratedValue
	private int id_prodotto;
	@Column(name="prezzo")
	private double prezzo;
	@Column(name="nome")
	private String nome;
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

	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="id_cat" ,referencedColumnName="id_cat")
	CatAttivitaSportive cat;

	public int getId_prodotto() {
		return id_prodotto;
	}
 
	@ManyToMany(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@JoinTable(name="ordini_prodotti",
	joinColumns=@JoinColumn(name="id_prodotto",referencedColumnName="id_prodotto"),
	inverseJoinColumns = @JoinColumn(name="id_ordine",referencedColumnName="id_ordine")
	)
	List<Ordine>ordini;
	
	public List<Ordine> getOrdini() {
		return ordini;
	}

	public void setOrdini(List<Ordine> ordini) {
		this.ordini = ordini;
	}

	public void setId_prodotto(int id_prodotto) {
		this.id_prodotto = id_prodotto;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public CatAttivitaSportive getCat() {
		return cat;
	}

	public void setCat(CatAttivitaSportive cat) {
		this.cat = cat;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
 }

