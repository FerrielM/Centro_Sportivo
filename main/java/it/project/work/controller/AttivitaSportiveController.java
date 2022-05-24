package it.project.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import it.project.work.model.CatAttivitaSportive;
import it.project.work.service.CatAttivitaService;

@Controller
@RequestMapping("/attivita")
public class AttivitaSportiveController {
	@Autowired
  private CatAttivitaService attivitaService;
	
	 
	@RequestMapping(method=RequestMethod.GET)
	@ResponseBody
	public String getPage() {
		CatAttivitaSportive  attivita=new CatAttivitaSportive();
		attivita.setDescrizione("Esempio");
		attivitaService.createAttivita(attivita);
	
		return null;
	}
}
