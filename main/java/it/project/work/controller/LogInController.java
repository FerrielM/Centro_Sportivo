package it.project.work.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.project.work.service.UserService;

@Controller
@RequestMapping("/login")
public class LogInController {
	@Autowired
	private UserService userService;
  
	@GetMapping
public String getLoginPage(Model model, HttpSession session  ) {
 		  model.addAttribute("email",new String());
		  model.addAttribute("password",new String());
		  
	if(session.getAttribute("isLoggato")==null)
		session.setAttribute("isLoggato",false);
	
	else{
		  boolean isLoggato = (Boolean)session.getAttribute("isLoggato");
	      if(isLoggato) {
	    	  session.setAttribute("isLoggato", true);
	    	  return "index";
	      } 
	      else 
	    	  session.setAttribute("isLoggato", false);
	      
	}
	  return "login";
	     
	}

	@PostMapping("/convalida")
	public String convalida(HttpSession session, @RequestParam("email")String email, @RequestParam("password")String password ) {
 		System.out.println(email+"  "+password);
		 userService.getUsers().stream().forEach(x->System.out.println( x.getUsername()+" "+x.getPassword()));
		if (userService.convalida( email, password)) {
			session.setAttribute("isLoggato", true);
			return "redirect:/index";
		} else {
			session.setAttribute("isLoggato", false);
			return "redirect:/login";
		}

	}

}
