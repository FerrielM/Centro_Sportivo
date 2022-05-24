package it.project.work.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.work.dao.CatAttivitaSportiveDao;
import it.project.work.model.CatAttivitaSportive;

@Service
public class CatAttivitaSportiveServiceImpl implements CatAttivitaSportiveService {
	
	@Autowired
	private CatAttivitaSportiveDao cat;

	@Override
	@Transactional
	public void createAttivita(CatAttivitaSportive attivita) {
		
		cat.createAttivita(attivita);

	}

	@Override
	@Transactional
	public void updateAttivita(CatAttivitaSportive attivita) {
		
		cat.updateAttivita(attivita);

	}

	@Override
	@Transactional
	public void deleteAttivita(CatAttivitaSportive attivita) {
		
		cat.deleteAttivita(attivita);

	}

	@Override
	public List<CatAttivitaSportive> listAttivita() {
		
		return cat.listAttivita();
	}

	@Override
	public CatAttivitaSportive getAttivitaById(int id) {
		
		return getAttivitaById(id);
	}

}
