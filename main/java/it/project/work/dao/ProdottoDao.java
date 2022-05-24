package it.project.work.dao;

import java.util.List;

import it.project.work.model.Prodotto;

public interface ProdottoDao {
 public void addProdotto(Prodotto prodotto);
 public void updateProdotto(Prodotto prodotto);
 public void deleteProdotto(Prodotto prodotto);
 public Prodotto getProdottoById(int id);
 public List<Prodotto> getProdotti();
}
