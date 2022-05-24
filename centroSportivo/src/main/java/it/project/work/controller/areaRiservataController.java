package it.project.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


//http://localhost:8080/centroSportivo/ar

@Controller
@RequestMapping(path = {"/ar"})
public class areaRiservataController {
	@GetMapping
	public String getPage() {
		return "area-riservata";
	}
}
