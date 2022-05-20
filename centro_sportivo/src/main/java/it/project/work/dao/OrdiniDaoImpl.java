package it.project.work.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

import it.project.work.model.Ordini;

@Repository
public class OrdiniDaoImpl implements OrdiniDao {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Ordini getOrdiniById(int id) {
		
		return em.find(Ordini.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Ordini> getOrdini() {
		
		return em.createQuery("SELECT o FROM Ordini o ").getResultList();
	}

	@Override
	@Transactional
	public void createOrdini(Ordini ordine) {
		
		em.persist(ordine);

	}

	@Override
	@Transactional
	public void deleteOrdine(Ordini ordine) {
		
		em.merge(em.merge(ordine));

	}

	@Override
	@Transactional
	public void updateOrdine(Ordini ordine) {
		
		em.merge(ordine);

	}

}
