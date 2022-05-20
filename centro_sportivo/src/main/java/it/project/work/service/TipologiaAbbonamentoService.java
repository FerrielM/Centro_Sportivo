package it.project.work.service;

import java.util.List;

import it.project.work.model.TipologiaAbbonamento;


public interface TipologiaAbbonamentoService  {
	 TipologiaAbbonamento getAbbonamentoById(int id);
	  void cancellaAbbonamento(TipologiaAbbonamento abbonamento);
	  void  updateTipologiaAbbonamento(TipologiaAbbonamento abbonamento);
	  List<TipologiaAbbonamento> getAbbonamenti();
	  
}
 