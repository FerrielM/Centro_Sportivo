package it.project.work.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
		@OneToOne
	    private User user ;
	    
		@OneToOne
		private TipologiaAbbonamento abbonamento;
		 
	    
		 
		
	 
 
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
  	 
 }
