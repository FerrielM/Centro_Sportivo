package it.project.work.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import it.project.work.model.TipologiaAbbonamento;

@Service
public class TipologiaAbbonamentoDaoImpl implements TipologiaAbbonamentoDao{
	@PersistenceContext
	EntityManager em;
	@Override
	public TipologiaAbbonamento getAbbonamentoById(int id) {
	return	em.find(TipologiaAbbonamento.class,id);
 		 
	}
	@Override
	public void cancellaAbbonamento(TipologiaAbbonamento abbonamento) {
		  em.remove(em.merge(abbonamento));
		
	}

	@Override
	public void updateTipologiaAbbonamento(TipologiaAbbonamento abbonamento) {
		em.merge(abbonamento);
		
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<TipologiaAbbonamento> getAbbonamenti() {
		 return em.createQuery("SELECT t FROM TipologiaAbbonamento t").getResultList();
	}
	
	
	
	
}
