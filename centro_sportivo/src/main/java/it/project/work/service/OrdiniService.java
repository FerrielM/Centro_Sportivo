package it.project.work.service;

import java.util.List;

import it.project.work.model.Ordini;

public interface OrdiniService {
	
	public Ordini getOrdiniById(int id);
	
	public List<Ordini> getOrdini();
	
	public void createOrdini(Ordini ordine);
	
	public void deleteOrdine(Ordini ordine);
	
	public void updateOrdine(Ordini ordine);
	
	
	

}
