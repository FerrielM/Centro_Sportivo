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
	private EntityManager em;
	@Override
	@Transactional
	public void addProdotto(Prodotto prodotto) {
      em.persist(prodotto);
	}

	@Override
	@Transactional

	public void updateProdotto(Prodotto prodotto) {
     em.merge(prodotto);		
	}

	@Override
	@Transactional

	public void deleteProdotto(Prodotto prodotto) {
    		em.remove(em.merge(prodotto));
	}

	@Override
	public Prodotto getProdottoById(int id) {
		return  em.find(Prodotto.class,id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Prodotto> getProdotti() {
	 return em.createQuery("SELECT p FROM Prodotto p").getResultList();
	}

}
