package it.project.work.service;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import it.project.work.dao.TipologiaAbbonamentoDao;
import it.project.work.model.TipologiaAbbonamento;
import it.project.work.model.User;

@Repository
public class TipologiaAbbonamentoServiceImpl implements TipologiaAbbonamentoService {
	@Autowired
  TipologiaAbbonamentoDao abbonamentoDao;
  
	@Override
	public TipologiaAbbonamento getAbbonamentoById(int id) {
		 return abbonamentoDao.getAbbonamentoById(id);
		
	}

	@Override
	public void cancellaAbbonamento(TipologiaAbbonamento abbonamento) {
		 abbonamentoDao.cancellaAbbonamento(abbonamento);
		
	}

	@Override
	public void updateTipologiaAbbonamento(TipologiaAbbonamento abbonamento) {
    abbonamentoDao.updateTipologiaAbbonamento(abbonamento);		
	}

	@Override
	public List<TipologiaAbbonamento> getAbbonamenti() {
	return 	abbonamentoDao.getAbbonamenti();
	}
	 

	public TipologiaAbbonamentoDao getAbbonamentoDao() {
		return abbonamentoDao;
	}

	public void setAbbonamentoDao(TipologiaAbbonamentoDao abbonamentoDao) {
		this.abbonamentoDao = abbonamentoDao;
	}

	 
	
	

}
