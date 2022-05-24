package it.project.work.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import it.project.work.model.Lezione;

@Repository
public class LezioneDaoImpl implements LezioneDao {
	@PersistenceContext
private EntityManager em;
 	

@Transactional
public void updateLezione(Lezione lezione) {
    em.merge(lezione)	;
}
@Override
@Transactional

public void deleteLezione(Lezione lezione) {
      em.remove(em.merge(lezione));	
}
@Override
public Lezione getLezioneById(int id) {
	return em.find(Lezione.class, id);
}
@SuppressWarnings("unchecked")
@Override
public List<Lezione> getLezioni() {
	return em.createQuery("SELECT l from Lezione l").getResultList();
}
@Transactional
public void addLezione(Lezione lezione) {
      em.persist(lezione);	
}
}
