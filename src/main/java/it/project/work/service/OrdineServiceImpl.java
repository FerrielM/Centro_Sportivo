package it.project.work.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

	@Override
	public Date formatData(String data) {
		
		Date dataOrdine = null;
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		try {
			
			dataOrdine = format.parse(data);
		} catch (ParseException e) {
			
			e.printStackTrace();
			return null;
		}
		
		return dataOrdine;
	}

	@Override
	public Ordine veridicaOrdine(String... valori) {
		
		return getOrdini()
				.stream().
				filter(x -> x.getNome_cliente().equalsIgnoreCase(valori[0]) && 
						x.getCognome_cliente().equalsIgnoreCase(valori[1]) && 
						x.getEmail().equalsIgnoreCase(valori[2])).findAny().get();
	}

}
