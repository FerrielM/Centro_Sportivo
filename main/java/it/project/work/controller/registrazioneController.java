package it.project.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//http://localhost:8080/centroSportivo/registrazione

@Controller
@RequestMapping(path = {"/registrazione"})
public class registrazioneController {
	
	@GetMapping
	public String getPage() {
		return "registrazione";
	}

}
