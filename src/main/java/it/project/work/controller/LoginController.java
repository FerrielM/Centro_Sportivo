package it.project.work.controller;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.project.work.model.User;
import it.project.work.service.UserService;

@Controller
@RequestMapping("login")
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	
	
	@GetMapping
	public String getLoginPage(Model model,HttpSession session) {
		
		model.addAttribute("email", new String());
		model.addAttribute("password", new String());
		
		boolean isLoggato = false;

		if (session.getAttribute("isLoggato") == null) {
			
			isLoggato = false;
			
			session.setAttribute("isLoggato", isLoggato);
			
						
		}else {
			
			isLoggato = (Boolean)session.getAttribute("isLoggato");
			
			if (isLoggato ) {
				
				session.setAttribute("isLoggato", isLoggato);
				
				return "index";
				
			}else {
				
				model.addAttribute("user", new User());

			}
		
		}
		return "login";
	}	

	
	@PostMapping("/convalida")
	public String convalida(
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			HttpSession session) {

		if (userService.convalida(email, password)) {
			
			session.setAttribute("isLoggato", true);
			
			session.setAttribute("user", userService.getUserByCredenziali(email, password));
			
			return "redirect:/index";
			
		}else {
			
			session.setAttribute("isLoggato", false);
			
			return "redirect:/login";
			
		}
		
	}
	
}	
	
