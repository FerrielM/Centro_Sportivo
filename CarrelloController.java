package it.project.work.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.project.work.model.Prodotto;
import it.project.work.service.ProdottoService;

@Controller
@RequestMapping("/cart")

class CarrelloController {
	@Autowired
private ProdottoService prodService;
	 
	
	
	@GetMapping 
	@SuppressWarnings("unchecked")
	 public String getPage(HttpSession session, @RequestParam(name="id", required=false)String id) { 
		List<Prodotto> articles = new ArrayList<>();
		
		if(id!=null) {
			Prodotto  p = prodService.getProdottoById(Integer.valueOf(id));
			
			if(session.getAttribute("articles")!=null) 
				articles =(List<Prodotto>) session.getAttribute("articles");
 			 
				articles.add(p);
				session.setAttribute("articles", articles);
			
     	}else {
     		if(session.getAttribute("articles")==null)
     			session.setAttribute("articles", articles);
     		else {
     			articles=(List<Prodotto>)session.getAttribute("articles");
     			session.setAttribute("articles", articles);
     		}
     		return "cart";
     	}
		return "redirect:/corsi";
	}
}
