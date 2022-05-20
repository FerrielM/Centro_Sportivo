package it.project.work.dao;

import java.util.List;

import it.project.work.model.Ordini;

public interface OrdiniDao {

	
	public Ordini getOrdiniById(int id);
	
	public List<Ordini> getOrdini();
	
	public void createOrdini(Ordini ordine);
	
	public void deleteOrdine(Ordini ordine);
	
	public void updateOrdine(Ordini ordine);
	
	
}
