package it.project.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.work.dao.OrdiniDao;
import it.project.work.model.Ordine;

@Service
public class OrdineServiceImpl  implements OrdineService{
	
	@Autowired
	private OrdiniDao ordineDao;
	

	@Override
	public Ordine getOrdineById(int id) {
		
		return ordineDao.getOrdiniById(id);
	}

	@Override
	public List<Ordine> getOrdini() {
		
		return ordineDao.getOrdini();
	}

	@Override
	public void createOrdini(Ordine ordine) {
		
		ordineDao.createOrdini(ordine);

	}

	@Override
	public void deleteOrdine(Ordine ordine) {
		
		ordineDao.deleteOrdine(ordine);

	}

	@Override
	public void updateOrdine(Ordine ordine) {
		
		ordineDao.updateOrdine(ordine);

	}

 	

}
