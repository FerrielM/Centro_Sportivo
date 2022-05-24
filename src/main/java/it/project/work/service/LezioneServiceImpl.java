package it.project.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.work.dao.LezioneDao;
import it.project.work.model.Lezione;

@Service
public class LezioneServiceImpl implements LezioneService{
	@Autowired
LezioneDao lezDao;

	@Override
	public void addLezione(Lezione lezione) {
    lezDao.addLezione(lezione);		
	}

	@Override
	public void updateLezione(Lezione lezione) {
     lezDao.updateLezione(lezione);		
	}

	@Override
	public void deleteLezione(Lezione lezione) {
    lezDao.deleteLezione(lezione);		
	}

	@Override
	public Lezione getLezioneById(int id) {
		 return lezDao.getLezioneById(id);
	}

	@Override
	public List<Lezione> getLezioni() {
		return lezDao.getLezioni();
	}
	 
 	
}

