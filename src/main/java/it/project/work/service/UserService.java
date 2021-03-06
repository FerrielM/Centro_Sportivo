package it.project.work.service;

import java.util.List;

import it.project.work.model.User;

public interface UserService {
  public User getUser(int id);
  public List<User>getUsers();
  public void addUser(User user);
  public void deleteUser(User id);
  public void updateUser(User user);
  
  public boolean convalida(String email, String password);
  
  public User getUserByCredenziali(String email, String password);
  
  
}
