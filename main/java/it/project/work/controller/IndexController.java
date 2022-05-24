package it.project.work.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.project.work.model.Prodotto;
import it.project.work.service.IstruttoreService;
import it.project.work.service.ProdottoService;

@Controller
@RequestMapping
(path={"/","/home","/index"})
public class IndexController {
private boolean isLoggato;
   @Autowired
 	private ProdottoService prodottoService ;
   
   @Autowired
   private IstruttoreService   istruttoreService;
 	@GetMapping
	public String getHompePage(HttpSession session, Model model) {	
		
	if(  session.getAttribute("isLoggato")==null) {
     isLoggato= false;
     session.setAttribute("isLoggato", isLoggato);
	}
	else {
	isLoggato=(Boolean) session.getAttribute("isLoggato");
	session.setAttribute("isLoggato",isLoggato);
	}
		session.setAttribute("corsi", prodottoService.getCorsi());
		session.setAttribute("istruttori", istruttoreService.getIstruttori());
		
		List<Integer> numeri = new ArrayList<>();
		
		for (int i = 0; i < prodottoService.getCorsi().size() -1; i++) {
			numeri.add(i);
		}
		
		model.addAttribute("numeri", numeri);
		
		List<Prodotto>corsi = prodottoService.getCorsi();

		Prodotto prodotto = prodottoService.checkProdotto(prodottoService.getCorsi().get(0));
		 System.out.println(corsi.remove(0));
		 
		for(int i = 0; i < corsi.size(); i++) {
			corsi.set(i, prodottoService.checkProdotto(corsi.get(i))); 
		}
		
		model.addAttribute("corsi", corsi);
		 model.addAttribute("prodotto", prodotto); 
		
	return "index";
	}
	  
	
 	
	
}
