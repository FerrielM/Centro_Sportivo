package it.project.work.controller;

 
 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import it.project.work.model.Anagrafica;
import it.project.work.model.User;
import it.project.work.service.TipologiaAbbonamentoServiceImpl;
import it.project.work.service.UserService;
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
private UserService userService;
@Autowired
private TipologiaAbbonamentoServiceImpl taService;
	
	@GetMapping
	@ResponseBody
	public String getPage() {
		System.out.println(userService.getUser(1).getUsername()+"  "+userService.getUser(1).getAnagrafica().getCognome());
		
		return null;
 	}
	
	@GetMapping("/add")
	@ResponseBody
	public String aggiungiUser() {
     User user =new User();
     Anagrafica ana= new Anagrafica();
     user.setAbbonamento(taService.getAbbonamentoById(1));
     user.setPassword("MINOLO");	
     user.setUsername("PIPOLO");
     ana.setNome("Ernesto");
     ana.setCognome("Bergamo");
     ana.setCap("80120");
     ana.setEmail("ernesto_bergamo@hotmail.it");
     user.setAnagrafica(ana);
     userService.addUser(user);
     System.out.println(user.getAbbonamento().getDescrizione());
     return null;
	}
	//
 	 
	
	
	
	
	
}
