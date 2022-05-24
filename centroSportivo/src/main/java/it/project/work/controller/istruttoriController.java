package it.project.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//http://localhost:8080/centroSportivo/abbonamenti

@Controller
@RequestMapping(path = {"/istruttori"})

public class istruttoriController {
	
	@GetMapping
	public String getPage() {
		return "istruttori";
	}

}
