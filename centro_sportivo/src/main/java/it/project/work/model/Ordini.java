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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ordini")
public class Ordini {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;
		
	@Column(name="data_inizio")
private Date dataInizio;
	@Column(name="data_fine")
private Date dataFine ;
	@Column(name="totale")
private double totale;
	
	 @ManyToOne(cascade = CascadeType.MERGE)
	    @JoinColumn(name = "id_user", referencedColumnName = "id_user")
	    private User user ;
	    
	 	@OneToOne(cascade = CascadeType.ALL)
		@JoinColumn(name = "tipologie_abbonamento_id")
		private TipologiaAbbonamento abbonamento;
		
		@OneToMany
		(
			mappedBy = "corso", 
			cascade = CascadeType.ALL,
			fetch = FetchType.EAGER,
			orphanRemoval = true
		)
		private List<Corso> corsi;
		 
		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public Date getDataInizio() {
			return dataInizio;
		}

		public void setDataInizio(Date dataInizio) {
			this.dataInizio = dataInizio;
		}

		public Date getDataFine() {
			return dataFine;
		}

		public void setDataFine(Date dataFine) {
			this.dataFine = dataFine;
		}

		public double getTotale() {
			return totale;
		}

		public void setTotale(double totale) {
			this.totale = totale;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		public TipologiaAbbonamento getAbbonamento() {
			return abbonamento;
		}

		public void setAbbonamento(TipologiaAbbonamento abbonamento) {
			this.abbonamento = abbonamento;
		}

		public List<Corso> getCorsi() {
			return corsi;
		}

		public void setCorsi(List<Corso> corsi) {
			this.corsi = corsi;
		}
  	 
		
 }
