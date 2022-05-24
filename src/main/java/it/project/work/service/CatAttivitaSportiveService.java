package it.project.work.service;

import java.util.List;

import it.project.work.model.CatAttivitaSportive;

public interface CatAttivitaSportiveService {

	public void createAttivita(CatAttivitaSportive attivita);
	
	public void updateAttivita(CatAttivitaSportive attivita);
	
	public void deleteAttivita(CatAttivitaSportive attivita);
	
	public List<CatAttivitaSportive> listAttivita();
	
	public CatAttivitaSportive getAttivitaById(int id);
}
