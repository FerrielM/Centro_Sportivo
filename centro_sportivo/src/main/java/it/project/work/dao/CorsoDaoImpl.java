package it.project.work.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import it.project.work.model.Corso;

@Repository
public class CorsoDaoImpl implements CorsoDao {
	
	@PersistenceContext
	private EntityManager em ;

	@Override
	public Corso getCorsoById(int id) {
		
		return em.find(Corso.class, "id");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Corso> getCorso() {
		
		return em.createQuery("SELECT c FROM Corso c").getResultList();
	}

	@Override
	public void createCorso(Corso corso) {
		
		em.persist(corso);

	}

	@Override
	public void deleteCorso(Corso corso) {
		
		em.remove(em.merge(corso));

	}

	@Override
	public void updateCorso(Corso corso) {
	
		em.merge(corso);

	}

}
