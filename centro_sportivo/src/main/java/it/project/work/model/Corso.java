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

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

	@Entity
	@Table(name="corsi")
	public class Corso {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
			private int id_corso;
		@Column(name="prezzo")
		private double prezzo;
		@Column(name="nome")
		String nome;
		@Column(name="descrizione")
		String descrizione;
		 @LazyCollection(LazyCollectionOption.FALSE) // MI SERVE PER RISOLVERE IL BUG DEL SIMULTANIOUSLY FETC
		 //NON DEVO METTERE IL FLETCH QAUNDO USO IL @LazyCollection
		@OneToMany(                
				mappedBy = "corso", //MAPPO IL NOME DELLA  VARIABILE PRESENTE IN CLASSE AREA <--- è OPZIONALE
				cascade = CascadeType.ALL,  //SEMPRE ALL IN OneToMany
 				orphanRemoval = true) // se rimane un oggetto orfano viene eliminato;
				List<Area> area;
             
		 //mi dichiaro un oggetto user id qua anche se non ce l'ho nella tabella corso, per dirgli che tramite id_coroso,
		// presente nella tabella user, posso fare la inner join
	    
		 @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
		 @JoinColumn(name = "id_user", referencedColumnName = "id_user")
		private  User user ;
 	public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
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
	public double getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	
	
 

	
	
	
	}
