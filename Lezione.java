package it.project.work.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="lezioni")

public class Lezione{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_lezione;
	@Column(name="tipo")
	private String tipo;
	@Column(name="durata")
	private int durata;
	
}
