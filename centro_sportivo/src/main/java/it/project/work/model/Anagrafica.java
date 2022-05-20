package it.project.work.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Table(name="anagrafica")
@Entity
public class Anagrafica {
	    @Id
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
		public int id_anagrafica;
		
	    @Column(name="nome")
		private  String nome;
		
	    @Column(name="cognome")
		private String cognome;
	    
	    @Column(name="indirizzo")
		private String indirizzo;
	    
	    @Column(name="cap")
		private  String cap;
	    
	    @Column(name="localita")
		private String localita;
	    
	    @Column(name="provincia")
		private String provincia;
	    
	    @Column(name="codice_fiscale")
		private String codice_fiscale;
	    
	    @Column(name="partita_iva")
		private String partita_iva;
	    
	    @Column(name="email")
		private String email;
	    
	    @Column(name="telefono_cellulare")
		private String telefono_cellulare;
	    
		@OneToOne(mappedBy = "anagrafica", cascade = CascadeType.ALL)
		private User user;

		public int getId_anagrafica() {
			return id_anagrafica;
		}

		public void setId_anagrafica(int id_anagrafica) {
			this.id_anagrafica = id_anagrafica;
		}

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public String getCognome() {
			return cognome;
		}

		public void setCognome(String cognome) {
			this.cognome = cognome;
		}

		public String getIndirizzo() {          	
			return indirizzo;
		}

		public void setIndirizzo(String indirizzo) {
			this.indirizzo = indirizzo;
		}
		public String getCap() {
			return cap;
		}

		public void setCap(String cap) {
			this.cap = cap;
		}

		public String getLocalita() {
			return localita;
		}

		public void setLocalita(String localita) {
			this.localita = localita;
		}

		public String getProvincia() {
			return provincia;
		}

		public void setProvincia(String provincia) {
			this.provincia = provincia;
		}

		public String getCodice_fiscale() {
			return codice_fiscale;
		}

		public void setCodice_fiscale(String codice_fiscale) {
			this.codice_fiscale = codice_fiscale;
		}

		public String getPartita_iva() {
			return partita_iva;
		}

		public void setPartita_iva(String partita_iva) {
			this.partita_iva = partita_iva;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getTelefono_cellulare() {
			return telefono_cellulare;
		}

		public void setTelefono_cellulare(String telefono_cellulare) {
			this.telefono_cellulare = telefono_cellulare;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}
		
		
}
