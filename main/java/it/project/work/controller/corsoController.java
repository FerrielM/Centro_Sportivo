package it.project.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//http://localhost:8080/centroSportivo/corso

@Controller
@RequestMapping(path = {"/corso"})

public class corsoController {
	
	@GetMapping
	public String getPage() {
		return "corso";
	}

}
