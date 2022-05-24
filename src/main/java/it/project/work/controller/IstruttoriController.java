package it.project.work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.project.work.model.Istruttore;
import it.project.work.service.IstruttoreService;

// http://localhost:8080/centro_sportivo/istruttori
@Controller
@RequestMapping("/istruttori")
public class IstruttoriController {
	
	@Autowired
	private IstruttoreService istService;
	
	@GetMapping
	public String getPage(Model model) {
		
		List<Istruttore> istruttori;
		
		istruttori = istService.checIstruttori(istService.getIstruttori());
		
		model.addAttribute("istruttori", istruttori);
		
		return "istruttori";
		
		
		
			
		
		
		
		
		
		
	}
	

}
