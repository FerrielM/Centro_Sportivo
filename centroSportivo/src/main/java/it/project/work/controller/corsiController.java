package it.project.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//http://localhost:8080/centroSportivo/corsi

@Controller
@RequestMapping(path = {"/corsi"})

public class corsiController {
	
	@GetMapping
	public String getPage() {
		return "corsi";
	}

}
