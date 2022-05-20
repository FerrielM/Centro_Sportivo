package it.project.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.work.dao.OrdiniDao;
import it.project.work.model.Ordini;

@Service
public class OrdiniServiceImpl implements OrdiniService {
	
	@Autowired
	private OrdiniDao ordineDao;
	

	@Override
	public Ordini getOrdiniById(int id) {
		
		return ordineDao.getOrdiniById(id);
	}

	@Override
	public List<Ordini> getOrdini() {
		
		return ordineDao.getOrdini();
	}

	@Override
	public void createOrdini(Ordini ordine) {
		
		ordineDao.createOrdini(ordine);

	}

	@Override
	public void deleteOrdine(Ordini ordine) {
		
		ordineDao.deleteOrdine(ordine);

	}

	@Override
	public void updateOrdine(Ordini ordine) {
		
		ordineDao.updateOrdine(ordine);

	}

}
