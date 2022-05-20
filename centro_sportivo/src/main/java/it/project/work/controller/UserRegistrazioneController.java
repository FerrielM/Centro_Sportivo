package it.project.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import it.project.work.service.UserService;

@Controller
@RequestMapping("/registra")
public class UserRegistrazioneController {
	@Autowired
	UserService userService;
	

}
