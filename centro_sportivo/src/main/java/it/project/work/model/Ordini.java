package it.project.work.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ordini")
public class Ordini {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int idOrdine;

	@Column(name="data_inizio")
private Date dataInizio;
	@Column(name="data_fine")
private Date dataFine ;
	@Column(name="totale")
private double totale;
		@ManyToOne
	    private User user ;
		
 		@OneToOne
		private TipologiaAbbonamento abbonamento;
		 
		public int getIdOrdine() {
			return idOrdine;
		}

		public void setId(int idOrdine) {
			this.idOrdine = idOrdine;
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
