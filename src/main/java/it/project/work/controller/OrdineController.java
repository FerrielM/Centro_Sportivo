package it.project.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import it.project.work.model.Ordine;
import it.project.work.model.User;
import it.project.work.service.OrdineService;

@Controller
@RequestMapping("/ordini")
public class OrdineController {
	
	@Autowired
	private OrdineService ordineService;
	
	
	@GetMapping
	@ResponseBody
	public String creaOrdine() {
		
		Ordine ordini = new Ordine();
		
		ordini.setData_acquisto(ordineService.formatData("2022-05-12"));
		
		ordini.setTotaleOrdine(30.00);
		
		ordineService.createOrdini(ordini);
		
		return null;
		
		
		
		
		
		
	}

}
