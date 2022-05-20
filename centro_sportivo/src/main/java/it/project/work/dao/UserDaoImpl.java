package it.project.work.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import it.project.work.model.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	@PersistenceContext
EntityManager em;

	@Override
	public User getUser(int id) {
	return em.find(User.class, id);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<User> getUsers() {
		return em.createQuery("SELECT u From User u").getResultList();
	}

	@Override
	@Transactional
	public void addUser(User user) {
		em.persist(user);
		
	}

	@Override
	@Transactional
	public void deleteUser(User user) {
		em.remove(em.merge(user));
		
	}

	@Override
	@Transactional
	public void updateUser(User user) {
		 em.remove(em.merge(user));
	}
	
 	
	

}
