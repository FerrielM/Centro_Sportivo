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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Prodotti")
public class Prodotto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_prodotto;
	
	@Column(name = "nome", length = 255, nullable = false)
	private String nome;
	
	@Column(name = "descrizione", nullable = false)
	private String descrizione;
	
	@Column(name = "prezzo", nullable = false)
	private double prezzo;
	
	@Column(name = "img")
	private String img;
	
	@ManyToOne(cascade = CascadeType.MERGE) // 
	@JoinColumn(name = "id_cat", referencedColumnName = "id_cat")
	private CatAttivitaSportive cat;
	

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable
		( 
			name = "ordini_prodotti",
			joinColumns = @JoinColumn(name = "id_prodotto", referencedColumnName = "id_prodotto"),
			inverseJoinColumns = @JoinColumn(name = "id_ordine", referencedColumnName = "id_ordine")
		)
	private List<Ordine> ordini;

	public int getId_prodotto() {
		return id_prodotto;
	}

	public void setId_prodotto(int id_prodotto) {
		this.id_prodotto = id_prodotto;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public CatAttivitaSportive getCat() {
		return cat;
	}

	public void setCat(CatAttivitaSportive cat) {
		this.cat = cat;
	}

	public List<Ordine> getOrdini() {
		return ordini;
	}

	public void setOrdini(List<Ordine> ordini) {
		this.ordini = ordini;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	
	
	
	

}
