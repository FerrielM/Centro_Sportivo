package it.project.work.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.work.dao.IstruttoreDao;
import it.project.work.model.Istruttore;

@Service
public class IstruttoreServiceImpl implements IstruttoreService {
	@Autowired
private IstruttoreDao istDao;
	
	@Override
	public void addIstruttore(Istruttore istruttore) {
     		istDao.addIstruttore(istruttore);
	}

	@Override
	public Istruttore getIstruttoreById(int id) {
		
		return istDao.getIstruttoreById(id);
	}

	@Override
	public List<Istruttore> getIstruttori() {
		
		return istDao.getIstruttori();
	}

	@Override
	public void deleteIstruttore(Istruttore istruttore) {
		
		istDao.deleteIstruttore(istruttore);
		
	}

	@Override
	public void updateIstruttore(Istruttore istruttore) {
		
		istDao.updateIstruttore(istruttore);
		
	}

	@Override
	public List<Istruttore> checIstruttori(List<Istruttore> istruttori) {
		
		for (int i = 0; i < istruttori.size(); i++) {
			
			if (istruttori.get(i).getCognome() == null) {
				
				istruttori.get(i).setCognome("");
			}
			
			if (istruttori.get(i).getNome() == null) {
				
				istruttori.get(i).setNome("");
				
			}
			
			if (istruttori.get(i).getDescrizione() == null){
				
				istruttori.get(i).setDescrizione("");
			}
			
			if (istruttori.get(i).getNameImg() == null) {
				
				istruttori.get(i).setNameImg("");
			}
			
			
		}
		
		
		return istruttori;
	}


}
