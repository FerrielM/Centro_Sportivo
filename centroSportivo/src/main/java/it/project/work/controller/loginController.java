package it.project.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//http://localhost:8080/centroSportivo
//http://localhost:8080/centroSportivo/index
//http://localhost:8080/centroSportivo/home

@Controller
@RequestMapping(path = {"/login"})

public class loginController {
	
	@GetMapping
	public String getPage() {
		return "login";
	}

}
