package it.project.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.work.dao.CatAttivitaSportiveDao;
import it.project.work.model.CatAttivitaSportive;
@Service
public class CatAttivitaServiceImpl implements CatAttivitaService {
@Autowired
CatAttivitaSportiveDao catDao;
@Override
	public void createAttivita(CatAttivitaSportive attivita) {
     catDao.createAttivita(attivita);		
	}

	@Override
	public void updateAttivita(CatAttivitaSportive attivita) {
     catDao.updateAttivita(attivita);		
	}

	@Override
	public void deleteAttivita(CatAttivitaSportive attivita) {
     		catDao.deleteAttivita(attivita);
	}

	@Override
	public List<CatAttivitaSportive> listAttivita() {
		return catDao.listAttivita();
	}

	@Override
	public CatAttivitaSportive getAttivitaById(int id) {
		return catDao.getAttivitaById(id);
	}

}
