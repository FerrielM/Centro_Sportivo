package it.project.work.service;
import java.util.List;

import it.project.work.model.Prodotto;

public interface ProdottoService {
	
	public void addProdotto(Prodotto prodotto);
	
	public void updateProdotto(Prodotto prodotto);
	
	public void deleteProdotto(Prodotto prodotto);
	
	public Prodotto getProdottoById(int id);
	
	public List<Prodotto> getProdotti();
	
	public List<Prodotto> getCorsi();
	
	public List<Prodotto> getAbbonamento();	
	
	public Prodotto checkProdotto(Prodotto prodotto);

}
