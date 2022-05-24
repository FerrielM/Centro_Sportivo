package it.project.work.dao;

import java.util.List;

import it.project.work.model.User;

public interface UserDao  {
	  public User getUser(int id);
	  public List<User>getUsers();
	  public void addUser(User user);
	  public void deleteUser(User id);
	  public void updateUser(User user);
	  
}
