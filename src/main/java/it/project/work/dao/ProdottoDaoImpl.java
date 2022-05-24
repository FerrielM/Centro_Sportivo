package it.project.work.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import it.project.work.model.Prodotto;

@Repository
public class ProdottoDaoImpl implements ProdottoDao {
	
	@PersistenceContext
	private EntityManager m;

	@Override
	@Transactional
	public void addProdotto(Prodotto prodotto) {
		
		m.persist(prodotto);			
	}

	@Override
	@Transactional
	public void updateProdotto(Prodotto prodotto) {
		
		m.merge(prodotto);
		
	}

	@Override
	@Transactional
	public void deleteProdotto(Prodotto prodotto) {
		
		m.remove(m.merge(prodotto));
		
	}

	@Override
	public Prodotto getProdottoById(int id) {
		
		return m.find(Prodotto.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Prodotto> getProdotti() {
		
		return m.createQuery("SELECT p FROM Prodotto p").getResultList();
	}


}
