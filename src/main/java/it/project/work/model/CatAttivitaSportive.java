package it.project.work.model;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="cat_attivita_sportive")
public class CatAttivitaSportive {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id_cat;
	@Column(name="descrizione")
	private String descrizione;
	

	@OneToMany
	
	(		
		mappedBy = "cat",
		cascade = CascadeType.ALL,
		fetch = FetchType.EAGER,
		orphanRemoval = true
	)
	private List<Prodotto> prodotti;
	
	public int getId_cat() {
		return id_cat;
	}
 
	public void setId_attivita_sportiva(int id_attivita_sportiva) {
		this.id_cat = id_attivita_sportiva;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public List<Prodotto> getProdotti() {
		return prodotti;
	}

	public void setProdotti(List<Prodotto> prodotti) {
		this.prodotti = prodotti;
	}

	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}
	
	
	
}
