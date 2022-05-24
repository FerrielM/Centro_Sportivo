package it.project.work.dao;

import java.util.List;

import it.project.work.model.CatAttivitaSportive;

public interface CatAttivitaSportiveDao {
	public void createAttivita(CatAttivitaSportive attivita);
	public void updateAttivita(CatAttivitaSportive attivita);
	public void deleteAttivita(CatAttivitaSportive attivitia);
	public List<CatAttivitaSportive> listAttivita();
	public CatAttivitaSportive getAttivitaById(int id);
	
	

}
