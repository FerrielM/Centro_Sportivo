package it.project.work.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name ="users")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
 private int id_user;
	@Column(name="email")
 private String email;
	@Column(name="nome")
 private String nome;
	@Column(name="cognome")
 private String cognome;
	@Column(name="username")
 private String username;
	@Column(name="password")
 private String password;
	@Column(name="anno_di_nascita")
	@Temporal(value=TemporalType.DATE)
 private Date annoDiNascita;
	@Column(name="codice_fiscale")
 private String codiceFiscale;
	@Column(name="citta")
 private String citta;
	@Column(name="provincia")
 private String provincia;
	@Column(name="cap")
 private String cap;
	@Column(name="partita_iva")
 private String partitaIva;
 @Column(name="indirizzo")
 private String indirizzo;
public int getId_user() {
	return id_user;
}
public void setId_user(int id_user) {
	this.id_user = id_user;
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
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Date getAnnoDiNascita() {
	return annoDiNascita;
}
public void setAnnoDiNascita(Date annoDiNascita) {
	this.annoDiNascita = annoDiNascita;
}


public String getCodiceFiscale() {
	return codiceFiscale;
}
public void setCodiceFiscale(String codiceFiscale) {
	this.codiceFiscale = codiceFiscale;
}
public String getCitta() {
	return citta;
}
public void setCitta(String citta) {
	this.citta = citta;
}
public String getProvincia() {
	return provincia;
}
public void setProvincia(String provincia) {
	this.provincia = provincia;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getCap() {
	return cap;
}
public void setCap(String cap) {
	this.cap = cap;
}
public String getPartitaIva() {
	return partitaIva;
}
public void setPartitaIva(String partitaIva) {
	this.partitaIva = partitaIva;
}
public String getIndirizzo() {
	return indirizzo;
}
public void setIndirizzo(String indirizzo) {
	this.indirizzo = indirizzo;
}
 
}
