package it.project.work.controller;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.project.work.model.Ordine;
import it.project.work.model.Prodotto;
import it.project.work.model.User;
import it.project.work.service.OrdineService;
import it.project.work.service.UserService;


@Controller
@RequestMapping("/areariservata")
public class AreaRiservataController {
	
	@Autowired
	private UserService service;
	
	@Autowired
	private OrdineService orderSerivce;
	
	
	
	
	@GetMapping
		public String getPage(HttpSession session,Model model) {
			
		try {
			
			
	 		 User u =(User)session.getAttribute("user");
	 		 
	 		 Ordine o = orderSerivce.veridicaOrdine
	 				 (
	 				 u.getNome(), 
	 				 u.getCognome(), 
	 				 u.getEmail());
	 		 
	 		 if (o != null) {
	 			 
	 			 List<Prodotto> prodotti = o.getProdotti();
	 			 
	 			 session.setAttribute("prodotti", prodotti);
	 			 
	 		 }else {
	 
			}

		}catch (Exception e) {
			
			e.printStackTrace();
		
			return "redirect:/index";
	 		
		} 
	 		 return "area-riservata";
	 		 
		}
	
	
}
