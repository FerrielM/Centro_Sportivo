package it.project.work.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import it.project.work.model.Ordine;

@Repository
public class OrdineDaoImpl implements OrdiniDao {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Ordine getOrdiniById(int id) {
		
		return em.find(Ordine.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Ordine> getOrdini() {
		
		return em.createQuery("SELECT o FROM Ordini o ").getResultList();
	}

	@Override
	@Transactional
	public void createOrdini(Ordine ordine) {
		
		em.persist(ordine);

	}

	@Override
	@Transactional
	public void deleteOrdine(Ordine ordine) {
		
		em.merge(em.merge(ordine));

	}

	@Override
	@Transactional
	public void updateOrdine(Ordine ordine) {
		
		em.merge(ordine);

	}

}
