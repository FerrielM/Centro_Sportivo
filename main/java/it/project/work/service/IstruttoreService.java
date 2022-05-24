package it.project.work.service;

import java.util.List;

import it.project.work.model.Istruttore;

public interface IstruttoreService {
	
	 public void addIstruttore(Istruttore istruttore);
	 public Istruttore getIstruttoreById(int id);
	 public List<Istruttore> getIstruttori();
	 public void deleteIstruttore(Istruttore istruttore);
	 public void updateIstruttore(Istruttore istruttore);

	 public List<Istruttore> checkIstruttori(List<Istruttore> istruttori);
}
