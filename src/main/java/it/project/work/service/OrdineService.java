package it.project.work.service;

import java.util.Date;
import java.util.List;

import it.project.work.model.Ordine;

public interface OrdineService {
	
	public Ordine getOrdineById(int id);
	
	public List<Ordine> getOrdini();
	
	public void createOrdini(Ordine ordine);
	
	public void deleteOrdine(Ordine ordine);
	
	public void updateOrdine(Ordine ordine);
	
	public Date formatData(String data);
}