package it.project.work.dao;

import java.util.List;

import it.project.work.model.TipologiaAbbonamento;

public interface TipologiaAbbonamentoDao    {
	
    TipologiaAbbonamento getAbbonamentoById(int id);
  void cancellaAbbonamento(TipologiaAbbonamento abbonamento);
  void  updateTipologiaAbbonamento(TipologiaAbbonamento abbonamento);
  List<TipologiaAbbonamento> getAbbonamenti();
   
 }

