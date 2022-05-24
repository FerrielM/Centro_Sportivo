package it.project.work.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

import it.project.work.model.CatAttivitaSportive;

@Repository
public class CatAttivitaSportiveDaoImpl implements CatAttivitaSportiveDao {
	@PersistenceContext
  private EntityManager em ;
@Transactional
	@Override
	public void createAttivita(CatAttivitaSportive attivita) {
 		em.persist(attivita);
	}

	@Override
	@Transactional

	public void updateAttivita(CatAttivitaSportive attivita) {
      em.merge(attivita);		
	}

	@Override
	@Transactional

	public void deleteAttivita(CatAttivitaSportive attivita) {
     em.remove(em.merge(attivita));		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CatAttivitaSportive> listAttivita() {
   return   em.createQuery("SELECT c FROM CatAttivitaSportve c").getResultList();
	}

	@Override
	public CatAttivitaSportive getAttivitaById(int id) {
		return em.find(CatAttivitaSportive.class,id);
	}
}
