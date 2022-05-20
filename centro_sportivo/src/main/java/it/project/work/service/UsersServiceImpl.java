package it.project.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.work.dao.UserDao;
import it.project.work.model.User;
@Service
public class UsersServiceImpl implements UserService{
	@Autowired
UserDao userDao;
	@Override
	public User getUser(int id) {
		return userDao.getUser(id);
	}

	@Override
	public List<User> getUsers() {
		return userDao.getUsers();
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public void deleteUser(User user) {
     userDao.deleteUser(user);		
	}

	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
		
	}

}
