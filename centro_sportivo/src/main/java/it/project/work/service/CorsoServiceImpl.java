package it.project.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.work.dao.CorsoDao;
import it.project.work.model.Corso;

@Service
public class CorsoServiceImpl implements CorsoService {
	
	@Autowired
	private CorsoDao corsoDao;

	@Override
	public Corso getCorsoById(int id) {
		
		return corsoDao.getCorsoById(id);
	}

	@Override
	public List<Corso> getCorso() {
		
		return corsoDao.getCorso();
	}

	@Override
	public void createCorso(Corso corso) {
		
		corsoDao.createCorso(corso);
		
	}

	@Override
	public void deleteCorso(Corso corso) {
		

	}

	@Override
	public void updateCorso(Corso corso) {
		
		corsoDao.updateCorso(corso);

	}

}
