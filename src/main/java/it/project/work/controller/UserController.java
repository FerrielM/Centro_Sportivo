package it.project.work.controller;

import java.util.Date;
import java.util.ServiceConfigurationError;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.common.util.concurrent.Service;

import it.project.work.model.User;
import it.project.work.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService service;
	
	
	@SuppressWarnings("deprecation")
	@GetMapping
	@ResponseBody
	public String getPage() {
		User user = new User();
		user.setNome("marco");
		user.setCognome("masiello");
		Date d = new Date();
		d.setYear(1992);
		d.setMonth(02);
		d.setDate(25);
		user.setAnnoDiNascita(d);
		service.addUser(user);
		return null;
	}
	
	
}
