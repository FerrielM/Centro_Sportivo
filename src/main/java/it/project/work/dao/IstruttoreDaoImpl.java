package it.project.work.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import it.project.work.model.Istruttore;

@Repository
public class IstruttoreDaoImpl implements IstruttoreDao {
	@PersistenceContext
private EntityManager em;

	@Override
	@Transactional
	public void addIstruttore(Istruttore istruttore) {
        em.persist(istruttore);		
	}

	@Override
	public Istruttore getIstruttoreById(int id) {
		return em.find(Istruttore.class,id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Istruttore> getIstruttori() {
		return em.createQuery("SELECT i from Istruttore i").getResultList();
	}
	@Override
	@Transactional

	public void deleteIstruttore(Istruttore istruttore) {
    		em.remove(em.merge(istruttore));
	}

	@Override
	@Transactional

	public void updateIstruttore(Istruttore istruttore) {
       em.merge(istruttore);		
	}
}
