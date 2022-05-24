package it.project.work.dao;

import java.util.List;

import it.project.work.model.Lezione;

public interface LezioneDao {
public void addLezione(Lezione lezione);
public void updateLezione(Lezione lezione);
public void deleteLezione(Lezione lezione);
public Lezione getLezioneById(int id);
public List<Lezione>getLezioni();
 }
