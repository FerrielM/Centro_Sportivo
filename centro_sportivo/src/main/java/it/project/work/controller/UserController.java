package it.project.work.controller;

 
import java.util.List;

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
	
	@GetMapping("/vedi")
	@ResponseBody
	public String vedi() {
return	userService.getUsers().stream().peek(x->System.out.println(x.getAnagrafica().getNome())).filter(x->x.getAnagrafica().getNome().equals("Ernesto")).

findAny().get().getAnagrafica().getEmail();
 	}
@ResponseBody
@GetMapping("/delete")

	public String deleteAbbonamento() {
	List<User>lista = userService.getUsers();
    lista.stream().map(x->x.getAbbonamento()).filter(x->x!=null).forEach(x->x.getDescrizione());
	return null;
	}
	
	
	
	
	
}
