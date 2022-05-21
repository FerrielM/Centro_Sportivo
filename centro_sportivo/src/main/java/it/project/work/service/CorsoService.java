package it.project.work.service;

import java.util.List;
import it.project.work.model.Corso;


public interface CorsoService {
	
	public Corso getCorsoById(int id);
	
	public List<Corso> getCorso();
	
	public void createCorso(Corso corso);
	
	public void deleteCorso(Corso corso);
	
	public void updateCorso(Corso corso);

}
