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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

	@Entity
	@Table(name="corsi")
	public class Corso {
		
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="nome")
		String nome;
		@Column(name="descrizione")
		String descrizione;
	private int id_corso;
	
	
	@OneToMany(
	mappedBy = "corso", 
	cascade = CascadeType.ALL,
	fetch = FetchType.EAGER,
	orphanRemoval = true)
	List<Area> area;
	
	 @ManyToOne(cascade = CascadeType.MERGE)
	    @JoinColumn(name = "id_corso", referencedColumnName = "id_corso")
	private Corso corso;
	 
	 @ManyToOne
	 @JoinColumn(name = "id_ordine", referencedColumnName = "id_ordine")
	 private Ordini ordine;
	 
	 
	 
	public int getId_corso() {
		return id_corso;
	}
	public void setId_corso(int id_corso) {
		this.id_corso = id_corso;
	}
	public List<Area> getArea() {
		return area;
	}
	public void setArea(List<Area> area) {
		this.area = area;
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
	

	public Corso getCorso() {
		return corso;
	}
	public void setCorso(Corso corso) {
		this.corso = corso;
	}

	
	
	
	}
