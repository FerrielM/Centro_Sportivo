package it.project.work.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import it.project.work.model.Anagrafica;
import it.project.work.model.Corso;
import it.project.work.model.TipologiaAbbonamento;
import it.project.work.model.User;
import it.project.work.service.TipologiaAbbonamentoService;
import it.project.work.service.UserService;

@Controller
@RequestMapping("/abbonamenti")
public class AbbonamentoController {
	@Autowired
	TipologiaAbbonamentoService tpService;
	@Autowired
	UserService userService;
	@GetMapping
	@ResponseBody
	public String getAbbonamenti() {
		  tpService.getAbbonamenti().stream().map(TipologiaAbbonamento::getDescrizione).collect(Collectors.joining(" "));
	System.out.println( );
	return null;
 	}
	@ResponseBody
	@GetMapping("/creauser")
	public String creaUser() {
		User user = new User();
		user.setPassword("mimimim");
		user.setUsername("marco_m");
		Anagrafica ana= new Anagrafica();
		ana.setNome("MARCO");
		ana.setCognome("MASIELLO");
		user.setAnagrafica(ana);
		TipologiaAbbonamento ta = new TipologiaAbbonamento();
		ta.setDescrizione("GOLD");
		ta.setPrezzo(600);
		user.setAbbonamento(ta);
		Corso c = new Corso();
		c.setDescrizione("ngopp e chiang tre juorn");
		c.setNome("equitazione");
		user.setCorso(List.of(c));
	   userService.addUser(user);
       
	    
		 return null;
		
	}
} 
